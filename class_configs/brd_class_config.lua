local mq             = require('mq')
local RGMercUtils    = require("rgmercs.utils.rgmercs_utils")

return {
    ['Modes'] = {
        [1] = 'Tank',
        [2] = 'DPS',
        [3] = 'Healer',
        [4] = 'Hybrid',
    },
    ['ItemSets'] = {
        ['Epic'] = {
            [1] = "Innoruuk's Dark Blessing",
            [2] = "Innoruuk's Voice",
        },
    },
    ['AbilitySets'] = {
        ['BardRunBuff'] = {
            -- Bard RunSpeed 
            [1] = "Selo's Accelerato",
            -- Song of travel has been removed due to causing Bugs with Invis and rotation.
            -- [] = ["Selo's Song of Travel"],
            [2] = "Selo's Accelerating Chorus",
            [3] = "Selo's Accelerando",
        },
        ['MainAriaSong'] = {
            -- MainAriaSong - Level Ranges 45 - 111
            -- What differs between PsalmSong and MainAriaSong ???
            [1] =  "Aria of Pli Xin Liako",
            [2] =  "Aria of Margidor",
            [3] =  "Aria of Begalru",
            [4] =  "Aria of Maetanrus",
            [5] =  "Aria of Va'Ker",
            [6] =  "Aria of the Orator",  
            [7] =  "Aria of the Composer",
            [8] =  "Aria of the Poet",
            [9] =  "Ancient: Call of Power",
            [10] = "Aria of the Artist",
            [11] = "Yelhun's Mystic Call",
            [12] = "Ancient: Call of Power",
            [13] = "Rizlona's Call of Flame",
            [14] = "Rizlona's Fire",
            [15] = "Rizlona's Embers",
        },
        ['SufferingSong'] = {
            -- SufferingSong - Level Range 89 - 114
            [1] = "Shojralen's Song of Suffering",
            [2] = "Omorden's Song of Suffering",
            [3] = "Travenro's Song of Suffering",
            [4] = "Fjilnauk's Song of Suffering",
            [5] = "Kaficus' Song of Suffering",
            [6] = "Hykast's Song of Suffering",
            [7] = "Noira's Song of Suffering",
        },
        ['SprySonataSong'] = {
            -- Adding misc songs below level 77 to fill in first spell gem  
            -- [] = 'Psalm of Veeshan",
            -- [] = "Nillipus' March of the Wee",
            -- [] = "Verses of Victory",
            -- [] = "Psalm of Mystic Shielding",
            -- [] = "Psalm of Cooling",
            -- [] = "Psalm of Vitality",
            -- [] = "Psalm of Warmth",
            -- [] = "Guardian Rhythms",
            -- [] = Purifying Rhythms",
            -- [] = "Elemental Rhythms",
            -- [] = "Jonthan's Whistling Warsong",
            -- [] = "Chant of Battle",
            -- SprySonataSong - Level Range 77 - 118
            [1] = "Xetheg's Spry Sonata",
            [2] = "Kellek's Spry Sonata",
            [3] = "Kluzen's Spry Sonata",
            [4] = "Doben's Spry Sonata",
            [5] = "Terasal's Spry Sonata",
            [6] = "Sionachie's Spry Sonata",
            [7] = "Coldcrow's Spry Sonata",
        },
        ['CrescendoSong'] = {
            -- CrescendoSong - Level Range 75 - 114
            [1] =  "Zelinstein's Lively Crescendo",
            [2] =  "Zburator's Lively Crescendo",
            [3] =  "Jembel's Lively Crescendo",
            [4] =  "Silisia's Lively Crescendo",
            [5] =  "Motlak's Lively Crescendo",
            [6] =  "Kolain's Lively Crescendo",
            [7] =  "Lyssa's Lively Crescendo",
            [8] =  "Gruber's Lively Crescendo",
            [9] =  "Kaerra's Spirited Crescendo",
            [10] = "Veshma's Lively Crescendo",
        },
        ['ArcaneSong'] = {
            -- ArcaneSong - Level Range 70 - 115
            [1] =  "Arcane Harmony",
            [2] =  "Arcane Symphony",
            [3] =  "Arcane Ballad",
            [4] =  "Arcane Melody",
            [5] =  "Arcane Hymn",
            [6] =  "Arcane Address",
            [7] =  "Arcane Chorus",
            [8] =  "Arcane Arietta",
            [9] =  "Arcane Anthem",
            [10] = "Arcane Aria",
        },
        ['InsultSong'] = {
            [1] =  "Nord's Disdain",
            [2] =  "Sogran's Insult",
            [3] =  "Yelinak's Insult",
            [4] =  "Omorden's Insult",
            [5] =  "Sathir's Insult",
            [6] =  "Travenro's Insult",
            [7] =  "Tsaph's Insult",
            [8] =  "Fjilnauk's Insult",
            [9] =  "Kaficus' Insult",
            [10] = "Garath's Insult",
            [11] = "Hykast's Insult",
            [12] = "Venimor's Insult",
            -- Below Level 85 This line turns into "bellow" instead of "Insult"
            [13] = "Bellow of Chaos",
            [14] = "Brusco's Bombastic Bellow",
            [15] = "Brusco's Boastful Bellow",
        },
        ['DichoSong'] = {
            -- DichoSong Level Range - 101 - 106
            [1] = "Ecliptic Psalm",
            [2] = "Composite Psalm",
            [3] = "Dissident Psalm",
            [4] = "Dichotomic Psalm",
        },
        ['BardDPSAura'] = {
            -- BardDPSAura - Level Ranges 55 - 115
            [1] =  "Aura of Pli Xin Liako",
            [2] =  "Aura of Margidor",
            [3] =  "Aura of Begalru",
            [4] =  "Aura of Maetanrus",
            [5] =  "Aura of Va'Ker",
            [6] =  "Aura of the Orator",
            [7] =  "Aura of the Composer",
            [8] =  "Aura of the Poet",
            [9] =  "Aura of the Artist",
            [10] = "Aura of the Muse",
            [11] = "Aura of Insight",
        },
        ['BardRegenAura'] = {
            [1] = "Aura of Shei Vinitras",
            [2] = "Aura of Vhal`Sera",
            [3] = "Aura of Xigam",
            [4] = "Aura of Sionachie",
            [5] = "Aura of Salarra",
            [6] = "Aura of Lunanyn",
            [7] = "Aura of Renewal",
            [8] = "Aura of Rodcet",
        },
        ['PulseRegenSong'] = {
            -- PulseRegenSong - Level Range 77 - 111 ** -- Low level regens are for TLP users thus preferring mana over health.
            [1] =  "Pulse of Nikolas",
            [2] =  "Pulse of Vhal`Sera",
            [3] =  "Pulse of Xigam",
            [4] =  "Pulse of Sionachie",
            [5] =  "Pulse of Salarra",
            [6] =  "Pulse of Lunanyn",
            [7] =  "Pulse of Renewal",
            [8] =  "Pulse of Rodcet",
            [9] =  "Cassindra's Chorus of Clarity",
            [10] = "Cassindra's Chant of Clarity",
            [11] = "Rhythm of Restoration",
        },
        ['ChorusRegenSong'] = {
                -- ChorusRegenSong - Level Range 6 - 113
                [1] =  "Chorus of Shei Vinitras",
                [2] =  "Chorus of Vhal`Sera",
                [3] =  "Chorus of Xigam",  
                [4] =  "Chorus of Sionachie", 
                [5] =  "Chorus of Salarra",
                [6] =  "Chorus of Lunanyn",
                [7] =  "Chorus of Renewal",
                [8] =  "Chorus of Rodcet",
                [9] =  "Cantata of Rodcet",
                [10] = "Chorus of Restoration",
                [11] = "Cantata of Restoration",
                [12] = "Erollisi's Cantata",
                [13] = "Chorus of Life",
                [14] = "Cantata of Life",
                [15] = "Chorus of Marr",
                [16] = "Wind of Marr",
                [17] = "Chorus of Replenishment",
                [18] = "Cantata of Replenishment",
                [19] = "Cantata of Soothing",
                [20] = "Hymn of Restoration",
        },
        ['WarMarchSong'] = {
            -- WarMarchSong Level Range 10 - 114
            [1] =  "War March of Centien Xi Va Xakra",
            [2] =  "War March of Radiwol",
            [3] =  "War March of Dekloaz",
            [4] =  "War March of Jocelyn",
            [5] =  "War March of Protan",
            [6] =  "War March of Illdaera",
            [7] =  "War March of Dagda",
            [8] =  "War March of Brekt",
            [9] =  "War March of Meldrath",
            [10] = "War March of Muram",
            [11] = "War March of the Mastruq",
            [12] = "Warsong of Zek",
            [13] = "McVaxius' Rousing Rondo",
            [14] = "Vilia's Chorus of Celerity",
            [15] = "Verses of Victory",
            [16] = "McVaxius' Berserker Crescendo",
            [17] = "Vilia's Verses of Celerity",
            [18] = "Anthem de Arms",
        },
        ['CasterAriaSong'] = {
            -- CasterAriaSong - Level Range 72 - 113
            [1] = "Constance's Aria",
            [2] = "Sontalak's Aria",
            [3] = "Qunard's Aria",
            [4] = "Nilsara's Aria",
            [5] = "Gosik's Aria",
            [6] = "Daevan's Aria",
            [7] = "Sotor's Aria",
            [8] = "Talendor's Aria",
            [9] = "Performer's Explosive Aria",
            [10] = "Weshlu's Chillsong Aria",
        },
        ['SlowSong'] = {
            -- SlowSong - We only get 1 single target slow
            [1] = "Requiem of Time",
        },
        ['AESlowSong'] = {
        -- AESlowSong - Level Range 20 - 114 (Single target works better)  
        [1] = "Radiwol's Melodic Binding",
        [2] = "Dekloaz's Melodic Binding",
        [3] = "Protan's Melodic Binding",
        [4] = "Largo's Melodic Binding",
        },
        ['AccelerandoSong'] = {
            -- AccelerandoSong - Level Range 88 - 113 **
            [1] = "Satisfying Accelerando",
            [2] = "Placating Accelerando",
            [3] = "Atoning Accelerando",
            [4] = "Allaying Accelerando",
            [5] = "Ameliorating Accelerando",
            [6] = "Assuaging Accelerando",
            [7] = "Alleviating Accelerando",
        },
        ['SpitefulSong'] = {
            -- SpitefulSong - Level Range 90 - 
            [1] = "Von Deek's Spiteful Lyric",
            [2] = "Omorden's Spiteful Lyric",
            [3] = "Travenro's Spiteful Lyric",
            [4] = "Fjilnauk's Spiteful Lyric",
            [5] = "Kaficus' Spiteful Lyric",
            [6] = "Hykast's Spiteful Lyric",
            [7] = "Lyrin's Spiteful Lyric",
        },
        ['RecklessSong'] = {
            -- RecklessSong - Level Range 93 - 113 **
            [1] = "Kai's Reckless Renewal",
            [2] = "Reivaj's Reckless Renewal",
            [3] = "Rigelon's Reckless Renewal",
            [4] = "Rytan's Reckless Renewal",
            [5] = "Ruaabri's Reckless Renewal",
            [6] = "Ryken's Reckless Renewal",
        },
        ['FateSong'] = {
            -- Fatesong - Level Range 77 - 112 **
            [1] = "Fatesong of Lucca",
            [2] = "Fatesong of Radiwol",
            [3] = "Fatesong of Dekloaz",
            [4] = "Fatesong of Jocelyn",
            [5] = "Fatesong of Protan",
            [6] = "Fatesong of Illdaera",
            [7] = "Fatesong of Fergar",
            [8] = "Fatesong of the Gelidran",
            [9] = "Garadell's Fatesong",
        },
        ['PsalmSong'] = {
            -- PsalmSong - Level Range 69 - 112 **
            -- What differs between PsalmSong and MainAriaSong ???
            [1] =  "Fyrthek Fior's Psalm of Potency",
            [2] =  "Velketor's Psalm of Potency",
            [3] =  "Akett's Psalm of Potency",
            [4] =  "Horthin's Psalm of Potency",
            [5] =  "Siavonn's Psalm of Potency",
            [6] =  "Wasinai's Psalm of Potency",
            [7] =  "Lyrin's Psalm of Potency",
            [8] =  "Druzzil's Psalm of Potency",
            [9] =  "Erradien's Psalm of Potency",
            [10] = "Performer's Psalm of Pyrotechnics",
            [11] = "Ancient: Call of Power",
            [12] = "Eriki's Psalm of Power",
        },
        ['DotSong'] = {
            -- DotSongs - Level Range 30 - 115 
            
            -- Fire Dot  
            [1] = "Shak Dathor's Chant of Flame",
            [5] = "Sontalak's Chant of Flame",
            [9] = "Qunard's Chant of Flame",
            [13] = "Nilsara's Chant of Flame",
            [17] = "Gosik's Chant of Flame",
            [21] = "Daevan's Chant of Flame",
            [25] = "Sotor's Chant of Flame",
            [29] = "Talendor's Chant of Flame",
            [33] = "Tjudawos' Chant of Flame",
            [38] = "Vulka's Chant of Flame",
            [43] = "Tuyen's Chant of Fire",
            [52] = "Tuyen's Chant of Flame",

            -- Posion Dot             
            [2] = "Cruor's Chant of Poison",
            [6] = "Malvus's Chant of Poison",
            [10] = "Nexona's Chant of Poison",
            [14] = "Serisaria's Chant of Poison",
            [18] = "Slaunk's Chant of Poison",
            [22] = "Hiqork's Chant of Poison",
            [26] = "Spinechiller's Chant of Poison",
            [30] = "Severilous' Chant of Poison",
            [34] = "Kildrukaun's Chant of Poison",
            [39] = "Vulka's Chant of Poison",
            [45] = "Tuyen's Chant of Venom",
            [59] = "Tuyen's Chant of Poison",

            -- Ice Dot
            [3] = "Sylra Fris' Chant of Frost",
            [7] = "Yelinak's Chant of Frost",
            [11] = "Ekron's Chant of Frost",
            [15] = "Kirchen's Chant of Frost",
            [19] = "Edoth's Chant of Frost",
            [23] = "Kalbrok's Chant of Frost",
            [27] = "Fergar's Chant of Frost",
            [31] = "Gorenaire's Chant of Frost",
            [35] = "Zeixshi-Kar's Chant of Frost",
            [40] = "Vulka's Chant of Frost",
            [44] = "Tuyen's Chant of Ice",
            [50] = "Tuyen's Chant of Frost",

            -- Disease Dot
            [4] = "Coagulus' Chant of Disease",
            [8] = "Zlexak's Chant of Disease",
            [12] = "Hoshkar's Chant of Disease",
            [16] = "Horthin's Chant of Disease",
            [20] = "Siavonn's Chant of Disease",
            [24] = "Wasinai's Chant of Disease",
            [28] = "Shiverback's Chant of Disease",
            [32] = "Trakanon's Chant of Disease",
            [36] = "Vyskudra's Chant of Disease",
            [41] = "Vulka's Chant of Disease",
            [46] = "Tuyen's Chant of the Plague",
            [51] = "Tuyen's Chant of Disease",

            -- Misc Dot -- Or Minsc Dot (HEY HEY BOO BOO!)
            [37] = "Ancient: Chaos Chant",
            [47] = "Angstlich's Assonance",
            [48] = "Fufil's Diminishing Dirge",
            [53] = "Fufil's Curtailing Chant",
        },
        ['CureSpell'] = {
            [1] = "Aria of Absolution",
        },
        ['AllianceSong'] = {
            [1] = "Conjunction of Sticks and Stones",
            [2] = "Alliance of Sticks and Stones",
            [3] = "Covenant of Sticks and Stones",
            [4] = "Coalition of Sticks and Stones",
        },
        ['CharmSong'] = {
            [1] = "Omiyad's Demand",
            [2] = "Voice of the Diabo",
            [3] = "Silisia's Demand",
            [4] = "Dawnbreeze's Demand",
            [5] = "Desirae's Demand",
            -- Low Level Aria Song - before Combination of Effects Under Level 68
            [6] = "Battlecry of the Vah Shir",
            [7] = "Warsong of the Vah Shir",
        },
        ['ReflexStrike'] = {
            -- Bard ReflexStrike - Restores mana to group
            [1] = "Reflexive Retort",
            [2] = "Reflexive Rejoinder",
            [3] = "Reflexive Rebuttal",
        },
        ['ChordsAE'] = {
            [1] = "Chords of Dissonance",
        },
        ['LowAriaSong'] = {
            -- Low Level Aria Song - before Combination of Effects Under Level 68
            [1] = "Battlecry of the Vah Shir",
            [2] = "Warsong of the Vah Shir",
        },
        ['AmpSong'] = {
            [1] = "Amplification",
        },
        ['DispelSong'] = {
            -- Dispel Song - For pulling to avoid Summons
            [1] = "Syvelian's Anti-Magic Aria",
            [2] = "Druzzil's Disillusionment",
        },
        ['ResistSong'] = {
            -- Resists Song
            [1] = "Psalm of Cooling",
            [2] = "Psalm of Purity",
            [3] = "Psalm of Warmth",
            [4] = "Psalm of Vitality",
            [5] = "Psalm of Veeshan",
            [6] = "Psalm of the Forsaken",
            [7] = "Second Psalm of Veeshan",
            [8] = "Psalm of the Restless",
            [9] = "Psalm of the Pious",
        },       
        ['MezSpell'] = {
            -- MezSpell - Level Range 15 - 114
            [1] = "Slumber of the Diabo",
            -- [] = "Lullaby of Nightfall",
            -- [] = "Lullaby of Zburator",
            [2] = "Slumber of Zburator",
            [3] = "Slumber of Jembel", 
            -- [] = "Lullaby of Jembel",
            [4] = "Slumber of Silisia",
            -- [] = "Lullaby of Silisia",
            [5] = "Slumber of Motlak",
            -- [] = "Lullaby of the Forsaken",   
            [6] = "Slumber of Kolain",
            -- [] = "Lullaby of the Forlorn",
            [7] = "Slumber of Sionachie", 
            -- [] = "Lullaby of the Lost",   
            [8] = "Slumber of the Mindshear",
            [9] = "Serenity of Oceangreen",
            [10] = "Amber's Last Lullaby",
            [11] = "Queen Eletyl's Screech",
            [12] = "Command of Queen Veneneu",
            [13] = "Aelfric's Last Lullaby",   
            [14] = "Vulka's Lullaby",
            [15] = "Creeping Dreams",
            [16] = "Luvwen's Lullaby", 
            [17] = "Lullaby of Morell",   
            [18] = "Dreams of Terris",
            [19] = "Dreams of Thule", 
            [20] = "Dreams of Ayonae",  
            [21] = "Song of Twilight",
            [22] = "Sionachie's Dreams", 
            [23] = "Crission's Pixie Strike",  
            [24] = "Kelin's Lucid Lullaby",
        },
        ['MezAESpell'] = {
        -- MezAESpell - Level Range 85 - 115 **
        [1] = "Wave of Nocturn",
        [2] = "Wave of Sleep",
        [3] = "Wave of Somnolence",
        [4] = "Wave of Torpor",
        [5] = "Wave of Quietude",
        [6] = "Wave of the Conductor",
        [7] = "Wave of Dreams",
        [8] = "Wave of Slumber",
        },
    },
    ['Rotations'] = {
        ['Tank'] = {
            ['Rotation'] = {
                ['Burn'] = {
                    [1] = {},
                },
                ['Debuff'] = {
                    [1] = {},
                },
                ['Heal'] = {
                    [1] = {},
                },
                ['DPS'] = {
                    [1] = {},
                },
                ['Downtime'] = {
                    [1] = {},
                },
            },
            ['Spells'] = {
                [1] = { name="", gem=1 },
                [2] = { name="", gem=2 },
                [3] = { name="", gem=3},
                [4] = { name="", gem=4},
                [5] = { name="", gem=5 },
                [6] = { name="", gem=6 },
                [7] = { name="", gem=7 },
                [8] = { name="", gem=8 },
                [9] = { name="", gem=9 },
                [10] = { name="", gem=10 },
                [11] = { name="", gem=11 },
                [12] = { name="", gem=12 },
            },
        },
        ['DPS'] = {
            ['Rotation'] = {
                ['Burn'] = {
                    [1] = {},
                },
                ['Debuff'] = {
                    [1] = {},
                },
                ['Heal'] = {
                    [1] = {},
                },
                ['DPS'] = {
                    [1] = {},
                },
                ['Downtime'] = {
                    [1] = {},
                },
            },
            ['Spells'] = {
                [1] = { name="", gem=1 },
                [2] = { name="", gem=2 },
                [3] = { name="", gem=3},
                [4] = { name="", gem=4},
                [5] = { name="", gem=5 },
                [6] = { name="", gem=6 },
                [7] = { name="", gem=7 },
                [8] = { name="", gem=8 },
                [9] = { name="", gem=9 },
                [10] = { name="", gem=10 },
                [11] = { name="", gem=11 },
                [12] = { name="", gem=12 },
            },
        },
        ['Healer'] = {
            ['Rotation'] = {
                ['Burn'] = {
                    [1] = {},
                },
                ['Debuff'] = {
                    [1] = {},
                },
                ['Heal'] = {
                    [1] = {},
                },
                ['DPS'] = {
                    [1] = {},
                },
                ['Downtime'] = {
                    [1] = {},
                },
            },
            ['Spells'] = {
                [1] = { name="", gem=1 },
                [2] = { name="", gem=2 },
                [3] = { name="", gem=3},
                [4] = { name="", gem=4},
                [5] = { name="", gem=5 },
                [6] = { name="", gem=6 },
                [7] = { name="", gem=7 },
                [8] = { name="", gem=8 },
                [9] = { name="", gem=9 },
                [10] = { name="", gem=10 },
                [11] = { name="", gem=11 },
                [12] = { name="", gem=12 },
            },
        },
        ['Hybrid'] = {
            ['Rotation'] = {
                ['Burn'] = {
                    [1] = {},
                },
                ['Debuff'] = {
                    [1] = {},
                },
                ['Heal'] = {
                    [1] = {},
                },
                ['DPS'] = {
                    [1] = {},
                },
                ['Downtime'] = {
                    [1] = {},
                },
            },
            ['Spells'] = {
                [1] = { name="", gem=1 },
                [2] = { name="", gem=2 },
                [3] = { name="", gem=3},
                [4] = { name="", gem=4},
                [5] = { name="", gem=5 },
                [6] = { name="", gem=6 },
                [7] = { name="", gem=7 },
                [8] = { name="", gem=8 },
                [9] = { name="", gem=9 },
                [10] = { name="", gem=10 },
                [11] = { name="", gem=11 },
                [12] = { name="", gem=12 },
            },
        },
        ['DefaultConfig'] = {
            ['Mode'] = '1',
        },
    },
}