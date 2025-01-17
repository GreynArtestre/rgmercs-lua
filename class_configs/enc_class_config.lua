local mq             = require('mq')
local RGMercUtils    = require("rgmercs.utils.rgmercs_utils")

return {
    ['Modes'] = {
        ['Mori'] = 0,
        ['Charm'] = 1,
        ['TLP'] = 2,
        ['Mez'] = 3,
    },
    ['ItemSets'] = {
        ['Epic'] = {
            [1] = "Staff of Eternal Eloquence",
            [2] = "Oculus of Persuasion",
        },
    },
    ['AbilitySets'] = {
        ['AuraBuff1'] = {
            [1] = "Twincast Aura",
        },
        ['AuraBuff2'] = {
            [1] = "Mana Ripple Aura",
            [2] = "Mana Radix Aura",
            [3] = "Mana Replication Aura",
            [4] = "Mana Repetition Aura",
            [5] = "Mana Reciprocation Aura",
            [6] = "Mana Reverberation Aura",
            [7] = "Mana Repercussion Aura",
            [8] = "Mana Reiteration Aura",
            [9] = "Mana Reiterate Aura",
            [10] = "Mana Resurgence Aura",
            [11] = "Mystifier's Aura",
            [12] = "Entrancer's Aura",
            [13] = "Illusionist's Aura",
            [14] = "Beguiler's Aura",
        },
        ['AuraBuff3'] = {
            [1] = "Learner's Aura",
        },
        ['HasteBuff'] = {
            [1] = "Hastening of Margator",
            [2] = "Hastening of Jharin",
            [3] = "Hastening of Cekenar",
            [4] = "Hastening of Milyex",
            [5] = "Hastening of Prokev",
            [6] = "Hastening of Sviir",
            [7] = "Hastening of Aransir",
            [8] = "Hastening of Novak",
            [9] = "Hastening of Erradien",
            [10] = "Hastening of Ellowind",
            [11] = "Hastening of Salik",
            [12] = "Vallon's Quickening",
            [13] = "Speed of the Brood",
            [14] = "Speed of Cekenar",
            [15] = "Speed of Milyex",
            [16] = "Speed of Prokev",
            [17] = "Speed of Sviir",
            [18] = "Speed of Aransir",
            [19] = "Speed of Novak",
            [20] = "Speed of Erradien",
            [21] = "Speed of Ellowind",
            [22] = "Speed of Salik",
            [23] = "Speed of Vallon",
            [24] = "Visions of Grandeur",
            [25] = "Wondrous Rapidity",
            [26] = "Aanya's Quickening",
            [27] = "Swift Like the Wind",
            [28] = "Celerity",
            [29] = "Augmentation",
            [30] = "Alacrity",
            [31] = "Quickness",
        },
        ['ManaRegen'] = {
            [1] = "Voice of Preordination",
            [2] = "Voice of Perception",
            [3] = "Voice of Sagacity",
            [4] = "Voice of Perspicacity",
            [5] = "Voice of Precognition",
            [6] = "Voice of Foresight",
            [7] = "Voice of Premeditation",
            [8] = "Voice of Forethought",
            [9] = "Voice of Prescience",
            [10] = "Voice of Cognizance",
            [11] = "Voice of Intuition",
            [12] = "Voice of Clairvoyance",
            [13] = "Voice of Quellious",
            [14] = "Tranquility",
            -- [] = ["Gift of Brilliance", -- Removed because the Map Defaults to it Instead of Koadics 
            [15] = "Koadic's Endless Intellect",
            [16] = "Gift of Pure Thought",
            [17] = "Sagacity",
            [18] = "Perspicacity",
            [19] = "Precognition",
            [20] = "Foresight",
            [21] = "Premeditation",
            [22] = "Forethought",
            [23] = "Prescience",
            [24] = "Seer's Cognizance",
            [25] = "Seer's Intuition",
            [26] = "Clairvoyance",
            [27] = "Gift of Insight",
            [28] = "Clarity II",
            [29] = "Clarity",
            [30] = "Breeze",
        },
        ['MezBuff'] = {
            [1] = "Ward of the Stupefier",
            [2] = "Ward of the Beguiler",
            [3] = "Ward of the Deviser",
            [4] = "Ward of the Transfixer",
            [5] = "Ward of the Enticer",
            [6] = "Ward of the Mastermind",
            [7] = "Ward of Arctending",
            [8] = "Ward of Bafflement",
            [9] = "Ward of Befuddlement",
            [10] = "Ward of Mystifying",
            [11] = "Ward of Bewilderment",
            [12] = "Ward of Bedazzlement",
        },
        ['NdtBuff'] = {
            [1] = "Night's Perpetual Terror",
            [2] = "Night's Endless Terror",
            [3] = "Night's Dark Terror",
            [4] = "Boon of the Garou",
        },
        ['SelfHPBuff'] = {
            [1] = "Shield of Memories",
            [2] = "Shield of Shadow",
            [3] = "Shield of Restless Ice",
            [4] = "Shield of Scales",
            [5] = "Shield of the Pellarus",
            [6] = "Shield of the Dauntless",
            [7] = "Shield of Bronze",
            [8] = "Shield of Dreams",
            [9] = "Shield of the Void",
            [10] = "Spellbound Shield",
            [11] = "Sorcerous Shield",
            [12] = "Mystic Shield",
            [13] = "Shield of Maelin",
            [14] = "Shield of the Arcane",
            [15] = "Shield of the Magi",
            [16] = "Arch Shielding",
            [17] = "Greater Shielding",
            [18] = "Major Shielding",
            [19] = "Shielding",
            [20] = "Lesser Shielding",
            [21] = "Minor Shielding",
        },
        ['SelfRune1'] = {
            [1] = "Esoteric Rune",
            [2] = "Marvel's Rune",
            [3] = "Deviser's Rune",
            [4] = "Transfixer's Rune",
            [5] = "Enticer's Rune",
            [6] = "Mastermind's Rune",
            [7] = "Arcanaward's Rune",
            [8] = "Spectral Rune",
            [9] = "Pearlescent Rune",
            [10] = "Opalescent Rune",
            [11] = "Draconic Rune",
            [12] = "Ethereal Rune",
            [13] = "Arcane Rune",
        },
        ['SelfRune2'] = {
            [1] = "Polyradiant Rune",
            [2] = "Polyluminous Rune",
            [3] = "Polycascading Rune",
            [4] = "Polyfluorescent Rune",
            [5] = "Polyrefractive Rune",
            [6] = "Polyiridescent Rune",
            [7] = "Polyarcanic Rune",
            [8] = "Polyspectral Rune",
            [9] = "Polychaotic Rune",
            [10] = "Multichromatic Rune",
            [11] = "Polychromatic Rune",
        },
        ['UnityRune'] = {
            [1] = "Esoteric Unity",
            [2] = "Deviser's Unity",
            [3] = "Marvel's Unity",
        },
        ['SingleRune'] =  {
            [1] = "Rune of Zoraxmen",
            [2] = "Rune of Tearc",
            [3] = "Rune of Kildrukaun",
            [4] = "Rune of Skrizix",
            [5] = "Rune of Lucem",
            [6] = "Rune of Xolok",
            [7] = "Rune of Tonmek",
            [8] = "Rune of Novak",
            [9] = "Rune of Yozan",
            [10] = "Rune of Erradien",
            [11] = "Rune of Ellowind",
            [12] = "Rune of Salik",
            [13] = "Rune of Zebuxoruk",
            [14] = "Rune V",
            [15] = "Rune IV",
            [16] = "Rune III",
            [17] = "Rune II",
            [18] = "Rune I",
        },
        ['GroupRune'] = {
            [1] = "Gloaming Rune",
            [2] = "Eclipsed Rune",
            [3] = "Crepuscular Rune",
            [4] = "Tenebrous Rune",
            [5] = "Darkened Rune",
            [6] = "Umbral Rune",
            [7] = "Shadowed Rune",
            [8] = "Twilight Rune",
            [9] = "Rune of the Void",
            [10] = "Rune of the Deep",
            [11] = "Rune of the Kedge",
            [12] = "Rune of Rikkukin",
            [13] = "Rune of the Scale",
        },
        ['AggroRune'] = {
            [1] = "Disquieting Rune",
            [2] = "Ghastly Rune",
            [3] = "Horrendous Rune",
            [4] = "Dreadful Rune",
            [5] = "Frightening Rune",
            [6] = "Terrifying Rune",
            [7] = "Horrifying Rune",
        },
        ['AggroBuff'] = {
            [1] = "Horrifying Visage",
            [2] = "Haunting Visage",
        },
        ['SingleSpellShield'] = {
            [1] = "Aegis of Elmara",
            [2] = "Aegis of Sefra",
            [3] = "Aegis of Omica",
            [4] = "Aegis of Nureya",
            [5] = "Aegis of Gordianus",
            [6] = "Aegis of Xorbb",
            [7] = "Aegis of Soliadal",
            [8] = "Aegis of Zykean",
            [9] = "Aegis of Xadrith",
            [10] = "Aegis of Qandieal",
            [11] = "Aegis of Alendar",
            [12] = "Wall of Alendar",
            [13] = "Bulwark of Alendar",
            [14] = "Protection of Alendar",
            [15] = "Guard of Alendar",
            [16] = "Ward of Alendar",
        },
        ['GroupSpellShield'] = {
            [1] = "Legion of Ogna",
            [2] = "Legion of Liako",
            [3] = "Legion of Kildrukaun",
            [4] = "Legion of Skrizix",
            [5] = "Legion of Lucem",
            [6] = "Legion of Xolok",
            [7] = "Legion of Tonmek",
            [8] = "Legion of Zykean",
            [9] = "Legion of Xadrith",
            [10] = "Legion of Qandieal",
            [11] = "Legion of Alendar",
            [12] = "Circle of Alendar",
        },
        ['SingleDoTShield'] = {
            [1] = "Aegis of Xetheg",
            [2] = "Aegis of Cekenar",
            [3] = "Aegis of Milyex",
            [4] = "Aegis of the Indagator",
            [5] = "Aegis of the Keeper",
        },
        ['GroupDoTShield'] = {
            [1] = "Legion of Dhakka",
            [2] = "Legion of Xetheg",
            [3] = "Legion of Cekenar",
            [4] = "Legion of Milyex",
            [5] = "Legion of the Indagator",
            [6] = "Legion of the Keeper",
        },
        ['SingleMeleeShield'] = {
            [1] = "Gloaming Auspice",
            [2] = "Eclipsed Auspice",
            [3] = "Crepuscular Auspice",
            [4] = "Tenebrous Auspice",
            [5] = "Darkened Auspice",
            [6] = "Umbral Auspice",
        },
        ['SelfGuardShield'] = {
            [1] = "Shield of Inescapability",
            [2] = "Shield of Shadow",
            [3] = "Shield of Destiny",
            [4] = "Shield of Order",
            [5] = "Shield of Consequence",
            [6] = "Shield of Fate",
        },
        ['GroupAuspiceBuff'] = {
            [1] = "Marvel's Auspice",
            [2] = "Deviser's Auspice",
            [3] = "Transfixer's Auspice",
            [4] = "Enticer's Auspice",
        },
        ['AllianceSpell'] = {
            [1] = "Chromatic Conjunction",
            [2] = "Chromatic Coalition",
            [3] = "Chromatic Covenant",
            [4] = "Chromatic Alliance",
        },
        ['TwinCast'] = {
            [1] = "Chaotic Deception",
            [2] = "Chaotic Delusion",
            [3] = "Chaotic Bewildering",
            [4] = "Chaotic Confounding",
            [5] = "Chaotic Confusion",
            [6] = "Chaotic Baffling",
            [7] = "Chaotic Befuddling",
            [8] = "Chaotic Puzzlement",
            [9] = "Chaotic Conundrum",
        },
        ['PBAEStunSpell'] = {
            [1] = "Color Calibration",
            [2] = "Color Conflagration",
            [3] = "Color Cascade",
            [4] = "Color Congruence",
            [5] = "Color Concourse",
            [6] = "Color Confluence",
            [7] = "Color Convergence",
            [8] = "Color Clash",
            [9] = "Color Conflux",
            [10] = "Color Cataclysm",
            [11] = "Color Collapse",
            [12] = "Color Snap",
            [13] = "Color Cloud",
            [14] = "Color Slant",
            [15] = "Color Skew",
            [16] = "Color Shift",
            [17] = "Color Flux",
        },
        ['TargetAEStun'] = {
            [1] = "Remote Color Calibration",
            [2] = "Remote Color Conflagration",
            [3] = "Remote Color Cascade",
            [4] = "Remote Color Congruence",
            [5] = "Remote Color Concourse",
            [6] = "Remote Color Confluence",
            [7] = "Remote Color Convergence",
        },
        ['SingleStunSpell1'] = {
            [1] = "Dizzying Spindle",
            [2] = "Dizzying Vortex",
            [3] = "Dizzying Coil",
            [4] = "Dizzying Wheel",
            [5] = "Dizzying Storm",
            [6] = "Dizzying Squall",
            [7] = "Dizzying Gyre",
            [8] = "Dizzying Helix",
            [9] = "The Downward Spiral",
            [10] = "Whirling into the Hollow",
            [11] = "Spinning into the Void",
            [12] = "Largarn's Lamentation",
            [13] = "Dyn's Dizzying Draught",
            [14] = "Whirl till you hurl",
        },
        ['CharmSpell'] = {
            [1] = "Esoteric Command",
            [2] = "Marvel's Demand",
            [3] = "Marvel's Command",
            [4] = "Inveigle",
            [5] = "Deviser's Demand",
            [6] = "Deviser's Command",
            [7] = "Transfixer's Command",
            [8] = "Spellbinding",
            [9] = "Enticer's Command",
            [10] = "Enticer's Demand",
            [11] = "Captivation",
            [12] = "Impose",
            [13] = "Temptation",
            [14] = "Enforce",
            [15] = "Compelling Edict",
            [16] = "Subjugate",
            [17] = "Deception",
            [18] = "Dominate",
            [19] = "Seduction",
            [20] = "Haunting Whispers",
            [21] = "Cajole",
            [22] = "Dyn`leth's Whispers",
            [23] = "Coax",
            -- [] = "Ancient Voice of Muram",
            [24] = "True Name",
            [25] = "Compel",
            [26] = "Command of Druzzil",
            [27] = "Beckon",
            [28] = "Dictate",
            [29] = "Boltran's Agacerie",
            [30] = "Ordinance",
            [31] = "Allure",
            [32] = "Cajoling Whispers",
            [33] = "Beguile",
            [34] = "Charm",            
        },
        ['CrippleSpell'] = {
            [1] = "Splintered Consciousness",
            [2] = "Fragmented Consciousness",
            [3] = "Shattered Consciousness",
            [4] = "Fractured Consciousness",
            [5] = "Synapsis Spasm",
            [6] = "Cripple",
            [7] = "Incapacitate",
            [8] = "Listless Power",
            [9] = "Disempower",
            [10] = "Enfeeblement"
        },
        ['SlowSpell'] = {
            -- Slow - lvl88 and above this is also cripple spell Starting @ Level 88  Combines With Cripple.
            [1] = "Desolate Deeds",
            [2] = "Dreary Deeds",
            [3] = "Forlorn Deeds",
            [4] = "Shiftless Deeds",
            [5] = "Tepid Deeds",
            [6] = "Languid Pace",
        },
        ['StripBuffSpell'] = {
            [1] = "Eradicate Magic",
            [2] = "Recant Magic",
            [3] = "Pillage Enchantment",
            [4] = "Nullify Magic",
            [5] = "Strip Enchantment",
            [6] = "Cancel Magic",
            [7] = "Taper Enchantment",
        },
        ['TashSpell'] = {
            [1] = "Roar of Tashan"  ,
            [2] = "Edict of Tashan",
            [3] = "Proclamation of Tashan",
            [4] = "Order of Tashan",
            [5] = "Decree of Tashan",
            [6] = "Enunciation of Tashan",
            [7] = "Declaration of Tashan",
            [8] = "Clamor of Tashan",
            [9] = "Bark of Tashan",
            [10] = "Din of Tashan",
            [11] = "Echo of Tashan",
            [12] = "Howl of Tashan",
            [13] = "Tashanian",
            [14] = "Tashania",
            [15] = "Tashani",
            [16] = "Tashina",
        },
        ['ManaDrainSpell'] = {
            [1] = "Tears of Kasha",
            [2] = "Tears of Xenacious",
            [3] = "Tears of Aaryonar",
            [4] = "Tears of Skrizix",
            [5] = "Tears of Visius",
            [6] = "Tears of Syrkl",
            [7] = "Tears of Wreliard",
            [8] = "Tears of Zykean",
            [9] = "Tears of Xadrith",
            [10] = "Tears of Qandieal",
            [11] = "Torment of Scio",
            [12] = "Torment of Argli",
            [13] = "Scryer's Trespass",
            [14] = "Wandering Mind",
            [15] = "Mana Sieve",
        },
        ['DichoSpell'] = {
            [1] = "Ecliptic Reinforcement",
            [2] = "Composite Reinforcement",
            [3] = "Dissident Reinforcement",
            [4] = "Dichotomic Reinforcement",
        },
        ['DoTSpell1'] = {
            ---DoT 1 -- >=LVL1
            [1] = "Asphyxiating Grasp",
            [2] = "Throttling Grip",
            [3] = "Pulmonary Grip",
            [4] = "Strangulate",
            [5] = "Drown",
            [6] = "Stifle",
            [7] = "Suffocation",
            [8] = "Constrict",
            [9] = "Smother",
            [10] = "Strangling Air",
            [11] = "Thin Air",
            [12] = "Arcane Noose",
            [13] = "Strangle",
            [14] = "Asphyxiate",
            [15] = "Gasping Embrace",
            [16] = "Suffocate",
            [17] = "Choke",
            [18] = "Suffocating Sphere",
            [19] = "Shallow Breath",
        },
        ['ManaDot'] = {
            -- DoT 2 --  >= LVL70
            [1] = "Mind Whirl",
            [2] = "Mind Vortex",
            [3] = "Mind Coil",
            [4] = "Mind Tempest",
            [5] = "Mind Storm",
            [6] = "Mind Squall",
            [7] = "Mind Spiral",
            [8] = "Mind Helix",
            [9] = "Mind Twist",
            [10] = "Mind Oscillate",
            [11] = "Mind Phobiate",
            [12] = "Mind Shatter",
        },
        ['DebuffDot'] = {
            ---DoT 3 -- >= LVL89
            [1] = "Dismaying Constriction",
            [2] = "Perplexing Constriction",
            [3] = "Deceiving Constriction",
            [4] = "Deluding Constriction",
            [5] = "Bewildering Constriction",
            [6] = "Confounding Constriction",
            [7] = "Confusing Constriction",
            [8] = "Baffling Constriction",            
        },
        ['NukeSpell'] = {
            --- Nuke 1 -- >= LVL7
            [1] = "Mindrend",
            [2] = "Mindreap",
            [3] = "Mindrift",
            [4] = "Mindslash",
            [5] = "Mindsunder",
            [6] = "Mindcleave",
            [7] = "Mindscythe",
            [8] = "Mindblade",
            [9] = "Spectral Assault",
            [10] = "Polychaotic Assault",
            [11] = "Multichromatic Assault",
            [12] = "Polychromatic Assault",
            [13] = "Colored Chaos",
            [14] = "Psychosis",
            [15] = "Madness of Ikkibi",
            [16] = "Insanity",
            [17] = "Dementing Visions",
            [18] = "Dementia",
            [19] = "Discordant Mind",
            [20] = "Anarchy",
            [21] = "Chaos Flux",
            [22] = "Sanity Warp",
            [23] = "Chaotic Feedback",
            [24] = "Chromarcana",
            [25] = "Ancient: Neurosis",
            [26] = "Ancient: Chaos Madness",
            [27] = "Ancient: Chaotic Visions",
        },
        ['RuneNuke'] = {
            --- RUNE - Nuke Fast >=LVL86
            [1] = "Chromatic Spike",
            [2] = "Chromatic Flare",
            [3] = "Chromatic Stab",
            [4] = "Chromatic Flicker",
            [5] = "Chromatic Blink",
            [6] = "Chromatic Percussion",
            [7] = "Chromatic Flash",
            [8] = "Chromatic Jab",
        },
        ['ManaNuke'] = {
            --- Mana Drain Nuke - Fast -- >=LVL96
            [1] = "Psychological Appropriation",
            [2] = "Ideological Appropriation",
            [3] = "Psychic Appropriation",
            [4] = "Intellectual Appropriation",
            [5] = "Mental Appropriation",
            [6] = "Cognitive Appropriation",
        },
        ['ChromaNuke'] = {
            --- Chromatic Lowest Nuke - Normal -- >=LVL73
            [1] = "Polycascading Assault",
            [2] = "Polyfluorescent Assault",
            [3] = "Polyrefractive Assault",
            [4] = "Phantasmal Assault",
            [5] = "Arcane Assault",
            [6] = "Spectral Assault",
            [7] = "Polychaotic Assault",
            [8] = "Multichromatic Assault",
            [9] = "Polychromatic Assault",            
        },
        ['CripSlowSpell'] = {
            --- Slow Cripple Combo Spell - Beginning @ Level 88
            [1] = "Constraining Coil",
            [2] = "Constraining Helix",
            [3] = "Undermining Helix",
            [4] = "Diminishing Helix",
            [5] = "Attenuating Helix",
            [6] = "Curtailing Helix",
            [7] = "Inhibiting Helix",
        },
        ['PetSpell'] = {
            [1] = "Flariton's Animation",
            [2] = "Constance's Animation",
            [3] = "Omica's Animation",
            [4] = "Nureya's Animation",
            [5] = "Gordianus' Animation",
            [6] = "Xorlex's Animation",
            [7] = "Seronvall's Animation",
            [8] = "Novak's Animation",
            [9] = "Yozan's Animation",
            [10] = "Erradien's Animation",
            [11] = "Ellowind's Animation",
            [12] = "Salik's Animation",
            [13] = "Aeldorb's Animation",
            [14] = "Zumaik's Animation",
            [15] = "Kintaz's Animation",
            [16] = "Yegoreff's Animation",
            [17] = "Aanya's Animation",
            [18] = "Boltran's Animation",
            [19] = "Uleen's Animation",
            [20] = "Sagar's Animation",
            [21] = "Sisna's Animation",
            [22] = "Shalee's Animation",
            [23] = "Kilan's Animation",
            [24] = "Mircyl's Animation",
            [25] = "Juli's Animation",
            [26] = "Pendril's Animation",
        },
        ['PetBuffSpell'] = {
            ---Pet Buff Spell * Var Name: PetBuffSpell string outer
            [1] = "Speed of Margator",
            [2] = "Speed of Vallon",
            [3] = "Visions of Grandeur",
            [4] = "Wondrous Rapidity",
            [5] = "Aanya's Quickening",
            [6] = "Swift Like the Wind",
            [7] = "Celerity",
            [8] = "Augmentation",
            [9] = "Alacrity",
            [10] = "Quickness",
            [11] = "Infused Minion",
            [12] = "Empowered Minion",
            [13] = "Invigorated Minion",
            --- Speed of the Brood won't take effect properly on pets. Unless u Purchase the AA
        },
        ['MezAESpell'] = {
            ---AE Mez * Var Name:,string outer
            [1] = "Neutralizing Wave",
            [2] = "Perplexing Wave",
            [3] = "Deadening Wave",
            [4] = "Slackening Wave",
            [5] = "Peaceful Wave",
            [6] = "Serene Wave",
            [7] = "Ensorcelling Wave",
            [8] = "Quelling Wave",
            [9] = "Wake of Subdual",
            [10] = "Wake of Felicity",
            [11] = "Bliss of the Nihil",
            [12] = "Fascination",
            [13] = "Mesmerization",
            [14] = "Bewildering Wave",
            [15] = "Stupefying Wave",
        },
        ['MezAESpellFast'] = {
            [1] = "Vexing Glance",
            [2] = "Confounding Glance",
            [3] = "Neutralizing Glance",
            [4] = "Perplexing Glance",
            [5] = "Slackening Glance",
        },
        ['MezPBAESpell'] = {
            [1] = "Neutralize",
            [2] = "Perplex",
            [3] = "Bafflement",
            [4] = "Disorientation",
            [5] = "Confusion",
            [6] = "Serenity",
            [7] = "Docility",
            [8] = "Visions of Kirathas",
            [9] = "Dreams of Veldyn",
            [10] = "Circle of Dreams",
            [11] = "Word of Morell",
            [12] = "Entrancing Lights",
            [13] = "Bewilderment",
            [14] = "Wonderment",
        },
        ['MezSpell'] = {
            [1] = "Deceive",
            [2] = "Delude",
            [3] = "Bewilder",
            [4] = "Confound",
            [5] = "Mislead",
            [6] = "Baffle",
            [7] = "Befuddle",
            [8] = "Mystify",
            [9] = "Bewilderment",
            [10] = "Euphoria",
            [11] = "Felicity",
            [12] = "Bliss",
            [13] = "Sleep",
            [14] = "Apathy",
            [15] = "Glamour of Kintaz",
            [16] = "Enthrall",
            [17] = "Mesmerize",
        },
        ['MezSpellFast'] = {
            [1] = "Deceiving Flash",
            [2] = "Deluding Flash",
            [3] = "Bewildering Flash",
            [4] = "Confounding Flash",
            [5] = "Misleading Flash",
            [6] = "Baffling Flash",
            [7] = "Befuddling Flash",
            [8] = "Mystifying Flash",
            [9] = "Perplexing Flash",
            [10] = "Addling Flash",
            [11] = "Flummoxing Flash",
        },
        ['BlurSpell'] = {
            [1] = "Memory Flux",
            [2] = "Reoccurring Amnesia",
            [3] = "Memory Blur",
        },
        ['AEBlurSpell'] = {
            [1] = "Blanket of Forgetfulness",
            [2] = "Mind Wipe",
        },
        ['CalmSpell'] = {
            ---Calm Spell -- >= LVL1
            [1] = "Docile Mind",
            [2] = "Still Mind",
            [3] = "Serene Mind",
            [4] = "Mollified Mind",
            [5] = "Pacified Mind",
            [6] = "Quiescent Mind",
            [7] = "Halcyon Mind",
            [8] = "Bucolic Mind",
            [9] = "Hushed Mind",
            [10] = "Silent Mind",
            [11] = "Quiet Mind",
            [12] = "Placate",
            [13] = "Pacification",
            [14] = "Pacify",
            [15] = "Calm",
            [16] = "Soothe",
            [17] = "Lull",
        },
        ['FearSpell'] = {
            ---Fear Spell * Var Name:, string outer >= LVL3
            [1] = "Anxiety Attack",
            [2] = "Jitterskin",
            [3] = "Phobia",
            [4] = "Trepidation",
            [5] = "Invoke Fear",
            [6] = "Chase the Moon",
            [7] = "Fear",
        },
        ['RootSpell'] = {
            [1] = "Greater Fetter",
            [2] = "Fetter",
            [3] = "Paralyzing Earth",
            [4] = "Immobilize",
            [5] = "Instill",
            [6] = "Root",
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

