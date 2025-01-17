-- Sample Basic Class Module
local mq            = require('mq')
local RGMercsLogger = require("rgmercs.utils.rgmercs_logger")
local RGMercUtils   = require("rgmercs.utils.rgmercs_utils")
local ICONS         = require('mq.Icons')

local Module        = { _version = '0.1a', name = "Chase", author = 'Derple' }
Module.__index      = Module

local function getConfigFileName()
    local server = mq.TLO.EverQuest.Server()
    server = server:gsub(" ", "")
    return mq.configDir ..
        '/rgmercs/PCConfigs/' .. Module.name .. "_" .. server .. "_" .. RGMercConfig.CurLoadedChar .. '.lua'
end

function Module:SaveSettings(doBroadcast)
    mq.pickle(getConfigFileName(), self.settings)

    if doBroadcast then
        RGMercUtils.BroadcastUpdate(self.name, "SaveSettings")
    end
end

function Module:LoadSettings()
    RGMercsLogger.log_info("Chase Module Loading Settings for: %s.", RGMercConfig.CurLoadedChar)
    local settings_pickle_path = getConfigFileName()

    local config, err = loadfile(settings_pickle_path)
    if err or not config then
        RGMercsLogger.log_error("\ay[Basic]: Unable to load global settings file(%s), creating a new one!",
            settings_pickle_path)
        self.settings = {}
        self.settings.ChaseOn = false
        self.settings.ChaseDistance = 25
        self.settings.ChaseTarget = nil
        self.settings.RequireLoS = RGMercConfig.RGCasters:contains(mq.TLO.Me.Class.ShortName())

        self:SaveSettings(true)
    else
        self.settings = config()
    end
end

function Module.New()
    RGMercsLogger.log_info("Chase Module Loaded.")
    local newModule = setmetatable({ settings = {} }, Module)

    newModule:LoadSettings()

    return newModule
end

function Module:Render()
    ImGui.Text("Chase Module")
    ImGui.Text(string.format("Chase Distance: %d", self.settings.ChaseDistance))
    ImGui.Text(string.format("Chase LOS Required: %s", self.settings.LineOfSight and "On" or "Off"))

    local pressed
    local chaseSpawn = mq.TLO.Spawn("pc =" .. (self.settings.ChaseTarget or "NoOne"))

    if chaseSpawn and chaseSpawn.ID() > 0 then
        ImGui.Text(string.format("Chase Target: %s", self.settings.ChaseTarget))
        ImGui.Indent()
        ImGui.Text(string.format("Distance: %d", chaseSpawn.Distance()))
        ImGui.Text(string.format("ID: %d", chaseSpawn.ID()))
        ImGui.Text(string.format("LOS: "))
        if chaseSpawn.LineOfSight() then
            ImGui.PushStyleColor(ImGuiCol.Text, 0.3, 1.0, 0.3, 0.8)
        else
            ImGui.PushStyleColor(ImGuiCol.Text, 1.0, 0.3, 0.3, 0.8)
        end
        ImGui.SameLine()
        ImGui.Text(string.format("%s", chaseSpawn.LineOfSight() and ICONS.FA_EYE or ICONS.FA_EYE_SLASH))
        ImGui.PopStyleColor(1)
        ImGui.Unindent()
    else
        ImGui.Indent()
        ImGui.PushStyleColor(ImGuiCol.Text, 1.0, 0.3, 0.3, 0.8)
        ImGui.Text(string.format("Chase Target Invalid!"))
        ImGui.PopStyleColor(1)
        ImGui.Unindent()
    end

    local state, pressed = RGMercUtils.RenderOptionToggle("##chase_om", "Chase On", self.settings.ChaseOn)
    if pressed then
        mq.cmdf("/rgl chase%s", state and "on" or "off")
    end
end

function Module:GiveTime()
    if mq.TLO.Me.Dead() and self.settings.ChaseOn then
        RGMercsLogger.log_warning("\awNOTICE:\ax You're dead. I'm not chasing \am%s\ax anymore.",
            self.settings.ChaseTarget)
        self.settings.ChaseOn = false
        self:SaveSettings()
        return
    end

    if self.settings.ChaseOn and not self.settings.ChaseTarget then
        self.settings.ChaseOn = false
        RGMercsLogger.log_warning("\awNOTICE:\ax \ayChase Target is invalid. Turning Chase Off!")
    end

    if self.settings.ChaseOn and self.settings.ChaseTarget then
        local chaseSpawn = mq.TLO.Spawn("pc =" .. self.settings.ChaseTarget)

        if not chaseSpawn or chaseSpawn.Dead() or not chaseSpawn.ID() then
            RGMercsLogger.log_warning("\awNOTICE:\ax Chase Target \am%s\ax is dead or not found in zone - Pausing...",
                self.settings.ChaseTarget)
            --self.settings.ChaseOn = false
            --self:SaveSettings()
            return
        end

        if mq.TLO.Me.Dead() then return end
        if chaseSpawn.Distance() < self.settings.ChaseDistance then return end

        local Nav = mq.TLO.Nav

        -- Use MQ2Nav with moveto as a failover if we have a mesh. We'll use a nav
        -- command if the mesh is loaded and we have a path. If we don't have a path
        -- we'll use a moveto. This will hopefully get us over spots of the mesh that
        -- are missing with minimal issues.
        if Nav.MeshLoaded() then
            if not Nav.Active() then
                if Nav.PathExists("id " .. chaseSpawn.ID()) then
                    mq.cmdf("/squelch /nav id %d | log=critical distance %d lineofsight=%s", chaseSpawn.ID(),
                        self.settings.ChaseDistance, self.settings.RequireLoS and "on" or "off")
                else
                    -- Assuming no line of site problems.
                    -- Moveto underwater style until 20 units away
                    mq.cmdf("/squelch /moveto id %d uw mdist %d", chaseSpawn.ID(), self.settings.ChaseDistance)
                end
            end
        elseif chaseSpawn.Distance() > self.settings.ChaseDistance and chaseSpawn.Distnance() < 400 then
            -- If we don't have a mesh we're using afollow as legacy RG behavior.
            mq.cmdf("/squelch /afollow spawn %d", chaseSpawn.ID())
            mq.cmdf("/squelch /afollow %d", self.settings.ChaseDistance)

            mq.delay("2s")

            if chaseSpawn.Distance() < self.settings.ChaseDistance then
                mq.cmdf("/squelch /afollow off")
            end
        end
    end
end

function Module:Shutdown()
    RGMercsLogger.log_info("Chase Module UnLoaded.")
end

function Module:ChaseOn(target)
    local chaseTarget = mq.TLO.Target

    if target then
        chaseTarget = mq.TLO.Spawn("pc =" .. target)
    end

    if chaseTarget.ID() > 0 and chaseTarget.Type() == "PC" then
        self.settings.ChaseOn = true
        self.settings.ChaseTarget = chaseTarget.CleanName()
        self:SaveSettings()
    else
        RGMercsLogger.log_warning("\ayWarning:\ax Not a valid chase target!")
    end
end

function Module:ChaseOff()
    self.settings.ChaseOn = false
    self.settings.ChaseTarget = nil
    self:SaveSettings()
    RGMercsLogger.log_warning("\ayNo longer chasing \at%s\ay.", self.settings.ChaseTarget or "None")
end

return Module
