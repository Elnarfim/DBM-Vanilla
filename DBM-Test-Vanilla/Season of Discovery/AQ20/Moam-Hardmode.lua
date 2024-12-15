DBM.Test:DefineTest{
	name = "SoD/AQ20/Moam/Hardmode",
	gameVersion = "SeasonOfDiscovery",
	addon = "DBM-Raids-Vanilla",
	mod = "Moam",
	instanceInfo = {name = "Ruins of Ahn'Qiraj", instanceType = "raid", difficultyID = 185, difficultyName = "20 Player", difficultyModifier = 0, maxPlayers = 20, dynamicDifficulty = 0, isDynamic = false, instanceID = 509, instanceGroupSize = 20, lfgDungeonID = nil},
	players = {
		{"Tank1",   "Player-1-00000004", class = "WARRIOR"},
		{"Healer1", "Player-1-00000007", class = "SHAMAN", logRecorder = true},
		{"Healer2", "Player-1-00000011", class = "DRUID"},
		{"Dps1",    "Player-1-00000001", class = "HUNTER"},
		{"Dps2",    "Player-1-00000002", class = "WARLOCK"},
		{"Dps3",    "Player-1-00000003", class = "PRIEST"},
		{"Dps4",    "Player-1-00000005", class = "ROGUE"},
		{"Dps5",    "Player-1-00000006", class = "SHAMAN"},
		{"Dps6",    "Player-1-00000008", class = "ROGUE"},
		{"Dps7",    "Player-1-00000009", class = "WARLOCK"},
		{"Dps8",    "Player-1-00000010", class = "SHAMAN"}
	},
	perspective = "Healer1",
	--@strip-from-release@
	-- This file contains a compressed version of the log at the end that is used in release builds.
	-- Avoid editing this log by hand, but if you must run <TODO> to keep the compressed log in sync.
	log = {
		{0.00, "ENCOUNTER_START", 720, "Moam", 185, 20},
		{0.00, "GetInstanceInfo()", "Ruins of Ahn'Qiraj", "raid", 185, "20 Player", 20, 0, false, 509, 20, nil},
		{0.01, "IsEncounterInProgress()", true},
		{0.23, "CHAT_MSG_MONSTER_EMOTE", "%s senses your fear.", "Moam", "", "", "Tank1", "", 0, 0, "", 0, 1232, nil, 0, false, false, false, false},
		{0.29, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CREATE", "Player-1-00000001", "Dps1", 0x510, 0x0, "GameObject-0-1-509-1-164877-0000000004", "Freezing Trap III", 0x0, 0x0, 409519, "Freezing Trap", 0x0, nil, nil},
		{1.14, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Creature-0-1-509-1-15168-00000000F4", "Vile Scarab", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1604, "Dazed", 0x0, "DEBUFF", nil},
		{1.15, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15168-00000000F4", "Vile Scarab", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 174, -1, 0x0, nil, nil},
		{1.63, "PLAYER_REGEN_DISABLED", "+Entering combat!"},
		{3.21, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1297, -1, 0x0, nil, 124},
		{4.41, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "DODGE", false, 0x0, nil, nil},
		{6.42, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "MISS", false, 0x0, nil, nil},
		{6.47, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{6.47, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{6.47, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{6.47, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{6.47, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{6.47, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{8.08, "UNIT_TARGET", "nameplate1", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{8.08, "UNIT_TARGET", "target", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{8.70, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "DODGE", false, 0x0, nil, nil},
		{9.70, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1149, -1, 0x0, nil, 122},
		{11.32, "UNIT_SPELLCAST_SUCCEEDED", "nameplate1", "Cast-3-1-509-2-15550-0000000136", 15550, "Moam", 90.4, 9.2, "Tank1"},
		{11.32, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-15550-0000000136", 15550, "Moam", 90.4, 9.2, "Tank1"},
		{11.32, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CAST_SUCCESS", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "", nil, 0x0, 0x0, 15550, "Trample", 0x0, nil, nil},
		{11.32, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "", nil, 0x0, 0x0, 15550, "Trample", 0x0, nil, nil},
		{12.10, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1165, -1, 0x0, nil, 122},
		{12.94, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{12.94, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{12.94, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{12.94, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{12.94, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{12.94, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{12.94, "UNIT_SPELLCAST_SUCCEEDED", "nameplate1", "Cast-3-1-509-2-1216500-0000000088", 1216500, "Moam", 86.8, 9.2, "Tank1"},
		{12.94, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-1216500-0000000088", 1216500, "Moam", 86.8, 9.2, "Tank1"},
		{12.94, "UNIT_TARGET", "nameplate1", "Moam", "Target: Dps7", "TargetOfTarget: Moam"},
		{12.94, "UNIT_TARGET", "target", "Moam", "Target: Dps7", "TargetOfTarget: Moam"},
		{14.51, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "DODGE", false, 0x0, nil, nil},
		{14.56, "UNIT_TARGET", "nameplate1", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{14.56, "UNIT_TARGET", "target", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{14.92, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CREATE", "Player-1-00000001", "Dps1", 0x510, 0x0, "GameObject-0-1-509-1-164880-0000000010", "Explosive Trap III", 0x0, 0x0, 409535, "Explosive Trap", 0x0, nil, nil},
		{16.91, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "PARRY", false, 0x0, nil, nil},
		{19.33, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 882, -1, 0x0, nil, 129},
		{19.41, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{19.41, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{19.41, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{19.41, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{19.41, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{19.41, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{19.41, "UNIT_SPELLCAST_SUCCEEDED", "nameplate1", "Cast-3-1-509-2-1216500-000000014B", 1216500, "Moam", 70.1, 18.3, "Tank1"},
		{19.41, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-1216500-000000014B", 1216500, "Moam", 70.1, 18.3, "Tank1"},
		{19.41, "UNIT_TARGET", "nameplate1", "Moam", "Target: Dps7", "TargetOfTarget: Moam"},
		{19.41, "UNIT_TARGET", "target", "Moam", "Target: Dps7", "TargetOfTarget: Moam"},
		{19.51, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CREATE", "Player-1-00000001", "Dps1", 0x510, 0x0, "GameObject-0-1-509-1-164877-0000000013", "Freezing Trap III", 0x0, 0x0, 409519, "Freezing Trap", 0x0, nil, nil},
		{21.04, "UNIT_SPELLCAST_SUCCEEDED", "nameplate1", "Cast-3-1-509-2-18941-000000004C", 18941, "Moam", 65.7, 27.5, "Dps7"},
		{21.04, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-18941-000000004C", 18941, "Moam", 65.7, 27.5, "Dps7"},
		{21.05, "UNIT_TARGET", "nameplate1", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{21.05, "UNIT_TARGET", "target", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{21.05, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "MISS", false, 0x0, nil, nil},
		{22.66, "UNIT_SPELLCAST_SUCCEEDED", "nameplate1", "Cast-3-1-509-2-15550-000000006D", 15550, "Moam", 62.6, 27.5, "Tank1"},
		{22.66, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-15550-000000006D", 15550, "Moam", 62.6, 27.5, "Tank1"},
		{22.66, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CAST_SUCCESS", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "", nil, 0x0, 0x0, 15550, "Trample", 0x0, nil, nil},
		{22.66, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "", nil, 0x0, 0x0, 15550, "Trample", 0x0, nil, nil},
		{23.45, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1612, -1, 0x0, nil, nil},
		{24.45, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CREATE", "Player-1-00000001", "Dps1", 0x510, 0x0, "GameObject-0-1-509-1-164880-0000000017", "Explosive Trap III", 0x0, 0x0, 409535, "Explosive Trap", 0x0, nil, nil},
		{25.85, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1126, -1, 0x0, nil, 127},
		{25.88, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{25.88, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{25.88, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{25.88, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{25.88, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{25.88, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{27.18, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "MISS", false, 0x0, nil, nil},
		{28.97, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CREATE", "Player-1-00000001", "Dps1", 0x510, 0x0, "GameObject-0-1-509-1-164877-0000000019", "Freezing Trap III", 0x0, 0x0, 409519, "Freezing Trap", 0x0, nil, nil},
		{29.60, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "DODGE", false, 0x0, nil, nil},
		{30.75, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1052, -1, 0x0, nil, 127},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000008", "Dps6", 0x510, 0x0, "Player-1-00000008", "Dps6", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000010", "Dps8", 0x510, 0x0, "Player-1-00000010", "Dps8", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000005", "Dps4", 0x510, 0x0, "Player-1-00000005", "Dps4", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000009", "Dps7", 0x510, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000003", "Dps3", 0x510, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000002", "Dps2", 0x510, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000006", "Dps5", 0x510, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000004", "Tank1", 0x510, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000007", "Healer1", 0x510, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000011", "Healer2", 0x510, 0x0, "Player-1-00000011", "Healer2", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{31.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Dps1", 0x510, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{32.34, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{32.34, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{32.34, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{32.34, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{32.35, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{32.35, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{32.35, "UNIT_SPELLCAST_SUCCEEDED", "nameplate1", "Cast-3-1-509-2-1216500-0000000111", 1216500, "Moam", 39.9, 36.6, "Tank1"},
		{32.35, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-1216500-0000000111", 1216500, "Moam", 39.9, 36.6, "Tank1"},
		{32.35, "UNIT_TARGET", "nameplate1", "Moam", "Target: Dps7", "TargetOfTarget: Moam"},
		{32.35, "UNIT_TARGET", "target", "Moam", "Target: Dps7", "TargetOfTarget: Moam"},
		{33.15, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "DODGE", false, 0x0, nil, nil},
		{33.54, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CREATE", "Player-1-00000001", "Dps1", 0x510, 0x0, "GameObject-0-1-509-1-164880-000000001B", "Explosive Trap III", 0x0, 0x0, 409535, "Explosive Trap", 0x0, nil, nil},
		{33.96, "UNIT_SPELLCAST_SUCCEEDED", "nameplate1", "Cast-3-1-509-2-15550-000000012F", 15550, "Moam", 35.3, 45.8, "Dps7"},
		{33.96, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-15550-000000012F", 15550, "Moam", 35.3, 45.8, "Dps7"},
		{33.96, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CAST_SUCCESS", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "", nil, 0x0, 0x0, 15550, "Trample", 0x0, nil, nil},
		{33.96, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 15550, "Trample", 0x0, nil, nil},
		{33.96, "UNIT_TARGET", "nameplate1", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{33.96, "UNIT_TARGET", "target", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{33.98, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "", nil, 0x0, 0x0, 15550, "Trample", 0x0, nil, nil},
		{34.41, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "MISS", false, 0x0, nil, nil},
		{36.81, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1259, -1, 0x0, nil, nil},
		{38.81, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{38.81, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{38.81, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{38.81, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{38.81, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{38.81, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{38.88, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CREATE", "Player-1-00000001", "Dps1", 0x510, 0x0, "GameObject-0-1-509-1-164877-000000001D", "Freezing Trap III", 0x0, 0x0, 409519, "Freezing Trap", 0x0, nil, nil},
		{39.21, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "PARRY", false, 0x0, nil, nil},
		{40.43, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, "DODGE", false, 0x0, nil, nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000003", "Dps3", 0x510, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000009", "Dps7", 0x510, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000010", "Dps8", 0x510, 0x0, "Player-1-00000010", "Dps8", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000002", "Dps2", 0x510, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000005", "Dps4", 0x510, 0x0, "Player-1-00000005", "Dps4", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000008", "Dps6", 0x510, 0x0, "Player-1-00000008", "Dps6", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000006", "Dps5", 0x510, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000004", "Tank1", 0x510, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000007", "Healer1", 0x510, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Dps1", 0x510, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{41.01, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000011", "Healer2", 0x510, 0x0, "Player-1-00000011", "Healer2", 0x510, 0x0, 1214956, "Curse of Despair", 0x0, "DEBUFF", nil},
		{42.45, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_MISSED", "Creature-0-1-509-1-15168-00000000F4", "Vile Scarab", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, "MISS", false, 0x0, nil, nil},
		{42.83, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1357, -1, 0x0, nil, nil},
		{44.45, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15168-00000000F4", "Vile Scarab", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 254, -1, 0x0, nil, nil},
		{44.98, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_CREATE", "Player-1-00000001", "Dps1", 0x510, 0x0, "GameObject-0-1-509-1-164880-0000000020", "Explosive Trap III", 0x0, 0x0, 409535, "Explosive Trap", 0x0, nil, nil},
		{45.21, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000004", "Tank1", 0x510, 0x0, 1205, -1, 0x0, nil, nil},
		{45.28, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000001", "Dps1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{45.28, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{45.28, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000003", "Dps3", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{45.28, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000006", "Dps5", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{45.28, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000007", "Healer1", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{45.28, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_LEECH", "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, "Player-1-00000009", "Dps7", 0x510, 0x0, 1216501, "Drain Mana", 0x0, 200, 0},
		{45.28, "UNIT_SPELLCAST_SUCCEEDED", "nameplate2", "Cast-3-1-509-2-1216500-0000000112", 1216500, "Moam", 5.8, 55.0, "Tank1"},
		{45.28, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-1216500-0000000112", 1216500, "Moam", 5.8, 55.0, "Tank1"},
		{45.28, "UNIT_TARGET", "nameplate2", "Moam", "Target: Dps7", "TargetOfTarget: Moam"},
		{45.28, "UNIT_TARGET", "target", "Moam", "Target: Dps7", "TargetOfTarget: Moam"},
		{46.45, "COMBAT_LOG_EVENT_UNFILTERED", "SWING_DAMAGE", "Creature-0-1-509-1-15168-00000000F4", "Vile Scarab", 0xa48, 0x0, "Player-1-00000002", "Dps2", 0x510, 0x0, 271, -1, 0x0, nil, nil},
		{46.84, "UNIT_SPELLCAST_SUCCEEDED", "nameplate2", "Cast-3-1-509-2-27631-00000000D4", 27631, "Moam", 0.4, 64.1, "Dps7"},
		{46.84, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-27631-00000000D4", 27631, "Moam", 0.4, 64.1, "Dps7"},
		{46.84, "UNIT_SPELLCAST_SUCCEEDED", "nameplate2", "Cast-3-1-509-2-1218577-00000000DC", 1218577, "Moam", 0.4, 64.1, "Dps7"},
		{46.84, "UNIT_SPELLCAST_SUCCEEDED", "target", "Cast-3-1-509-2-1218577-00000000DC", 1218577, "Moam", 0.4, 64.1, "Dps7"},
		{46.84, "COMBAT_LOG_EVENT_UNFILTERED", "UNIT_DIED", "", nil, 0x0, 0x0, "Creature-0-1-509-1-15340-0000000001", "Moam", 0xa48, 0x0, -1, false, 0x0, nil, nil},
		{46.84, "UNIT_TARGET", "nameplate2", "Moam", "Target: Tank1", "TargetOfTarget: Moam"},
		{46.86, "ENCOUNTER_END", 720, "Moam", 185, 20, 1},
		{46.86, "BOSS_KILL", 720, "Moam"}
	},--@end-strip-from-release@
	-- LibSerialize/LibDeflate encoded and compressed list of TestLogEntry. If an uncompressed log is specified it is used instead of the compressed version.
	compressedLog = "DMvtSTXXvyT0ufks2jskYXoX2Xu1X2srMl3Ll5ssN4krYD5pX8prs5IaeaMvsRmfTm5ILufjcOaPfkh6jd4AGM4tgj5qouKcy0dc9qBHrlqpKcmWWab9wBroe4wGcyeFOciiDMD2DND5ouI17bzR599EZmV5779MDfZ9(vTyEICP0LxPuD5QnQvpz16(dMQyhLBENjM)3XOnvw1E5B3TNs71uZ3EJoZnV20v3EZ2Dd0zJajB2(IlVPUsRu6kBU(DM42H5cuzlL3xvFEMMp6SZF5ClU7o)JSFXiJODI8DLBVwNTB3tvpF7k6DUUUA3UZn)7U3Xgn3I)vTp9Rg)nhr7LsNlz9gfRLTrXYLQHwrYflxxwBMZ3nqx12Dv7g497STEGnuv0zb(85RADL23G3hdJpg)fplZSnpxZZ38InFCUfF4TEN5E6dgr7uPlxmfmOfkNTH81KlvVXkLYKVam2YspOwf5cfAKUQCs4KmfEPhKpih(HpLKwxE)lZODHSk3uT8QTuxRxqoiGOCjG)Kxms8yXSqZXfrBQm6QQ7Sz7RhOUUIwG85ZZWCYFWI)Mh6ACM9ZT4tUcAlpcycTPXlIKRunzJQWT71KL0oxADvLEBRR6C2IYlg3EYYe5(xBZTuduBnfDLv39Zyahd88WLQ06vLu2rDDMvLKtTsMmWmXt2a9aNQhu7hNVu2gsjlMmRm4fbZqC7Rh)0JWapU2FgJZlTJxPqY3gM(RkNvUudP81sMQaCDn1cYOdq0gzTo3CvLEZU3ZZKBPN7lqU9bGjaNyalDHiCK8epWhCM9MVJaghUuMzz4sz2)7JZT0uWm0v0UN9cVy(A1KLaVIH7GtzGUQuzPSYnzGWFzJvbeo40UXKc5ytM7njedC3nZo)DWe3hN1lilNoNfACQ4KtFRN(jsqcD7afvARWS7rD7j4SM49UbcJimHnJbiW)pUkGCv4zYvrKRrFMCnMEovLTu15FM8obAIJ5Y1w5wkau2DR3jW9xPu(6nG1tYkx)tAdLpABP0tfE0)W6k6xxT3LdyiD1Mb)RL3WAyuThsyalSApddaFGGaw4X8Sg05317Xm4mnzmOJNZgXjCJ4rzruRNE3ClDbm1s7KgRsdUq6K1G)VvsNwwwcYYUK2ztR0TxqbtwCyiloAuBwmVG4yV5Vh4RI)eCSrQCKeSHbJtcmGdecW7fXEJnkbJT2Nm11QzUI9DCMtW8YWaCkDyjJBQTL6zyC7SzXlt1C)EbeodozmNa6HJsYiNrYaDypVNdBhAbcNGcSzb)WHb25aV2Wa78GlmmWUiyUHb28Gx3fS7sqXbpENT)J3W8Ir5iLPIhh663Io)IlYgNCctIriqukqArGSa4saFpWIyJelawxMdbz1IgS6GJ(Q7T8)6dOZQH(eez(dNehsKsW1yHSvhbrSJpfaJZrnpdpGMxXj7wEoTPLFpTT60DZFIQ7Ux)H)PBdOATCFdsDoN3LB1kjRw9TnfIc1rDtM0l371IH4EZmg6KtOPvOoqYhfy0iFuGrJ8rbgnYhfy0iFuGrH8zHAiiF8rszXSIXXYxXpFCwbd2hjiHaVbnmTiyWCfrdUczmcNt4NJUJ0FC44koUOdVays89AatH2yrruUVAmJnMNIMXteXUHbxK0JL)7qRyXOSXQ4pCm2OGx3vecbUcfiWnq0J(LWN)IlbazmIaWAmVcPxTjAXk(5KtHdScpNOKz9BXWSIMRKXDfHqGFefigLPTanbim9AZUbfHki42jw3bu((pToucbbe3gWqCi6uWhdehlVbjWQ1e)Tpg(8rENQ1ZGuRFpIPNy46uqbgnXkfy0eRuGrtSsbgnXkfy9lwHP13GfDzYpNon6XvgnCC2eXgUKUtLtchkh4SCLp2kLt)UmvgvGJnwukN(jnos2FX(EbIKvQuip6I69FxT4O7QjIICkqAJn7V4FRnz6T17QIEtoj1UAkBQZaEjuibj9eaEouaIJcGmiJzaasd2bUOihIGCiliNxhmt625E3gX0aB2GBJyQKnJYTrmZWMG42OzYf)p9BetwS5mh82JN38QZOR7dYdElkbeZmSfiMgrCWLw4dH9U)Mdtgrbgnzefy0KruGrtgT0Lqfq)YdtgrbgLEEwOgMEE88w9ZesWMa(trwrJcUKGecCvAyArW4SNhzmspVL(LwLlPO4q2)ZOlvT7WPSDwonLJYPO18(OYmV3H3MHpCgZEicrzfQ4psu24g9ejrieOifigDqSanO2mp2beZxyG2BrJcVa6AMwGD2LLmMzxw8m)DgFZgWa7DbRDfHnc)aQGMBPuxh9(6sERT9BlbRTHOyPTrCGQekWOPsOaJMkHcmAQekWOPsOaJsZM0AgVu3Wr6C2orYD7K031In0Fk)YgPCPyO7z9i6K)9RbhF6bv5fBCa1SXgX9f80EaBCa1SXgXni80NaBe3VYrBlNghq1ESXbuThBCav7XgPx5EFyg8NzD5HPnl63FTFyAwobPRU5xzZC7Jz(YTW3217RKxhFNUmji3eZva(6xWeWp1s8neeghvPcZ5Okfko2eM(wj1VQPgmJ1NB4G1GuGrtdsbgnnify00GuGrtdsbgLovwO4iFSQWhElRWMTJocSKChJMvzC8bGQ62AlI1falB3MImgPnv2bXa(2jHhmWPj7nWnZ5al7P)s4yIcK35skYy34)GweOVcLFXiS8gTxibieO2HGyzAjI4rDujsk9jN(JM6GNL6uGSN)NJaAIBB814KGxG13XyEbMPaVYlc8D8D)myBLtpYPAEguhklW4miSB0oWXAJUS(V(HK)qgYLK8he47otm)rElB73ov5A1AC18fkGS9)(d",
	duration = 46.86,
}
