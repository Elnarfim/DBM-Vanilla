if not DBM:IsSeasonal("SeasonOfDiscovery") then return end--If not SoM/SoD, these two bosses load separately
local mod	= DBM:NewMod("EbonrocandFlamegor", "DBM-Raids-Vanilla", 5)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(14601, 11981)
mod:SetEncounterID(614, 615, 2566)
mod:SetModelID(6377)
mod:SetZone(469)

mod:RegisterCombat("combat")
mod:SetBossHPInfoToHighest()

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 22539",
	"SPELL_CAST_SUCCESS 23340 23342 368515 368521 368941 369080 369105 369103",
	"SPELL_AURA_APPLIED 23340 23342 368515 368521 467732 467764",
	"SPELL_AURA_APPLIED_DOSE 368515 368521",
	"SPELL_AURA_REMOVED 23340 23342"
)

--LEGACY NOTES FROM Season of Mastery, which had original version of This revised fight
--Changes from non SoM (besides bosses being linked together)
--Wing buffet changed from channeled to instant cast
--Shadow of Ebonroc and Frenzy are spell linked (always cast at same time)
--Shadow flame and Wing Buffet also spell linked, always cast when other drake casts it
--All CDs changed to ~25
--[[
(ability.id = 23339 or ability.id = 22539) and type = "begincast"
 or (ability.id = 368942 or ability.id = 23342 or ability.id = 369103 or ability.id = 369105 or ability.id = 23340 or ability.id = 368515 or ability.id = 368521) and type = "cast"
--]]
--Both


--[[
-- Flamegor Wing Buffet: 368941 and 369080, 368941 has _START but 0 cast time
-- Ebonroc Wing Buffet: 369105 and 369103, neither has _START events
-- Just triggering on all of them with a spam filter
"Wing Buffet-368941-npc:14601-00007DABF1 = pull:42.6, 25.9, 77.7, 25.9, 25.8, 26.0, 25.9, 25.9, 25.9",
"Wing Buffet-369080-npc:11981-00007DABF1 = pull:42.6, 25.9, 77.7, 25.9, 25.8, 26.0, 25.9, 25.9, 25.9",
"Wing Buffet-369103-npc:14601-00007DABF1 = pull:40.1, 25.9, 25.9, 25.9, 25.9, 25.9, 25.9, 26.0, 25.9, 25.9, 25.9",
"Wing Buffet-369105-npc:11981-00007DABF1 = pull:40.1, 25.9, 25.9, 25.9, 25.9, 25.9, 25.9, 26.0, 25.9, 25.9, 25.9",
]]

mod:AddTimerLine(DBM_COMMON_L.BOTH)
local warnWingBuffet		= mod:NewSpellAnnounce(368941, 2)
local warnShadowFlame		= mod:NewCastAnnounce(22539, 2)

local specWarnStop			= mod:NewSpecialWarningSpell(467732, nil, nil, nil, 2, 2)
local specWarnGo			= mod:NewSpecialWarningSpell(467764, nil, nil, nil, 2, 2)

local timerWingBuffet		= mod:NewNextTimer(25.9, 368941, nil, nil, nil, 2)
local specWarnWingBuffet	= mod:NewSpecialWarningSoon(368941, "Tank")
local timerShadowFlameCD	= mod:NewCDTimer(25, 22539)--25-32
local TimerBrandCD			= mod:NewTimer(13, "TimerBrandCD", 368521, nil, nil, 3)
local timerStop				= mod:NewCDTimer(20, 467732, nil, nil, nil, 5) -- TODO: 20 seconds is probably way off but a reasonable lower bound
local timerGo				= mod:NewCDTimer(20, 467764, nil, nil, nil, 5)

--Ebonroc
mod:AddTimerLine(L.Ebonroc)
local warnShadow			= mod:NewTargetNoFilterAnnounce(23340, 4, nil, "Tank|Healer", 2)

local specWarnShadowYou		= mod:NewSpecialWarningYou(23340, nil, nil, nil, 1, 2)
local specWarnShadow		= mod:NewSpecialWarningTaunt(23340, nil, nil, nil, 1, 2)
local specWarnBrandofShadow	= mod:NewSpecialWarningStack(368515, nil, 4, nil, nil, 1, 6)

local timerShadowCD			= mod:NewVarTimer("v16.2-26", 23340, nil, "Tank|Healer", 3, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerShadow			= mod:NewTargetTimer(8, 23340, nil, "Tank|Healer", 3, 5, nil, DBM_COMMON_L.TANK_ICON)

--Flamegore
mod:AddTimerLine(L.Flamegore)
local warnFrenzy			= mod:NewSpellAnnounce(23342, 3, nil, "Tank|RemoveEnrage|Healer", 5)

local specWarnFrenzy		= mod:NewSpecialWarningDispel(23342, "RemoveEnrage", nil, nil, 1, 6)
local specWarnBrandofFlame	= mod:NewSpecialWarningStack(368521, nil, 4, nil, nil, 1, 6)

local timerFrenzyCD			= mod:NewVarTimer("v16.2-26", 23342, nil, "Tank|RemoveEnrage|Healer", nil, 5, nil, DBM_COMMON_L.ENRAGE_ICON)local timerFrenzy	 		= mod:NewBuffActiveTimer(10, 23342, nil, "Tank|RemoveEnrage|Healer", nil, 5, nil, DBM_COMMON_L.ENRAGE_ICON)

-- Polyfill because I don't feel like this justifies a forced core update
local function isBlackEssenceEnabled()
	if mod.IsBwlBlackEssenceEnabled then
		return mod:IsBwlBlackEssenceEnabled()
	else
		return DBM:UnitDebuff("player", 467047) ~= nil
	end
end

function mod:OnCombatStart(delay)
	--Both
	TimerBrandCD:Start(15.8-delay)
	if isBlackEssenceEnabled() then
		timerStop:Start(24 - delay)
	end
	timerShadowFlameCD:Start(29-delay)--29-50, yep, classic for you
	timerWingBuffet:Start(40-delay)--40-42, better than shadow flame
	specWarnWingBuffet:Schedule(36)
	--Ebon
	timerShadowCD:Start()
	--Flame
	timerFrenzyCD:Start()
end


function mod:SPELL_CAST_START(args)--did not see ebon use any of these abilities
	if args:IsSpell(22539) and self:AntiSpam(3, 1) then
		warnShadowFlame:Show()
		timerShadowFlameCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(23342) then
		if self.Options.SpecWarn23342dispel then
			specWarnFrenzy:Show(args.sourceName)
			specWarnFrenzy:Play("enrage")
		else
			warnFrenzy:Show()
		end
		timerFrenzyCD:Start()
	elseif args:IsSpell(23340) then
		timerShadowCD:Start()
	elseif args:IsSpell(368515, 368521) and self:AntiSpam(3, 3) then
		TimerBrandCD:Start()
	elseif args:IsSpell(368941, 369080, 369105, 369103) and self:AntiSpam(3, "WingBuffet") then
		warnWingBuffet:Show()
		timerWingBuffet:Start()
		specWarnWingBuffet:Schedule(21)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(23342) then
		timerFrenzy:Start()
	elseif args:IsSpell(23340) then
		if args:IsPlayer() then
			specWarnShadowYou:Show()
			specWarnShadowYou:Play("targetyou")
		else
			--Can't use GetNumAliveTanks in classic, rip
			if self.Options.SpecWarn23340taunt and (self:IsTank() or not DBM.Options.FilterTankSpec) and self:CheckNearby(12, args.destName) then
				specWarnShadow:Show(args.destName)
				specWarnShadow:Play("tauntboss")
			else
				warnShadow:Show(args.destName)
			end
		end
		timerShadow:Start(args.destName)
	elseif args:IsSpell(368515) then
		local amount = args.amount or 1
		--if adds all dead, should be swapping at about 6-7. If they aren't all dead, it'll start throwing emergency warnings at 8+
		if amount >= 4 then
			if args:IsPlayer() then
				specWarnBrandofShadow:Show(amount)
				specWarnBrandofShadow:Play("stackhigh")
			end
		end
	elseif args:IsSpell(368521) then
		local amount = args.amount or 1
		--if adds all dead, should be swapping at about 6-7. If they aren't all dead, it'll start throwing emergency warnings at 8+
		if amount >= 4 then
			if args:IsPlayer() then
				specWarnBrandofFlame:Show(amount)
				specWarnBrandofFlame:Play("stackhigh")
			end
		end
	elseif args:IsSpell(467732) and args:IsPlayer() then
		specWarnStop:Show()
		specWarnStop:Play("stopmove")
		if timerGo then
			timerGo:Start()
		end
	elseif args:IsSpell(467764) and args:IsPlayer() then
		specWarnGo:Show()
		specWarnGo:Play("justrun")
		if timerStop then
			timerStop:Start()
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)--did not see ebon use any of these abilities
	if args.spellId == 23342 then
		timerFrenzy:Stop()
	elseif args.spellId == 23340 then
		timerShadow:Stop(args.destName)
	end
end

