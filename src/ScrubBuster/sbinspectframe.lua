---------------UI frame stuff----------------------------
InspectModelFrame:SetHeight(215);


--Skinner fix
local skinnerEnabled = false;

local ClassNameToID = {
	"WARRIOR",
	"PALADIN",
	"HUNTER",
	"ROGUE",
	"PRIEST",
	"SHAMAN",
	"MAGE",
	"WARLOCK",
	"DRUID",
	["WARRIOR"] = 1,
	["PALADIN"] = 2,
	["HUNTER"] = 3,
	["ROGUE"] = 4,
	["PRIEST"] = 5,
	["SHAMAN"] = 6,
	["MAGE"] = 7,
	["WARLOCK"] = 8,
	["DRUID"] = 9,
};

local ClassHasMana = {
	["WARRIOR"] = false,
	["PALADIN"] = true,
	["HUNTER"] = true,
	["ROGUE"] = false,
	["PRIEST"] = true,
	["SHAMAN"] = true,
	["MAGE"] = true,
	["WARLOCK"] = true,
	["DRUID"] = true,
};

SBInspectFrame_Specials = {
--This is the table that will contain all the currently selected specials that we want
--Stuff has been initialised here as nil for reference, but stuff that's inappropriate
--for the class shouldn't be selected (there's some sanity checking for that in the
--stats function too though)
	["quiverIAS"] = nil;
	["ammoDPS"] = nil;
	["warriorStance"] = nil;
	["druidForm"] = nil;
};

local statTooltipText = nil; --initialise the tooltip text variable for giggles
local statTooltipText2 = nil;
SBInspectFrame_LeftStatDropDownSelection = nil;
SBInspectFrame_RightStatDropDownSelection = nil;

function SBInspectFrame_OnEvent(self, event)
	if event == "UNIT_INVENTORY_CHANGED" then
		if arg1 == InspectFrame.unit then
			SBAmmoSlot_SelectedAmmo = nil;
			SBAmmoSlot_AmmoDone = false;
			SBAmmoSlot_SetAmmo(nil);
			SBAmmoSlot_SelectedQuiver = nil;
			SBAmmoSlot_QuiverDone = false;
			SBInspectFrame_UnitUpdated();
		end
		return;
	end
end

function SBInspectFrame_Show(unit)
	--Skinner fix
	if skinnerEnabled == false then
		skinnerEnabled = IsAddOnLoaded("Skinner");
	end
	if skinnerEnabled then
		if Skinner.initialized.InspectUI then
			ScrubBusterAttributesFrame:SetPoint("TOPLEFT", 58, -295);
			ScrubBusterResistanceFrame:SetPoint("TOPRIGHT", InspectPaperDollFrame, "TOPLEFT", 288, -54);
			InspectModelFrame:SetPoint("TOPLEFT", 65, -75);
			InspectMainHandSlot:SetPoint("TOPLEFT", InspectPaperDollFrame, "BOTTOMLEFT", 122, 65);
		end
	end
	skinnerEnabled = nil;

	--ScrubBuster_InspectStats = {}; --clear the inspect stats
	--DEFAULT_CHAT_FRAME:AddMessage("Show");
	SBInspectFrame_LeftStatDropDownSelection = nil;
	SBInspectFrame_RightStatDropDownSelection = nil;
	SBSpecialDropDown1_Selection = nil;
	SBInspectFrame_Specials = {}; --reset the specials
	SBAmmoSlot_SelectedAmmo = nil;
	SBAmmoSlot_SetAmmo(nil);
	SBAmmoSlot_AmmoDone = false;
	SBAmmoSlot_SelectedQuiver = nil;
	SBAmmoSlot_QuiverDone = false;
	
	--ScrubBuster.talentsTimeout = false;
	
	ScrubBuster:ScrubBust(unit);
end

function SBInspectFrame_UnitChanged()
	--DEFAULT_CHAT_FRAME:AddMessage("Change");
	SBInspectFrame_LeftStatDropDownSelection = nil;
	SBInspectFrame_RightStatDropDownSelection = nil;
	SBSpecialDropDown1_Selection = nil;
	SBInspectFrame_Specials = {};
	SBAmmoSlot_SelectedAmmo = nil;
	SBAmmoSlot_SetAmmo(nil);
	SBAmmoSlot_AmmoDone = false;
	SBAmmoSlot_SelectedQuiver = nil;
	SBAmmoSlot_QuiverDone = false;
	
	local unit = InspectFrame.unit;
	local _,class = UnitClass(unit);
	
	--Hide the stance dropdown if it's not needed
	if class == "WARRIOR" or class == "DRUID" then
		ScrubBusterSpecialDropDown1:Show();
	else
		ScrubBusterSpecialDropDown1:Hide();
	end
	
	--Hide the ammo slot for inappropriate classes
	local _,class = UnitClass(InspectFrame.unit);
	if class == "WARRIOR" or class == "ROGUE" or class == "HUNTER" then
		ScrubBusterAmmoSlot:Show();
	else
		ScrubBusterAmmoSlot:Hide();
	end
	
	--ScrubBuster.talentsTimeout = false;
	
	ScrubBuster:ScrubBust(unit);
end

function SBInspectFrame_UnitUpdated()
	--DEFAULT_CHAT_FRAME:AddMessage("Unit info updated");
	ScrubBuster:ScrubBust(InspectFrame.unit, true, SBInspectFrame_Specials);
end

function SBInspectFrame_Update()
--update the displayed stats from the currently stored stats
	--DEFAULT_CHAT_FRAME:AddMessage("Update");
	local unit = InspectFrame.unit;
	if not unit then return end
	local _, class = UnitClass(unit);
	local name = UnitName(unit);
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	
	if ScrubBuster.talentsTimeout then --show or hide the talents timeout warning
		ScrubBusterTalentTimeoutFrame:Show();
	else
		ScrubBusterTalentTimeoutFrame:Hide();
	end
	
	--Change the preselected tab of the stat dropdown menu according to inspected unit's class
	if not SBInspectFrame_LeftStatDropDownSelection or not SBInspectFrame_RightStatDropDownSelection then
		SBInspectFrame_LeftStatDropDownSelection = "PLAYERSTAT_BASE_STATS";
		SBStatFrameLeftDropDown_Initialize();
		UIDropDownMenu_SetSelectedValue(ScrubBusterStatFrameLeftDropDown, "PLAYERSTAT_BASE_STATS")
		if class == "MAGE" or class == "PRIEST" or class == "WARLOCK" or class == "DRUID" then
			SBInspectFrame_RightStatDropDownSelection = "PLAYERSTAT_SPELL_COMBAT";
			SBStatFrameRightDropDown_Initialize();
			UIDropDownMenu_SetSelectedValue(ScrubBusterStatFrameRightDropDown, "PLAYERSTAT_SPELL_COMBAT");
		elseif class == "HUNTER" then
			SBInspectFrame_RightStatDropDownSelection = "PLAYERSTAT_RANGED_COMBAT";
			SBStatFrameRightDropDown_Initialize();
			UIDropDownMenu_SetSelectedValue(ScrubBusterStatFrameRightDropDown, "PLAYERSTAT_RANGED_COMBAT");
		else
			SBInspectFrame_RightStatDropDownSelection = "PLAYERSTAT_MELEE_COMBAT";
			SBStatFrameRightDropDown_Initialize();
			UIDropDownMenu_SetSelectedValue(ScrubBusterStatFrameRightDropDown, "PLAYERSTAT_MELEE_COMBAT");
		end
	end
	
	--Guess ammo according to their ranged weapon and other stuff, then recalc the stats if needed
	if ScrubBuster["stats"][name]["weaponStats"]["ranged"]["isWeapon"] and not SBAmmoSlot_AmmoDone then
		local weaponType = ScrubBuster["stats"][name]["weaponStats"]["ranged"]["weaponType"][2];
		local iLvl = ScrubBuster["stats"][name]["weaponStats"]["ranged"]["iLvl"];
		if weaponType == "GUN" then
			local ammo;
			if level >= 70 then
				if iLvl >= 125 then
					ammo = 31735; --Timeless Shell
				else
					local fact = UnitFactionGroup(unit);
					if fact == "Alliance" then
						ammo = 32883; --Felbane Slugs
					else
						ammo = 32882; --Hellfire Shot
					end
				end
			elseif level >= 65 then
				ammo = 28061; --Ironbite Shell
			elseif level >= 55 then
				ammo = 28060; --Impact Shot
			elseif level >= 40 then
				ammo = 11284; --Accurate Slugs
			elseif level >= 25 then
				ammo = 3033; --Solid Shot
			elseif level >= 10 then
				ammo = 2519; --Heavy Shot
			else
				ammo = 2516; --Light Shot
			end
			SBAmmoSlot_SetAmmo(ammo);
			for _,v in ipairs(SBAmmoSlot_Ammunition) do
				if v["id"] == ammo then
					SBInspectFrame_Specials["ammoDPS"] = v["dps"];
					break;
				end
			end
			SBAmmoSlot_AmmoDone = true;
			ScrubBuster:ScrubBust(unit, true, SBInspectFrame_Specials); --recalculate the stats
			return; --stop updating for now, as we'll update when the stats are recalculated
			
		elseif weaponType == "BOW" or weaponType == "CROSSBOW" then
			local ammo;
			if level >= 70 then
				if iLvl >= 125 then
					ammo = 31737; --Timeless Arrow
				else
					ammo = 31949; --Warden's Arrow
				end
			elseif level >= 65 then
				ammo = 28056; --Blackflight Arrow
			elseif level >= 55 then
				ammo = 28053; --Wicked Arrow
			elseif level >= 40 then
				ammo = 11285; --Jagged Arrow
			elseif level >= 25 then
				ammo = 3030; --Razor Arrow
			elseif level >= 10 then
				ammo = 2515; --Sharp Arrow
			else
				ammo = 2512; --Rough Arrow
			end
			SBAmmoSlot_SetAmmo(ammo);
			for _,v in ipairs(SBAmmoSlot_Ammunition) do
				if v["id"] == ammo then
					SBInspectFrame_Specials["ammoDPS"] = v["dps"];
					break;
				end
			end
			SBAmmoSlot_AmmoDone = true;
			ScrubBuster:ScrubBust(unit, true, SBInspectFrame_Specials); --recalculate the stats
			return; --stop updating for now, as we'll update when the stats are recalculated
			
		else
			SBAmmoSlot_SetAmmo(nil);
			SBInspectFrame_Specials["ammoDPS"] = nil;
			SBAmmoSlot_AmmoDone = true;
		end
	end
	
	--Guess quiver according to the player's level, if they're a hunter
	local rangedWStats = ScrubBuster["stats"][name]["weaponStats"]["ranged"];
	if rangedWStats["isWeapon"] and class == "HUNTER" and not SBAmmoSlot_QuiverDone then
		local weaponType = rangedWStats["weaponType"][2];
		if weaponType == "GUN" then
			local quiver;
			if level >= 60 then
				quiver = 34099; --Knothide Ammo Pouch
			elseif level >= 40 then
				quiver = 8218; --Thick Leather Ammo Pouch
			elseif level >= 30 then
				quiver = 7372; --Heavy Leather Ammo Pouch
			else
				quiver = 2102; --Small Shot Pouch
			end
			for _,v in ipairs(SBAmmoSlot_Quivers) do
				if v["id"] == quiver then
					SBInspectFrame_Specials["quiverIAS"] = v["ias"];
					break;
				end
			end
			SBAmmoSlot_QuiverDone = true;
			ScrubBuster:ScrubBust(unit, true, SBInspectFrame_Specials);
			return;
			
		elseif weaponType == "BOW" or weaponType == "CROSSBOW" then
			local quiver;
			if level >= 60 then
				quiver = 34100; --Knothide Quiver
			elseif level >= 40 then
				quiver = 8217; --Quickdraw Quiver
			elseif level >= 30 then
				quiver = 7371; --Heavy Quiver
			else
				quiver = 2101; --Light Quiver
			end
			for _,v in ipairs(SBAmmoSlot_Quivers) do
				if v["id"] == quiver then
					SBInspectFrame_Specials["quiverIAS"] = v["ias"];
					break;
				end
			end
			SBAmmoSlot_QuiverDone = true;
			ScrubBuster:ScrubBust(unit, true, SBInspectFrame_Specials);
			return;
			
		else
			SBInspectFrame_Specials["quiverIAS"] = nil;
			SBAmmoSlot_QuiverDone = true;
		end
	end
	
	--Change the special stance dropdown selection according to unit class (or hide it)
	if class == "DRUID" then
		local _, _, _, _, moonkinRank = GetTalentInfo(1, 18, true);
		if moonkinRank > 0 then
			SBSpecialDropDown1_Selections = {
				"Caster Form",
				"Cat Form",
				"Bear Form",
				"Moonkin Form",
			};
		else
			SBSpecialDropDown1_Selections = {
				"Caster Form",
				"Cat Form",
				"Bear Form",
			};
		end
		ScrubBusterSpecialDropDown1:Show();
	elseif class == "WARRIOR" then
		SBSpecialDropDown1_Selections = {
			"Battle Stance",
			"Defensive Stance",
			"Berserker Stance",
		};
		ScrubBusterSpecialDropDown1:Show();
	else
		ScrubBusterSpecialDropDown1:Hide();
	end
	if not SBSpecialDropDown1_Selection then
		SBSpecialDropDown1_Selection = SBSpecialDropDown1_Selections[1];
		SBSpecialDropDown1_Initialize();
		UIDropDownMenu_SetSelectedValue(ScrubBusterSpecialDropDown1, SBSpecialDropDown1_Selection);
		--UIDropDownMenu_SetSelectedName(ScrubBusterSpecialDropDown1, SBSpecialDropDown1_Selection);
	end	
		
	
	--Do the actual updating
	SBInspectFrame_SetResistances();
	SBInspectFrame_UpdateStats();
	
end

function SBInspectFrame_OnHide()
	--DEFAULT_CHAT_FRAME:AddMessage("Hide");
end



--Stance selection dropdown

SBSpecialDropDown1_Selections = {
--initially we have no selections I guess, these will depend on class
};

SBSpecialDropDown1_Selection = nil;

function SBSpecialDropDown1_OnLoad()
	UIDropDownMenu_Initialize(this, SBSpecialDropDown1_Initialize);
	UIDropDownMenu_SetSelectedValue(this, SBSpecialDropDown1_Selection);
	UIDropDownMenu_SetWidth(120, this);
	UIDropDownMenu_JustifyText("LEFT", this);
end

function SBSpecialDropDown1_Initialize()
	local info = UIDropDownMenu_CreateInfo();
	local checked;
	for i=1, table.getn(SBSpecialDropDown1_Selections) do
		if SBSpecialDropDown1_Selections[i] == SBSpecialDropDown1_Selection then
			checked = 1;
		else
			checked = nil;
		end
		info.text = SBSpecialDropDown1_Selections[i];
		info.func = SBSpecialDropDown1_OnClick;
		info.value = SBSpecialDropDown1_Selections[i];
		info.checked = checked;
		info.owner = UIDROPDOWNMENU_OPEN_MENU;
		UIDropDownMenu_AddButton(info);
	end
end

function SBSpecialDropDown1_OnClick()
	UIDropDownMenu_SetSelectedValue(getglobal(this.owner), this.value);
	SBSpecialDropDown1_Selection = this.value;
	local unit = InspectFrame.unit;
	local _,class = UnitClass(unit)
	local value = this.value;
	
	if class == "DRUID" then
		if value == "Caster Form" then
			SBInspectFrame_Specials["druidForm"] = nil;
		elseif value == "Cat Form" then
			SBInspectFrame_Specials["druidForm"] = "cat";
		elseif value == "Bear Form" then
			SBInspectFrame_Specials["druidForm"] = "bear";
		elseif value == "Moonkin Form" then
			SBInspectFrame_Specials["druidForm"] = "moonkin";
		end
		ScrubBuster:ScrubBust(unit, true, SBInspectFrame_Specials);
		
	elseif class == "WARRIOR" then
		if value == "Battle Stance" then
			SBInspectFrame_Specials["warriorStance"] = "battle";
		elseif value == "Defensive Stance" then
			SBInspectFrame_Specials["warriorStance"] = "defensive";
		elseif value == "Berserker Stance" then
			SBInspectFrame_Specials["warriorStance"] = "berserker";
		end
		ScrubBuster:ScrubBust(unit, true, SBInspectFrame_Specials);
	end
end


--Ammo selection (ammo slot button)

SBAmmoSlot_Ammunition = {
--Different ammo selections we'll offer
--these have to be an array like this so we can maintain their order
	--Bullets
	{ ["id"] = 31735, ["type"] = "bullet", ["dps"] = 53 }, --Timeless Shell
	{ ["id"] = 34582, ["type"] = "bullet", ["dps"] = 46.5 }, --Mysterious Shell
	{ ["id"] = 23773, ["type"] = "bullet", ["dps"] = 43 }, --Adamantite Shells
	{ ["id"] = 32883, ["type"] = "bullet", ["dps"] = 37 }, --Felbane Slugs
	{ ["id"] = 32882, ["type"] = "bullet", ["dps"] = 37 }, --Hellfire Shot
	{ ["id"] = 30612, ["type"] = "bullet", ["dps"] = 34 }, --Halaani Grimshot
	{ ["id"] = 28061, ["type"] = "bullet", ["dps"] = 32 }, --Ironbite Shell
	{ ["id"] = 23772, ["type"] = "bullet", ["dps"] = 26 }, --Fel Iron Shells
	{ ["id"] = 28060, ["type"] = "bullet", ["dps"] = 22 }, --Impact Shot
	{ ["id"] = 11284, ["type"] = "bullet", ["dps"] = 13 }, --Accurate Slugs
	{ ["id"] = 3033, ["type"] = "bullet", ["dps"] = 7.5 }, --Solid Shot
	{ ["id"] = 2519, ["type"] = "bullet", ["dps"] = 3.5 }, --Heavy Shot
	{ ["id"] = 2516, ["type"] = "bullet", ["dps"] = 1.5 }, --Light Shot
	
	--Arrows
	{ ["id"] = 31737, ["type"] = "arrow", ["dps"] = 53 }, --Timeless Arrow
	{ ["id"] = 34581, ["type"] = "arrow", ["dps"] = 46.5 }, --Mysterious Arrow
	{ ["id"] = 33803, ["type"] = "arrow", ["dps"] = 43 }, --Adamantite Stinger
	{ ["id"] = 31949, ["type"] = "arrow", ["dps"] = 37 }, --Warden's Arrow
	{ ["id"] = 30611, ["type"] = "arrow", ["dps"] = 34 }, --Halaani Razorshaft
	{ ["id"] = 28056, ["type"] = "arrow", ["dps"] = 32 }, --Blackflight Arrow
	{ ["id"] = 24417, ["type"] = "arrow", ["dps"] = 26 }, --Scout's Arrow
	{ ["id"] = 28053, ["type"] = "arrow", ["dps"] = 22 }, --Wicked Arrow
	{ ["id"] = 11285, ["type"] = "arrow", ["dps"] = 13 }, --Jagged Arrow
	{ ["id"] = 3030, ["type"] = "arrow", ["dps"] = 7.5 }, --Razor Arrow
	{ ["id"] = 2515, ["type"] = "arrow", ["dps"] = 3.5 }, --Sharp Arrow
	{ ["id"] = 2512, ["type"] = "arrow", ["dps"] = 1.5 }, --Rough Arrow
};

SBAmmoSlot_SelectedAmmo = nil;

SBAmmoSlot_AmmoDone = false; --true if ammo has been decided for the current unit

SBAmmoSlot_Quivers = {
	--quivers
	{ ["id"] = 34100, ["type"] = "quiver", ["lvl"] = 60, ["ias"] = 0.15 }, --Knothide Quiver
	{ ["id"] = 19319, ["type"] = "quiver", ["lvl"] = 55, ["ias"] = 0.15 }, --Harpy Hide Quiver
	{ ["id"] = 2662, ["type"] = "quiver", ["lvl"] = 50, ["ias"] = 0.14 }, --Ribbly's Quiver
	{ ["id"] = 8217, ["type"] = "quiver", ["lvl"] = 40, ["ias"] = 0.13 }, --Quickdraw Quiver
	{ ["id"] = 7371, ["type"] = "quiver", ["lvl"] = 30, ["ias"] = 0.12 }, --Heavy Quiver
	{ ["id"] = 3605, ["type"] = "quiver", ["lvl"] = 18, ["ias"] = 0.11 }, --Quiver of the Night Watch
	{ ["id"] = 2101, ["type"] = "quiver", ["lvl"] = 0, ["ias"] = 0.1 }, --Light Quiver
	
	--ammo pouches
	{ ["id"] = 34099, ["type"] = "pouch", ["lvl"] = 60, ["ias"] = 0.15 }, --Knothide Ammo Pouch
	{ ["id"] = 19320, ["type"] = "pouch", ["lvl"] = 55, ["ias"] = 0.15 }, --Gnoll Skin Bandolier
	{ ["id"] = 2663, ["type"] = "pouch", ["lvl"] = 50, ["ias"] = 0.14 }, --Ribbly's Bandolier
	{ ["id"] = 8218, ["type"] = "pouch", ["lvl"] = 40, ["ias"] = 0.13 }, --Thick Leather Ammo Pouch
	{ ["id"] = 7372, ["type"] = "pouch", ["lvl"] = 30, ["ias"] = 0.12 }, --Heavy Leather Ammo Pouch
	{ ["id"] = 3604, ["type"] = "pouch", ["lvl"] = 18, ["ias"] = 0.11 }, --Bandolier of the Night Watch
	{ ["id"] = 2102, ["type"] = "pouch", ["lvl"] = 0, ["ias"] = 0.1 }, --Small Shot Pouch
};

SBAmmoSlot_SelectedQuiver = nil;

SBAmmoSlot_QuiverDone = false;

function SBAmmoSlot_OnLoad()
--wat go here
end

function SBAmmoSlot_OnShow()
	local _,class = UnitClass(InspectFrame.unit);
	if class == "WARRIOR" or class == "ROGUE" or class == "HUNTER" then
		this:Show();
	else
		this:Hide();
	end
end

function SBAmmoSlot_OnHide()
	ScrubBusterAmmoSelectionFrame:Hide();
	ScrubBusterQuiverSelectionFrame:Hide();
end

function SBAmmoSlot_SetAmmo(ammoid)
	SBAmmoSlot_SelectedAmmo = ammoid;
	SBAmmoSlot_Update();
end

function SBAmmoSlot_Update()
	local texture = GetItemIcon(SBAmmoSlot_SelectedAmmo);
	
	if texture then
		SetItemButtonTexture(ScrubBusterAmmoSlot, texture);
		ScrubBusterAmmoSlot.hasItem = true;
	else
		texture = ScrubBusterAmmoSlot.backgroundTextureName;
		SetItemButtonTexture(ScrubBusterAmmoSlot, texture);
		ScrubBusterAmmoSlot.hasItem = false;
	end
end

function SBAmmoSlot_OnEnter(self)
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
	if not SBAmmoSlot_SelectedAmmo then
		GameTooltip:SetText("Ammo");
	else
		GameTooltip:SetHyperlink("item:"..tostring(SBAmmoSlot_SelectedAmmo));
	end
	GameTooltip:Show();
end

function SBAmmoSlot_OnClick(button)
	if button == "RightButton" then
		SBAmmoSlot_SetAmmo(nil);
		SBInspectFrame_Specials["ammoDPS"] = nil;
		ScrubBuster:ScrubBust(InspectFrame.unit, true, SBInspectFrame_Specials);
	
	elseif button == "LeftButton" then
		if ScrubBusterAmmoSelectionFrame:IsShown() then
			ScrubBusterAmmoSelectionFrame:Hide();
		else
			ScrubBusterAmmoSelectionFrame:Show();
		end
		if ScrubBusterQuiverSelectionFrame:IsShown() then
			ScrubBusterQuiverSelectionFrame:Hide();
		else
			ScrubBusterQuiverSelectionFrame:Show();
		end
	end
end

function SBAmmoSelectionButton_OnEnter()
	if this.itemID then
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
		GameTooltip:SetHyperlink("item:"..this.itemID);
		GameTooltip:Show();
	end
end

function SBAmmoSelectionButton_OnLeave()
	GameTooltip:Hide();
end

function SBAmmoSelectionButton_OnClick(button)
	if button == "LeftButton" then
		SBAmmoSlot_SetAmmo(this.itemID);
		for _,v in ipairs(SBAmmoSlot_Ammunition) do
			if v["id"] == this.itemID then
				SBInspectFrame_Specials["ammoDPS"] = v["dps"];
				break;
			end
		end
		ScrubBuster:ScrubBust(InspectFrame.unit, true, SBInspectFrame_Specials);
		ScrubBusterAmmoSelectionFrame:Hide();
		ScrubBusterQuiverSelectionFrame:Hide();
	end
end

function SBAmmoSelectionFrame_OnLoad()
	--create the 16 buttons used to display the ammo selections
	for i = 1, 16 do
		local f = CreateFrame("Button", "ScrubBusterAmmoSelectionButton"..i, ScrubBusterAmmoSelectionFrame_Content, "ScrubBusterAmmoSelectionButton_Template");
		if i == 1 then
			f:SetPoint("TOPLEFT");
		elseif i == 2 then
			f:SetPoint("TOPRIGHT");
		else
			f:SetPoint("TOPLEFT", "ScrubBusterAmmoSelectionButton"..(i-2), "BOTTOMLEFT", 0, -1);
		end

	end
	
	--query the server for all the ammo so that we can get its info (this should be safe nowadays)
	for _,v in ipairs(SBAmmoSlot_Ammunition) do
		id = v["id"];
		iteminfo = GetItemInfo(id);
		if not iteminfo then
			ScrubBusterTooltip:SetHyperlink("item:"..id)
		end
	end
	
end

function SBAmmoSelectionFrame_OnShow()
	local unit = InspectFrame.unit;
	local name = UnitName(unit);
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	if not ScrubBuster["stats"][name]["weaponStats"]["ranged"]["weaponType"][2] then
		return
	end
	local weapontype = ScrubBuster["stats"][name]["weaponStats"]["ranged"]["weaponType"][2];
	local ammotype;
	if weapontype == "BOW" or weapontype == "CROSSBOW" then
		ammotype = "arrow";
	elseif weapontype == "GUN" then
		ammotype = "bullet";
	else
		return;
	end
	
	local ammo = {};
	for _,v in ipairs(SBAmmoSlot_Ammunition) do
		if v["type"] == ammotype then
			local levelReq;
			_, _, _, _, levelReq = GetItemInfo(v["id"]);
			if level >= levelReq then
				table.insert(ammo, v["id"])
			end
		end
	end
	
	for i=1, 16 do --hide all the buttons
		local button = getglobal("ScrubBusterAmmoSelectionButton"..i)
		button:Hide();
		button.itemID = nil;
	end
	
	for i,id in ipairs(ammo) do
		local button = getglobal("ScrubBusterAmmoSelectionButton"..i);
		local icon = getglobal("ScrubBusterAmmoSelectionButton"..i.."_Icon");
		local name = getglobal("ScrubBusterAmmoSelectionButton"..i.."_Name");
		button.itemID = id;
		itemName, _, itemRarity, _, _, _, _, _, _, itemTexture = GetItemInfo(id);
		_, _, _, color = GetItemQualityColor(itemRarity);
		
		icon:SetTexture(itemTexture);
		name:SetText(color..itemName);
		button:Show();
	end
	
	--Set the height and width of the frame to match the amount of buttons
	local height;
	local width;
	
	if #ammo == 1 then
		width = 190;
	else
		width = 340;
	end
	height = 30 + 20 * ceil(#ammo/2) + (ceil(#ammo/2) - 2);
	getglobal("ScrubBusterAmmoSelectionFrame"):SetHeight(height);
	getglobal("ScrubBusterAmmoSelectionFrame"):SetWidth(width);
end



-- Quiver selection (also ammo slot button)

function SBQuiverSelectionButton_OnEnter()
	if this.itemID then
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
		GameTooltip:SetHyperlink("item:"..this.itemID);
		GameTooltip:Show();
	end
end

function SBQuiverSelectionButton_OnLeave()
	GameTooltip:Hide();
end

function SBQuiverSelectionButton_OnClick(button)
	if button == "LeftButton" then
		SBAmmoSlot_SelectedQuiver = this.itemID;
		if this.itemID == nil then
			SBInspectFrame_Specials["quiverIAS"] = nil;
		else
			for _,v in ipairs(SBAmmoSlot_Quivers) do
				if v["id"] == this.itemID then
					SBInspectFrame_Specials["quiverIAS"] = v["ias"];
					break;
				end
			end
		end
		ScrubBuster:ScrubBust(InspectFrame.unit, true, SBInspectFrame_Specials);
		ScrubBusterQuiverSelectionFrame:Hide();
		ScrubBusterAmmoSelectionFrame:Hide();
	end
end

function SBQuiverSelectionFrame_OnLoad()
	--create the 8 buttons used to display the quiver selections
	for i = 1, 8 do
		local f = CreateFrame("Button", "ScrubBusterQuiverSelectionButton"..i, ScrubBusterQuiverSelectionFrame_Content, "ScrubBusterQuiverSelectionButton_Template");
		if i == 1 then
			f:SetPoint("TOPLEFT");
		else
			f:SetPoint("TOPLEFT", "ScrubBusterQuiverSelectionButton"..(i-1), "BOTTOMLEFT", 0, -1);
		end
	end
	
	--query the server for all the quivers so that we can get its info (this should be safe nowadays)
	for _,v in ipairs(SBAmmoSlot_Quivers) do
		id = v["id"];
		iteminfo = GetItemInfo(id);
		if not iteminfo then
			ScrubBusterTooltip:SetHyperlink("item:"..id)
		end
	end
end

function SBQuiverSelectionFrame_OnShow()
	local unit = InspectFrame.unit;
	local name = UnitName(unit);
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	if not ScrubBuster["stats"][name]["weaponStats"]["ranged"]["weaponType"][2] then
		return
	end
	local weapontype = ScrubBuster["stats"][name]["weaponStats"]["ranged"]["weaponType"][2];
	local quivertype;
	if weapontype == "BOW" or weapontype == "CROSSBOW" then
		quivertype = "quiver";
	elseif weapontype == "GUN" then
		quivertype = "pouch";
	else
		return;
	end
	
	local quivers = {};
	for _,v in ipairs(SBAmmoSlot_Quivers) do
		if v["type"] == quivertype and level >= v["lvl"] then
			table.insert(quivers, v["id"]);
		end
	end
	
	for i=1, 8 do --hide all the buttons
		local button = getglobal("ScrubBusterQuiverSelectionButton"..i)
		button:Hide();
		button.itemID = nil;
	end
	
	local lastbutton;
	for i,id in ipairs(quivers) do
		local button = getglobal("ScrubBusterQuiverSelectionButton"..i);
		local icon = getglobal("ScrubBusterQuiverSelectionButton"..i.."_Icon");
		local name = getglobal("ScrubBusterQuiverSelectionButton"..i.."_Name");
		button.itemID = id;
		itemName, _, itemRarity, _, _, _, _, _, _, itemTexture = GetItemInfo(id);
		_, _, _, color = GetItemQualityColor(itemRarity);
		
		icon:SetTexture(itemTexture);
		name:SetText(color..itemName);
		button:Show();
		lastbutton = i + 1;
	end
	
	--Last button will be the "No quiver" option
	local button = getglobal("ScrubBusterQuiverSelectionButton"..lastbutton);
	local icon = getglobal("ScrubBusterQuiverSelectionButton"..lastbutton.."_Icon");
	local name = getglobal("ScrubBusterQuiverSelectionButton"..lastbutton.."_Name");
	icon:SetTexture("Interface\\Icons\\Temp");
	name:SetText(RED_FONT_COLOR_CODE.."NO QUIVER");
	button:Show();
	
	--Set the height and width of the frame to match the amount of buttons
	local height;
	local width;
	
	width = 190;
	height = 30 + 20 * (#quivers + 1) + (#quivers + 1) - 2;
	getglobal("ScrubBusterQuiverSelectionFrame"):SetHeight(height);
	getglobal("ScrubBusterQuiverSelectionFrame"):SetWidth(width);
	
end

----Stat box code, mostly copied from the Blizzard paper doll frame

SBInspectFrame_StatDropDownOptions = {
	"PLAYERSTAT_BASE_STATS",
	"PLAYERSTAT_MELEE_COMBAT",
	"PLAYERSTAT_RANGED_COMBAT",
	"PLAYERSTAT_SPELL_COMBAT",
	"PLAYERSTAT_DEFENSES",
};

function SBStatFrameTooltip()
	if not this.tooltip then return end
	GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
	GameTooltip:SetText(this.tooltip);
	if this.tooltip2 then
		GameTooltip:AddLine(this.tooltip2, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
	end
	GameTooltip:Show();
end


--Left dropdown
function SBStatFrameLeftDropDown_OnLoad()
	UIDropDownMenu_Initialize(this, SBStatFrameLeftDropDown_Initialize);
	UIDropDownMenu_SetSelectedValue(this, SBInspectFrame_LeftStatDropDownSelection);
	UIDropDownMenu_SetWidth(99, this);
	UIDropDownMenu_JustifyText("LEFT", this);
end

function SBStatFrameLeftDropDown_Initialize()
	local info = UIDropDownMenu_CreateInfo();
	local checked;
	for i=1, table.getn(SBInspectFrame_StatDropDownOptions) do
		if SBInspectFrame_StatDropDownOptions[i] == SBInspectFrame_LeftStatDropDownSelection then
			checked = 1;
		else
			checked = nil;
		end
		info.text = getglobal(SBInspectFrame_StatDropDownOptions[i]);
		info.func = SBStatFrameLeftDropDown_OnClick;
		info.value = SBInspectFrame_StatDropDownOptions[i];
		info.checked = checked;
		info.owner = UIDROPDOWNMENU_OPEN_MENU;
		UIDropDownMenu_AddButton(info);
	end
end

function SBStatFrameLeftDropDown_OnClick()
	UIDropDownMenu_SetSelectedValue(getglobal(this.owner), this.value);
	SBInspectFrame_LeftStatDropDownSelection = this.value;
	SBStatFrameUpdate("ScrubBusterStatFrameLeft", this.value);

end


--Right dropdown
function SBStatFrameRightDropDown_OnLoad()
	UIDropDownMenu_Initialize(this, SBStatFrameRightDropDown_Initialize);
	UIDropDownMenu_SetSelectedValue(this, SBInspectFrame_RightStatDropDownSelection);
	UIDropDownMenu_SetWidth(99, this);
	UIDropDownMenu_JustifyText("LEFT", this);
end

function SBStatFrameRightDropDown_Initialize()
	local info = UIDropDownMenu_CreateInfo();
	local checked;
	for i=1, table.getn(SBInspectFrame_StatDropDownOptions) do
		if SBInspectFrame_StatDropDownOptions[i] == SBInspectFrame_RightStatDropDownSelection then
			checked = 1;
		else
			checked = nil;
		end
		info.text = getglobal(SBInspectFrame_StatDropDownOptions[i]);
		info.func = SBStatFrameRightDropDown_OnClick;
		info.value = SBInspectFrame_StatDropDownOptions[i];
		info.checked = checked;
		info.owner = UIDROPDOWNMENU_OPEN_MENU;
		UIDropDownMenu_AddButton(info);
	end
end

function SBStatFrameRightDropDown_OnClick()
	UIDropDownMenu_SetSelectedValue(getglobal(this.owner), this.value);
	SBInspectFrame_RightStatDropDownSelection = this.value;
	SBStatFrameUpdate("ScrubBusterStatFrameRight", this.value);
end

function SBInspectFrame_UpdateStats()
	SBStatFrameUpdate("ScrubBusterStatFrameLeft", SBInspectFrame_LeftStatDropDownSelection);
	SBStatFrameUpdate("ScrubBusterStatFrameRight", SBInspectFrame_RightStatDropDownSelection);
end

function SBStatFrameUpdate(prefix, index)
	local stat1 = getglobal(prefix..1);
	local stat2 = getglobal(prefix..2);
	local stat3 = getglobal(prefix..3);
	local stat4 = getglobal(prefix..4);
	local stat5 = getglobal(prefix..5);
	local stat6 = getglobal(prefix..6);
	
	-- reset any OnEnter scripts that may have been changed
	stat1:SetScript("OnEnter", SBStatFrameTooltip);
	stat2:SetScript("OnEnter", SBStatFrameTooltip);
	stat4:SetScript("OnEnter", SBStatFrameTooltip);
	
	stat6:Show();
	
	if index == "PLAYERSTAT_BASE_STATS" then
		SBStatFrame_SetStat(stat1, 1);
		SBStatFrame_SetStat(stat2, 2);
		SBStatFrame_SetStat(stat3, 3);
		SBStatFrame_SetStat(stat4, 4);
		SBStatFrame_SetStat(stat5, 5);
		SBStatFrame_SetArmor(stat6);
	elseif index == "PLAYERSTAT_MELEE_COMBAT" then
		SBStatFrame_SetDamage(stat1);
		stat1:SetScript("OnEnter", SBDamageFrame_OnEnter);
		SBStatFrame_SetAttackSpeed(stat2);
		SBStatFrame_SetAttackPower(stat3);
		SBStatFrame_SetRating(stat4, CR_HIT_MELEE);
		SBStatFrame_SetMeleeCritChance(stat5);
		SBStatFrame_SetExpertise(stat6); 
	elseif index == "PLAYERSTAT_RANGED_COMBAT" then
		SBStatFrame_SetRangedDamage(stat1);
		stat1:SetScript("OnEnter", SBRangedDamageFrame_OnEnter);
		SBStatFrame_SetRangedAttackSpeed(stat2);
		SBStatFrame_SetRangedAttackPower(stat3);
		SBStatFrame_SetRating(stat4, CR_HIT_RANGED);
		SBStatFrame_SetRangedCritChance(stat5);
		stat6:Hide(); --maybe we will have a quiver selection dropdown here???
	elseif index == "PLAYERSTAT_SPELL_COMBAT" then
		SBStatFrame_SetSpellBonusDamage(stat1);
		stat1:SetScript("OnEnter", SBSpellBonusDamage_OnEnter);
		SBStatFrame_SetSpellBonusHealing(stat2);
		SBStatFrame_SetRating(stat3, CR_HIT_SPELL);
		SBStatFrame_SetSpellCritChance(stat4);
		stat4:SetScript("OnEnter", SBSpellCritChance_OnEnter);
		SBStatFrame_SetSpellHaste(stat5);
		SBStatFrame_SetManaRegen(stat6);
	elseif index == "PLAYERSTAT_DEFENSES" then
		SBStatFrame_SetArmor(stat1);
		SBStatFrame_SetDefense(stat2);
		SBStatFrame_SetDodge(stat3);
		SBStatFrame_SetParry(stat4);
		SBStatFrame_SetBlock(stat5);
		SBStatFrame_SetResilience(stat6);
	end
end

function SBInspectFrame_SetResistances()
	--DEFAULT_CHAT_FRAME:AddMessage("Resistances");
	local resistances = {"arcane", "fire", "nature", "frost", "shadow"};
	
	for i=1, 5, 1 do
		local text = getglobal("ScrubBusterMagicResText"..i);
		local frame = getglobal("ScrubBusterMagicResFrame"..i);
		local resistanceLevel;
		local unit = InspectFrame.unit;
		local name = UnitName(unit);
		
		--Get the resistance values
		local resistTable = ScrubBuster.stats[name]["stats"]["resist"][resistances[i]];
		local base = resistTable["base"];
		local posMod = resistTable["posMod"];
		local negMod = resistTable["negMod"];
		local total = base + posMod + negMod;
		base = floor(base);
		posMod = floor(posMod);
		negMod = floor(negMod);
		total = floor(total);
		
		local resistanceName = getglobal("RESISTANCE"..(frame:GetID()).."_NAME");
		frame.tooltip = resistanceName.." "..total;
		
		--colour the 2 digit text on the resistance icon
		if abs(negMod) > posMod then
			text:SetText(RED_FONT_COLOR_CODE..total..FONT_COLOR_CODE_CLOSE);
		elseif abs(negMod) == posMod then
			text:SetText(total);
		else
			text:SetText(GREEN_FONT_COLOR_CODE..total..FONT_COLOR_CODE_CLOSE);
		end
		
		--Display the components of total resistance in the tooltip
		if posMod ~= 0 or negMod ~=0 then
			frame.tooltip = frame.tooltip.." ( "..HIGHLIGHT_FONT_COLOR_CODE..base;
			if posMod > 0 then
				frame.tooltip = frame.tooltip..GREEN_FONT_COLOR_CODE.." +"..posMod;
			end
			if negMod < 0 then
				frame.tooltip = frame.tooltip.." "..RED_FONT_COLOR_CODE..negative;
			end
			frame.tooltip = frame.tooltip..FONT_COLOR_CODE_CLOSE.." )";
		end
		
		local level = ScrubBuster.stats[name]["level"];
		level = max(level, 20);
		local magicResistanceNumber = total/level;
		if ( magicResistanceNumber > 5 ) then
			resistanceLevel = RESISTANCE_EXCELLENT;
		elseif ( magicResistanceNumber > 3.75 ) then
			resistanceLevel = RESISTANCE_VERYGOOD;
		elseif ( magicResistanceNumber > 2.5 ) then
			resistanceLevel = RESISTANCE_GOOD;
		elseif ( magicResistanceNumber > 1.25 ) then
			resistanceLevel = RESISTANCE_FAIR;
		elseif ( magicResistanceNumber > 0 ) then
			resistanceLevel = RESISTANCE_POOR;
		else
			resistanceLevel = RESISTANCE_NONE;
		end
		frame.tooltipSubtext = format(RESISTANCE_TOOLTIP_SUBTEXT, getglobal("RESISTANCE_TYPE"..frame:GetID()), level, resistanceLevel);
		
	end
end

function SBStatFrame_SetStat(frame, index)
	local label = getglobal(frame:GetName().."Label");
	local text = getglobal(frame:GetName().."StatText");
	local unit = InspectFrame.unit;	
	local name = UnitName(unit);
	local statIndex = { "str", "agi", "sta", "int", "spi" };
	local stat = ScrubBuster["stats"][name]["stats"]["primary"][statIndex[index]];
	local baseStat = stat["base"]
	local posMod = stat["posMod"]
	local negMod = stat["negMod"]
	local totalStat = stat["base"] + stat["posMod"] + stat["negMod"];
	local statName = getglobal("SPELL_STAT"..index.."_NAME");
	label:SetText(statName..":");
	
	--Set the tooltip text
	local tooltipText = HIGHLIGHT_FONT_COLOR_CODE..statName.." ";
	
	if posMod == 0 and negMod == 0 then
		text:SetText(math.floor(totalStat));
		frame.tooltip = tooltipText..math.floor(totalStat)..FONT_COLOR_CODE_CLOSE;
	else
		tooltipText = tooltipText..math.floor(totalStat);
		if posMod > 0 or negMod < 0 then
			tooltipText = tooltipText.." ("..math.floor(baseStat)..FONT_COLOR_CODE_CLOSE;
		end
		if posMod > 0 then
			tooltipText = tooltipText..GREEN_FONT_COLOR_CODE.."+"..math.floor(posMod)..FONT_COLOR_CODE_CLOSE;
		end
		if negMod < 0 then
			tooltipText = tooltipText..RED_FONT_COLOR_CODE.." "..math.floor(negMod)..FONT_COLOR_CODE_CLOSE;
		end
		if posMod > 0 or negMod < 0 then
			tooltipText = tooltipText..HIGHLIGHT_FONT_COLOR_CODE..")"..FONT_COLOR_CODE_CLOSE;
		end
		frame.tooltip = tooltipText;
		
		--If there are negative modifiers the main number is always red
		--if there's only positive modifiers it's green
		if negMod < 0 then
			text:SetText(RED_FONT_COLOR_CODE..math.floor(totalStat)..FONT_COLOR_CODE_CLOSE);
		else
			text:SetText(GREEN_FONT_COLOR_CODE..math.floor(totalStat)..FONT_COLOR_CODE_CLOSE);
		end
	end
	frame.tooltip2 = getglobal("DEFAULT_STAT"..index.."_TOOLTIP");
	local _, unitClass = UnitClass(unit);
	local unitClassID = ClassNameToID[unitClass];
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	
	if index == 1 then
		local attackPower = StatLogic:GetAPFromStr(totalStat, unitClassID);
		frame.tooltip2 = format(frame.tooltip2, attackPower);
		if unitClass == "WARRIOR" or unitClass == "SHAMAN" or unitClass == "PALADIN" then
			frame.tooltip2 = frame.tooltip2.."\n"..format(STAT_BLOCK_TOOLTIP, totalStat*BLOCK_PER_STRENGTH);
		end
	elseif index == 3 then
		local health = floor(totalStat) * 10 - 180;
		frame.tooltip2 = format(frame.tooltip2, health);
	elseif index == 2 then
		local attackPower = StatLogic:GetAPFromAgi(totalStat, unitClassID);
		local crit = StatLogic:GetCritFromAgi(totalStat, unitClassID, level) + ScrubBuster.BaseCrit[unitClassID];
		local armor = totalStat * 2;
		if attackPower > 0 then
			frame.tooltip2 = format(STAT_ATTACK_POWER, attackPower)..format(frame.tooltip2, crit, armor);
		else
			frame.tooltip2 = format(frame.tooltip2, crit, armor);
		end
	elseif index == 4 then
		local mana = floor(totalStat) * 15 - 280;
		local spellCrit = StatLogic:GetSpellCritFromInt(totalStat, unitClassID, level);
		if ClassHasMana[unitClass] then
			frame.tooltip2 = format(frame.tooltip2, mana, spellCrit);
		else
			frame.tooltip2 = nil;
		end
	elseif index == 5 then
		local tempBaseSpi = totalStat;
		if tempBaseSpi > 50 then tempBaseSpi = 50; end
		local tempExtraSpi = totalStat - tempBaseSpi;
		local healthRegen = (tempBaseSpi * ScrubBuster.HealthRegenPerSpi50[level][unitClassID] + tempExtraSpi * ScrubBuster.HealthRegenPerSpi[unitClassID]);
		
		frame.tooltip2 = format(frame.tooltip2, healthRegen);
		
		if ClassHasMana[unitClass] then
			local tempInt = ScrubBuster["stats"][name]["stats"]["primary"]["int"];
			local totalInt = tempInt["base"] + tempInt["posMod"] + tempInt["negMod"];
			local manaRegen = StatLogic:GetNormalManaRegenFromSpi(totalStat, totalInt, level);
			frame.tooltip2 = frame.tooltip2.."\n"..format(MANA_REGEN_FROM_SPIRIT, manaRegen);
		end
	end
	frame:Show();
end

function SBStatFrame_SetArmor(frame)
	local unit = InspectFrame.unit;
	local name = UnitName(unit);
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local stat = ScrubBuster["stats"][name]["stats"]["defense"]["armor"];
	local baseStat = stat["base"];
	local posMod = stat["posMod"];
	local negMod = stat["negMod"];
	local itemStat = ScrubBuster["stats"][name]["itemStats"]["defense"]["armor"]["posMod"];
	baseStat = baseStat + itemStat;
	posMod = posMod - itemStat;
	local totalStat = baseStat + posMod + negMod;
	getglobal(frame:GetName().."Label"):SetText(ARMOR_COLON);
	local text = getglobal(frame:GetName().."StatText");
	
	SBStatFrame_FormatStat(ARMOR, baseStat, posMod, negMod, frame, text);
	local damageReduction = format("%.2f", (StatLogic:GetReductionFromArmor(totalStat, level) * 100));
	frame.tooltip2 = format(DEFAULT_STATARMOR_TOOLTIP, damageReduction);
	
	frame:Show();
end

function SBStatFrame_SetDefense(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	local temp = ScrubBuster["stats"][name]["stats"]["defense"]["defense"];
	local base = temp["base"];
	local posMod = temp["posMod"];
	local negMod = temp["negMod"];
	local total = base + posMod + negMod;
	local modifier = posMod + negMod; --we'll do this the roundabout way to match Blizz's UI
	posMod = 0;
	negMod = 0;
	if modifier > 0 then
		posMod = modifier;
	elseif modifier < 0 then
		negMod = modifier;
	end
	getglobal(frame:GetName().."Label"):SetText(DEFENSE_COLON);
	local text = getglobal(frame:GetName().."StatText");
	
	SBStatFrame_FormatStat(DEFENSE, base, posMod, negMod, frame, text);
	local effect = (total - level * 5) * 0.04;
	local temp = ScrubBuster["stats"][name]["stats"]["defense"]["defenseRating"];
	local rating = temp["base"] + temp["posMod"] + temp["negMod"];
	local ratingEffect = StatLogic:GetEffectFromRating(rating, 2, level);
	local text = format(DEFAULT_STATDEFENSE_TOOLTIP, floor(rating), floor(ratingEffect), effect, effect);
	
	local temp = ScrubBuster["stats"][name]["stats"]["defense"]["critReduction"];
	local critReduction = temp["base"] + temp["posMod"] + temp["negMod"];
	local tempString = "\n\nDefense, resilience, and talents reduce chance to be critically hit by %.2f%% in total.\n(Raid boss melee critical chance is 5.6%%)"
	text = text..format(tempString, critReduction);
	
	frame.tooltip2 = text;
	frame:Show();
end

function SBStatFrame_SetDodge(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	local temp = ScrubBuster["stats"][name]["stats"]["defense"];
	local temp2 = temp["dodgePercent"];
	local chance = temp2["base"] + temp2["posMod"] + temp2["negMod"];
	SBStatFrame_SetLabelAndText(frame, STAT_DODGE, chance, 1);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..getglobal("DODGE_CHANCE").." "..string.format("%.02f", chance).."%"..FONT_COLOR_CODE_CLOSE;
	
	local temp2 = temp["dodgeRating"];
	local rating = temp2["base"] + temp2["posMod"] + temp2["negMod"];
	local ratingEffect = StatLogic:GetEffectFromRating(rating, 3, level);
	local text = format(CR_DODGE_TOOLTIP, floor(rating), ratingEffect);
	
	local dodge = temp["dodgePercent"]["base"] + temp["dodgePercent"]["posMod"] + temp["dodgePercent"]["negMod"];
	local parry = temp["parryPercent"]["base"] + temp["parryPercent"]["posMod"] + temp["parryPercent"]["negMod"];
	local block = temp["blockPercent"]["base"] + temp["blockPercent"]["posMod"] + temp["blockPercent"]["negMod"];
	local miss = temp["hitReduction"]["base"] + temp["hitReduction"]["posMod"] + temp["hitReduction"]["negMod"];
	local totalAvoidance = dodge + parry + block + miss + 5; --5 is the monster base miss chance
	local tempString = "\n\nPassive melee avoidance: %.2f%%\n(Uncrushability against raid bosses requires 102.4%% total avoidance)"
	text = text..format(tempString, totalAvoidance);
	
	frame.tooltip2 = text;
	frame:Show();
end

function SBStatFrame_SetBlock(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	local temp = ScrubBuster["stats"][name]["stats"]["defense"];
	local temp2 = temp["blockPercent"];
	local chance = temp2["base"] + temp2["posMod"] + temp2["negMod"];
	SBStatFrame_SetLabelAndText(frame, STAT_BLOCK, chance, 1);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..getglobal("BLOCK_CHANCE").." "..string.format("%.02f", chance).."%"..FONT_COLOR_CODE_CLOSE;
	
	local temp2 = temp["blockRating"];
	local rating = temp2["base"] + temp2["posMod"] + temp2["negMod"];
	local ratingEffect = StatLogic:GetEffectFromRating(rating, 5, level);
	local blockValue = temp["blockValue"]["base"] + temp["blockValue"]["posMod"] + temp["blockValue"]["negMod"];
	local text = format(CR_BLOCK_TOOLTIP, floor(rating), ratingEffect, floor(blockValue));
	
	local dodge = temp["dodgePercent"]["base"] + temp["dodgePercent"]["posMod"] + temp["dodgePercent"]["negMod"];
	local parry = temp["parryPercent"]["base"] + temp["parryPercent"]["posMod"] + temp["parryPercent"]["negMod"];
	local block = temp["blockPercent"]["base"] + temp["blockPercent"]["posMod"] + temp["blockPercent"]["negMod"];
	local miss = temp["hitReduction"]["base"] + temp["hitReduction"]["posMod"] + temp["hitReduction"]["negMod"];
	local totalAvoidance = dodge + parry + block + miss + 5; --5 is the monster base miss chance
	local tempString = "\n\nPassive melee avoidance: %.2f%%\n(Uncrushability against raid bosses requires 102.4%% total avoidance)"
	text = text..format(tempString, totalAvoidance);
	
	frame.tooltip2 = text;
	frame:Show();
end

function SBStatFrame_SetParry(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	local temp = ScrubBuster["stats"][name]["stats"]["defense"];
	local temp2 = temp["parryPercent"];
	local chance = temp2["base"] + temp2["posMod"] + temp2["negMod"];
	SBStatFrame_SetLabelAndText(frame, STAT_PARRY, chance, 1);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..getglobal("PARRY_CHANCE").." "..string.format("%.02f", chance).."%"..FONT_COLOR_CODE_CLOSE;
	
	local temp2 = temp["parryRating"];
	local rating = temp2["base"] + temp2["posMod"] + temp2["negMod"];
	local ratingEffect = StatLogic:GetEffectFromRating(rating, 4, level);
	local text = format(CR_PARRY_TOOLTIP, floor(rating), ratingEffect);
	
	local dodge = temp["dodgePercent"]["base"] + temp["dodgePercent"]["posMod"] + temp["dodgePercent"]["negMod"];
	local parry = temp["parryPercent"]["base"] + temp["parryPercent"]["posMod"] + temp["parryPercent"]["negMod"];
	local block = temp["blockPercent"]["base"] + temp["blockPercent"]["posMod"] + temp["blockPercent"]["negMod"];
	local miss = temp["hitReduction"]["base"] + temp["hitReduction"]["posMod"] + temp["hitReduction"]["negMod"];
	local totalAvoidance = dodge + parry + block + miss + 5; --5 is the monster base miss chance
	local tempString = "\n\nPassive melee avoidance: %.2f%%\n(Uncrushability against raid bosses requires 102.4%% total avoidance)"
	text = text..format(tempString, totalAvoidance);
	
	frame.tooltip2 = text;
	frame:Show();
end

function SBStatFrame_SetResilience(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	local temp = ScrubBuster["stats"][name]["stats"]["defense"]["resilience"];
	local rating = temp["base"] + temp["posMod"] + temp["negMod"];
	local effect = StatLogic:GetEffectFromRating(rating, 15, level);
	rating = floor(rating);
	
	SBStatFrame_SetLabelAndText(frame, STAT_RESILIENCE, rating);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..STAT_RESILIENCE.." "..rating..FONT_COLOR_CODE_CLOSE;
	frame.tooltip2 = format(RESILIENCE_TOOLTIP, effect, min(effect * 2, 25.00), effect);
	frame:Show();
end

function SBStatFrame_SetDamage(frame)
	local unit = InspectFrame.unit;
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(DAMAGE_COLON);
	local text = getglobal(frame:GetName().."StatText");
	
	local meleeStats = ScrubBuster["stats"][name]["stats"]["melee"]
	local speed = meleeStats["mainHandSpeed"]["base"];
	local minDamage = meleeStats["mainHandDmgMin"]["base"];
	local maxDamage = meleeStats["mainHandDmgMax"]["base"];
	--this should be identical for max and min so we can be lazy
	local posMod = meleeStats["mainHandDmgMax"]["posMod"];
	local negMod = meleeStats["mainHandDmgMax"]["negMod"];
	local percent = meleeStats["mainHandDamageMultiplier"]["mult"];
	local damagePerSecond = meleeStats["mainHandDps"]["base"];
	local displayMin = max(floor(minDamage + posMod + negMod), 1);
	local displayMax = max(ceil(maxDamage + posMod + negMod), 1);
	
	minDamage = (minDamage / percent);
	maxDamage = (maxDamage / percent);
	
	local baseDamage = (minDamage + maxDamage) * 0.5;
	local fullDamage = (baseDamage + posMod + negMod) * percent;
	local totalBonus = (fullDamage - baseDamage);
	local damageTooltip = max(floor(minDamage),1).." - "..max(ceil(maxDamage),1);
	
	local colorPos = "|cff20ff20";
	local colorNeg = "|cffff2020";
	
	-- epsilon check (note: epsilon means insignificant, negligible)
	if totalBonus < 0.1 and totalBonus > -0.1 then
		totalBonus = 0;
	end
	
	if totalBonus == 0 then
		if displayMin < 100 and displayMax < 100 then
			text:SetText(displayMin.." - "..displayMax);
		else
			text:SetText(displayMin.."-"..displayMax);
		end
	
	else
		local color;
		if totalBonus > 0 then
			color = colorPos;
		else
			color = colorNeg;
		end
		if displayMin < 100 and displayMax < 100 then
			text:SetText(color..displayMin.." - "..displayMax.."|r");
		else
			text:SetText(color..displayMin.."-"..displayMax.."|r");
		end
		if posMod > 0 then
			damageTooltip = damageTooltip..colorPos.." +"..max(floor(posMod),1).."|r";
		end
		if negMod < 0 then
			damageTooltip = damageTooltip..colorNeg.." "..max(floor(negMod),1).."|r";
		end
		if percent > 1 then
			damageTooltip = damageTooltip..colorPos.." x"..floor(percent*100+0.5).."%|r";
		elseif percent < 1 then
			damageTooltip = damageTooltip..colorNeg.." x"..floor(percent*100+0.5).."%|r";
		end
	end
	frame.damage = damageTooltip;
	frame.attackSpeed = speed;
	frame.dps = damagePerSecond;
	
	-- If there's an offhand weapon then add the info to the tooltip
	if ScrubBuster["stats"][name]["weaponStats"]["offHand"]["isWeapon"] then
		local ohSpeed = meleeStats["offHandSpeed"]["base"];
		local ohMinDamage = meleeStats["offHandDmgMin"]["base"];
		local ohMaxDamage = meleeStats["offHandDmgMax"]["base"];
		local ohPosMod = meleeStats["offHandDmgMax"]["posMod"];
		local ohNegMod = meleeStats["offHandDmgMax"]["negMod"];
		local ohPercent = meleeStats["offHandDamageMultiplier"]["mult"];
		local ohDamagePerSecond = meleeStats["offHandDps"]["base"];
		
		ohMinDamage = (ohMinDamage / ohPercent);
		ohMaxDamage = (ohMaxDamage / ohPercent);
		
		local offHandDamageTooltip = max(floor(ohMinDamage),1).." - "..max(ceil(ohMaxDamage),1);
		if ohPosMod > 0 then
			offHandDamageTooltip = offHandDamageTooltip..colorPos.." +"..max(floor(ohPosMod),1).."|r";
		end
		if ohNegMod < 0 then
			offHandDamageTooltip = offHandDamageTooltip..colorneg.." "..max(floor(ohNegMod),1).."|r";
		end
		if ohPercent > 1 then
			offHandDamageTooltip = offHandDamageTooltip..colorPos.." x"..floor(ohPercent*100+0.5).."%|r";
		elseif ohPercent < 1 then
			offHandDamageTooltip = offHandDamageTooltip..colorNeg.." x"..floor(ohPercent*100+0.5).."%|r";
		end
		frame.offhandDamage = offHandDamageTooltip;
		frame.offhandAttackSpeed = ohSpeed;
		frame.offhandDps = ohDamagePerSecond;
	else
		frame.offhandAttackSpeed = nil;
	end
	frame:Show();
end

function SBStatFrame_SetRangedDamage(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(DAMAGE_COLON);
	local text = getglobal(frame:GetName().."StatText");
	
	-- If no ranged weapon then set to N/A
	local hasWeapon = ScrubBuster["stats"][name]["weaponStats"]["ranged"]["isWeapon"];
	if hasWeapon then
		frame.noRanged = nil;
	else
		text:SetText(NOT_APPLICABLE);
		frame.noRanged = 1;
		frame.damage = nil;
		return;
	end
	
	local rangedStats = ScrubBuster["stats"][name]["stats"]["ranged"]
	local speed = rangedStats["speed"]["base"];
	local minDamage = rangedStats["dmgMin"]["base"];
	local maxDamage = rangedStats["dmgMax"]["base"];
	--this should be identical for max and min so we can be lazy
	local posMod = rangedStats["dmgMax"]["posMod"];
	local negMod = rangedStats["dmgMax"]["negMod"];
	local percent = rangedStats["damageMultiplier"]["mult"];
	local damagePerSecond = rangedStats["dps"]["base"];
	local displayMin = max(floor(minDamage + posMod + negMod), 1);
	local displayMax = max(ceil(maxDamage + posMod + negMod), 1);
	
	local baseDamage;
	local fullDamage;
	local totalBonus;
	local tooltip;
	
	local hasWand = false;
	if ScrubBuster["stats"][name]["weaponStats"]["ranged"]["weaponType"][2] == "WAND" then
		hasWand = true;
	end
	if hasWand then
		baseDamage = minDamage + maxDamage * 0.5;
		fullDamage = baseDamage * percent;
		totalBonus = 0;
		tooltip = max(floor(minDamage, 1)).." - "..max(ceil(maxDamage, 1));
	else
		minDamage = (minDamage / percent);
		maxDamage = (maxDamage / percent);
		
		baseDamage = (minDamage + maxDamage) * 0.5;
		fullDamage = (baseDamage + posMod + negMod) * percent;
		totalBonus = fullDamage - baseDamage;
		tooltip = max(floor(minDamage, 1)).." - "..max(ceil(maxDamage),1);
	end
	
	if totalBonus == 0 then
		if displayMin < 100 and displayMax < 100 then
			text:SetText(displayMin.." - "..displayMax);
		else
			text:SetText(displayMin.."-"..displayMax);
		end
	else
		local colorPos = "|cff20ff20";
		local colorNeg = "|cffff2020";
		local color;
		if totalBonus > 0 then
			color = colorPos
		else
			color = colorNeg;
		end
		if displayMin < 100 and displayMax < 100 then
			text:SetText(color..displayMin.." - "..displayMax.."|r");
		else
			text:SetText(color..displayMin.."-"..displayMax.."|r");
		end
		if posMod > 0 then
			tooltip = tooltip..colorPos.." +"..posMod.."|r";
		end
		if negMod < 0 then
			tooltip = tooltip..colorNeg.." "..negMod.."|r";
		end
		if percent > 1 then
			tooltip = tooltip..colorPos.." x"..floor(percent*100+0.5).."%|r";
		elseif percent < 1 then
			tooltip = tooltip..colorNeg.." x"..floor(percent*100+0.5).."%|r";
		end
		frame.tooltip = tooltip.." "..format(DPS_TEMPLATE, damagePerSecond);
	end
	frame.attackSpeed = speed;
	frame.damage = tooltip;
	frame.dps = damagePerSecond;
	frame:Show();
end

function SBStatFrame_SetAttackSpeed(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	local meleeStats = ScrubBuster["stats"][name]["stats"]["melee"];
	local hasOffHand = ScrubBuster["stats"][name]["weaponStats"]["offHand"]["isWeapon"];
	local speed = meleeStats["mainHandSpeed"]["base"];
	local ohSpeed = meleeStats["offHandSpeed"]["base"];
	
	speed = format("%.2f", speed);
	if hasOffHand then
		ohSpeed = format("%.2f", ohSpeed);
	end
	local text;
	if hasOffHand then
		text = speed.." / "..ohSpeed;
	else
		text = speed;
	end
	
	SBStatFrame_SetLabelAndText(frame, WEAPON_SPEED, text);
	
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..ATTACK_SPEED.." "..text..FONT_COLOR_CODE_CLOSE;
	local temp = ScrubBuster["stats"][name]["stats"]["physical"]["hasteRating"];
	local hasteRating = temp["base"] + temp["posMod"] + temp["negMod"];
	frame.tooltip2 = format(CR_HASTE_RATING_TOOLTIP, hasteRating, StatLogic:GetEffectFromRating(hasteRating, 18, level));
	
	frame:Show();
end

function SBStatFrame_SetRangedAttackSpeed(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	local text;
	local hasRanged = false;
	if ScrubBuster["stats"][name]["weaponStats"]["ranged"]["isWeapon"] then
		hasRanged = true;
	end
	if not hasRanged then
		text = NOT_APPLICABLE;
		frame.tooltip = nil;
	else
		local speed = ScrubBuster["stats"][name]["stats"]["ranged"]["speed"]["base"];
		text = speed;
		text = format("%.2f", text);
		frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..ATTACK_SPEED.." "..text..FONT_COLOR_CODE_CLOSE;
	end
	SBStatFrame_SetLabelAndText(frame, WEAPON_SPEED, text);
	
	local temp = ScrubBuster["stats"][name]["stats"]["physical"]["hasteRating"];
	local hasteRating = temp["base"] + temp["posMod"] + temp["negMod"];
	local hasteEffect = StatLogic:GetEffectFromRating(hasteRating, 19, level);
	frame.tooltip2 = format(CR_HASTE_RATING_TOOLTIP, hasteRating, hasteEffect);
	frame:Show();
end

function SBStatFrame_SetRangedAttackPower(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(ATTACK_POWER_COLON);
	local text = getglobal(frame:GetName().."StatText");
	local aptable = ScrubBuster["stats"][name]["stats"]["ranged"]["attackPower"];
	local base = aptable["base"];
	local posMod = aptable["posMod"];
	local negMod = aptable["negMod"];
	
	SBStatFrame_FormatStat(RANGED_ATTACK_POWER, base, posMod, negMod, frame, text);
	local total = base + posMod + negMod;
	frame.tooltip2 = format(RANGED_ATTACK_POWER_TOOLTIP, max(total, 0)/14);
	
	frame:Show();
	
end

function SBStatFrame_SetAttackPower(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(ATTACK_POWER_COLON);
	local text = getglobal(frame:GetName().."StatText");
	local meleeStatsAP = ScrubBuster["stats"][name]["stats"]["melee"]["attackPower"];
	local base = meleeStatsAP["base"];
	local posMod = meleeStatsAP["posMod"];
	local negMod = meleeStatsAP["negMod"];
	local total = max((base + posMod + negMod), 0);
	
	SBStatFrame_FormatStat(MELEE_ATTACK_POWER, base, posMod, negMod, frame, text);
	local dmgFromAP = total / 14;
	frame.tooltip2 = format(MELEE_ATTACK_POWER_TOOLTIP, dmgFromAP);
	frame:Show();	
end

function SBStatFrame_SetRating(frame, ratingIndex)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	local label = getglobal(frame:GetName().."Label");
	local text = getglobal(frame:GetName().."StatText");
	local statName = getglobal("COMBAT_RATING_NAME"..ratingIndex);
	label:SetText(statName..":");
	local base, posMod, negMod = SBStatFrame_GetRating(ratingIndex, unit);
	local total = base + posMod + negMod;
	local effect = StatLogic:GetEffectFromRating(total, ratingIndex, level);
	text:SetText(floor(total));
	
	--Set the tooltip text
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..statName.." "..total..FONT_COLOR_CODE_CLOSE;
	
	if ratingIndex == CR_HIT_MELEE then
		local temp = ScrubBuster["stats"][name]["stats"]["physical"]["armorPen"];
		local arp = temp["base"] + temp["posMod"] + temp["negMod"];
		local temp = ScrubBuster["stats"][name]["stats"]["melee"]["hitPercent"];
		local hitPercent = temp["base"] + temp["posMod"] + temp["negMod"];
		local text = format(CR_HIT_MELEE_TOOLTIP, level, effect, arp);
		local tempString = "\n\nTotal melee hit chance: %.2f%%\n(Hit cap against raid bosses is 9%% for regular attacks, 28%% for dual-wielded attacks.)"
		local text = text..format(tempString, hitPercent);
		frame.tooltip2 = text;
	elseif ratingIndex == CR_HIT_RANGED then
		local temp = ScrubBuster["stats"][name]["stats"]["physical"]["armorPen"];
		local arp = temp["base"] + temp["posMod"] + temp["negMod"];
		local temp = ScrubBuster["stats"][name]["stats"]["ranged"]["hitPercent"];
		local hitPercent = temp["base"] + temp["posMod"] + temp["negMod"];
		local text = format(CR_HIT_RANGED_TOOLTIP, level, effect, arp);
		local tempString = "\n\nTotal ranged hit chance: %.2f%%\n(Hit cap against raid bosses is 9%% for regular ranged attacks.)"
		local text = text..format(tempString, hitPercent);
		frame.tooltip2 = text;
	elseif ratingIndex == CR_DODGE then
		frame.tooltip2 = format(CR_DODGE_TOOLTIP, effect);
	elseif ratingIndex == CR_PARRY then
		frame.tooltip2 = format(CR_PARRY_TOOLTIP, effect);
	elseif ratingIndex == CR_BLOCK then
		frame.tooltip2 = format(CR_PARRY_TOOLTIP, effect);
	elseif ratingIndex == CR_HIT_SPELL then
		local temp = ScrubBuster["stats"][name]["stats"]["spell"]["penetration"];
		local pen = temp["base"] + temp["posMod"] + temp["negMod"];
		local text = format(CR_HIT_SPELL_TOOLTIP, level, effect, pen, pen);
		
		local temp = ScrubBuster["stats"][name]["stats"]["spell"]["hitPercent"];
		local totalHit = temp["base"] + temp["posMod"] + temp["negMod"];
		local schools = { "holy", "fire", "nature", "frost", "shadow", "arcane" };
		local highestHit = totalHit;
		local highestSchool;
		for i=1, 6 do
			local tempSchoolHit = ScrubBuster["stats"][name]["stats"]["spell"][schools[i].."HitPercent"];
			local totalSchoolHit = tempSchoolHit["base"] + tempSchoolHit["posMod"] + tempSchoolHit["negMod"];
			if totalSchoolHit > highestHit then
				highestSchool = schools[i]
			end
			highestHit = max(highestHit, totalSchoolHit);
		end
		local tempString;
		if highestSchool then
			tempString = "\n\nTotal generic spell hit chance: %.2f%%\nHighest school (%s) hit chance: %.2f%%"
			text = text..format(tempString, totalHit, highestSchool, highestHit);
		else
			tempString = "\n\nTotal generic spell hit chance: %.2f%%"
			text = text..format(tempString, totalHit);
		end
		text = text.."\n(Hit cap against raid bosses is 16% for spells.)";
		
		frame.tooltip2 = text;
	elseif ratingIndex == CR_CRIT_SPELL then
		local holySchool = 2;
		local holyCritTable = ScrubBuster["stats"][name]["stats"]["spell"]["holyCritPercent"];
		local minCrit = holyCritTable["base"] + holyCritTable["posMod"] + holyCritTable["negMod"];
		frame.spellCrit = { };
		frame.spellCrit[holySchool] = minCrit;
		local spellCrit;
		local schools = { "gay", "holy", "fire", "nature", "frost", "shadow", "arcane" };
		
		for i=(holySchool+1), MAX_SPELL_SCHOOLS do
			local critTable = ScrubBuster["stats"][name]["stats"]["spell"][schools[i].."CritPercent"];
			spellCrit = critTable["base"] + critTable["posMod"] + critTable["negMod"];
			minCrit = min(minCrit, spellCrit);
			frame.spellCrit[i] = spellCrit;
		end
		minCrit = format("%.2f%%", minCrit);
		frame.minCrit = minCrit;
	elseif ratingIndex == CR_EXPERTISE then
		frame.tooltip2 = format(CR_EXPERTISE_TOOLTIP, effect);
	else
		frame.tooltip2 = HIGHLIGHT_FONT_COLOR_CODE..getglobal("COMBAT_RATING_NAME"..ratingIndex).." "..total;
	end
	frame:Show();
end

function SBStatFrame_SetMeleeCritChance(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(MELEE_CRIT_CHANCE..":");
	local text = getglobal(frame:GetName().."StatText");
	local critTable = ScrubBuster["stats"][name]["stats"]["melee"]["critPercent"];
	local critChance = critTable["base"] + critTable["posMod"] + critTable["negMod"];
	critTable = ScrubBuster["stats"][name]["stats"]["melee"]["mainHandCritPercent"];
	local mhCritChance = critTable["base"] + critTable["posMod"] + critTable["negMod"];
	critTable = ScrubBuster["stats"][name]["stats"]["melee"]["offHandCritPercent"];
	local ohCritChance = critTable["base"] + critTable["posMod"] + critTable["negMod"];
	
	critChance = math.max(critChance, mhCritChance, ohCritChance);
	
	critChance = format("%.2f%%", critChance);
	text:SetText(critChance);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..MELEE_CRIT_CHANCE.." "..critChance..FONT_COLOR_CODE_CLOSE;
	local ratingTable = ScrubBuster["stats"][name]["stats"]["melee"]["critRating"];
	local critRating = ratingTable["base"] + ratingTable["posMod"] + ratingTable["negMod"];
	local critRatingEffect = StatLogic:GetEffectFromRating(critRating, 9, level);
	frame.tooltip2 = format(CR_CRIT_MELEE_TOOLTIP, critRating, critRatingEffect);
end

function SBStatFrame_SetRangedCritChance(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(RANGED_CRIT_CHANCE..":");
	local text = getglobal(frame:GetName().."StatText");
	local critTable = ScrubBuster["stats"][name]["stats"]["ranged"]["critPercent"];
	local critChance = critTable["base"] + critTable["posMod"] + critTable["negMod"];
	critChance = format("%.2f%%", critChance);
	text:SetText(critChance);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..RANGED_CRIT_CHANCE.." "..critChance..FONT_COLOR_CODE_CLOSE;
	local ratingTable = ScrubBuster["stats"][name]["stats"]["ranged"]["critRating"];
	local critRating = ratingTable["base"] + ratingTable["posMod"] + ratingTable["negMod"];
	local critRatingEffect = StatLogic:GetEffectFromRating(critRating, 10, level);
	frame.tooltip2 = format(CR_CRIT_RANGED_TOOLTIP, critRating, critRatingEffect);
end

function SBStatFrame_SetSpellBonusHealing(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);

	getglobal(frame:GetName().."Label"):SetText(BONUS_HEALING..":");
	local text = getglobal(frame:GetName().."StatText");
	local temp = ScrubBuster["stats"][name]["stats"]["spell"]["healing"];
	local bonusHealing = temp["base"] + temp["posMod"] + temp["negMod"];
	bonusHealing = floor(bonusHealing);
	text:SetText(bonusHealing);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..BONUS_HEALING..FONT_COLOR_CODE_CLOSE;
	frame.tooltip2 = format(BONUS_HEALING_TOOLTIP, bonusHealing);
	frame:Show();
end

--[[function SBStatFrame_SetSpellPenetration(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(SPELL_PENETRATION..":");
	local text = getglobal(frame:GetName().."StatText");
	local temp = ScrubBuster["stats"][name]["stats"]["spell"]["penetration"]
end]]

function SBStatFrame_SetSpellCritChance(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(SPELL_CRIT_CHANCE..":");
	local text = getglobal(frame:GetName().."StatText");

	local holySchool = 2;
	local holyCritTable = ScrubBuster["stats"][name]["stats"]["spell"]["holyCritPercent"];
	local minCrit = holyCritTable["base"] + holyCritTable["posMod"] + holyCritTable["negMod"];
	local tempcr = ScrubBuster["stats"][name]["stats"]["spell"]["critRating"];
	local critRating = tempcr["base"] + tempcr["posMod"] + tempcr["negMod"];
	frame.critRating = critRating;
	frame.spellCrit = { };
	frame.spellCrit[holySchool] = minCrit;
	local spellCrit;
	local schools = { "gay", "holy", "fire", "nature", "frost", "shadow", "arcane" };
	
	for i=(holySchool+1), MAX_SPELL_SCHOOLS do
		local critTable = ScrubBuster["stats"][name]["stats"]["spell"][schools[i].."CritPercent"];
		spellCrit = critTable["base"] + critTable["posMod"] + critTable["negMod"];
		minCrit = min(minCrit, spellCrit);
		frame.spellCrit[i] = spellCrit;
	end
	minCrit = format("%.2f%%", minCrit);
	frame.minCrit = minCrit;
	text:SetText(minCrit);
	frame:Show();
end

function SBStatFrame_SetSpellHaste(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(SPELL_HASTE..":");
	local text = getglobal(frame:GetName().."StatText");
	local temp = ScrubBuster["stats"][name]["stats"]["spell"]["hasteRating"];
	local hasteRating = temp["base"] + temp["posMod"] + temp["negMod"]
	local hasteEffect = StatLogic:GetEffectFromRating(hasteRating, 20, level);
	text:SetText(hasteRating);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..SPELL_HASTE..FONT_COLOR_CODE_CLOSE;
	frame.tooltip2 = format(SPELL_HASTE_TOOLTIP, hasteEffect);
	frame:Show();
end

function SBStatFrame_SetManaRegen(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	local _,unitClass = UnitClass(unit);
	
	getglobal(frame:GetName().."Label"):SetText(MANA_REGEN..":");
	local text = getglobal(frame:GetName().."StatText");
	if not ClassHasMana[unitClass] then
		text:SetText(NOT_APPLICABLE);
		frame.tooltip = nil;
		return;
	end
	
	local temp1 = ScrubBuster["stats"][name]["stats"]["resource"]["manaRegen"];
	local temp2 = ScrubBuster["stats"][name]["stats"]["resource"]["manaRegenWhileCasting"];
	local base = temp1["base"] + temp1["posMod"] + temp1["negMod"];
	local casting = temp2["base"] + temp2["posMod"] + temp2["negMod"];
	
	base = floor(base);
	casting = floor(casting);
	text:SetText(base);
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..MANA_REGEN..FONT_COLOR_CODE_CLOSE;
	frame.tooltip2 = format(MANA_REGEN_TOOLTIP, base, casting)
	frame:Show();
end

function SBStatFrame_SetExpertise(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	local meleeStats = ScrubBuster["stats"][name]["stats"]["melee"];
	local mhExpertise = meleeStats["mainHandExpertise"]["base"] + meleeStats["mainHandExpertise"]["posMod"] + meleeStats["mainHandExpertise"]["negMod"];
	local ohExpertise = meleeStats["offHandExpertise"]["base"] + meleeStats["offHandExpertise"]["posMod"] + meleeStats["offHandExpertise"]["negMod"];
	local hasOffHand = ScrubBuster["stats"][name]["weaponStats"]["offHand"]["isWeapon"];
	local text;
	if hasOffHand then
		text = mhExpertise.." / "..ohExpertise;
	else
		text = mhExpertise;
	end
	SBStatFrame_SetLabelAndText(frame, STAT_EXPERTISE, text);
	
	frame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..getglobal("COMBAT_RATING_NAME"..CR_EXPERTISE).." "..text..FONT_COLOR_CODE_CLOSE;
	
	local mhExpertisePercent = mhExpertise / 4;
	local ohExpertisePercent = ohExpertise / 4;
	mhExpertisePercent = format("%.2f", mhExpertisePercent);
	if hasOffHand then
		ohExpertisePercent = format("%.2f", ohExpertisePercent);
		text = mhExpertisePercent.."% / "..ohExpertisePercent.."%";
	else
		text = mhExpertisePercent.."%";
	end
	local expertiseRating = meleeStats["expertiseRating"]["base"] + meleeStats["expertiseRating"]["posMod"] + meleeStats["expertiseRating"]["negMod"];
	local ratingEffect = StatLogic:GetEffectFromRating(expertiseRating, 24, level);
	frame.tooltip2 = format(CR_EXPERTISE_TOOLTIP, text, expertiseRating, ratingEffect);
	
	frame:Show();
end

function SBStatFrame_SetSpellBonusDamage(frame)
	local unit = InspectFrame.unit;
	local level = UnitLevel(unit);
	if level == -1 then level = 70 end
	local name = UnitName(unit);
	
	getglobal(frame:GetName().."Label"):SetText(BONUS_DAMAGE..":");
	local text = getglobal(frame:GetName().."StatText");
	local holySchool = 2;

	local schools = { "gay", "holy", "fire", "nature", "frost", "shadow", "arcane" };
	-- Start at 2 to skip physical damage??
	local spellStats = ScrubBuster["stats"][name]["stats"]["spell"]
	local holyDmgTable = spellStats["holyDamage"]
	local minModifier = holyDmgTable["base"] + holyDmgTable["posMod"] + holyDmgTable["negMod"];
	minModifier = floor(minModifier);
	frame.bonusDamage = {};
	frame.bonusDamage[holySchool] = minModifier;
	local bonusDamage;
	for i=(holySchool+1), MAX_SPELL_SCHOOLS do
		local dmgTable = spellStats[schools[i].."Damage"];
		bonusDamage = dmgTable["base"] + dmgTable["posMod"] + dmgTable["negMod"];
		bonusDamage = floor(bonusDamage);
		minModifier = min(minModifier, bonusDamage);
		frame.bonusDamage[i] = bonusDamage;
	end
	text:SetText(minModifier);
	frame.minModifier = minModifier;
	frame:Show();		
end

function SBStatFrame_GetRating(index, unit)
--gets the rating from the statstable. returns base, posMod, negMod
--index has to be the stat index number, no strings allowed.
--I swear I will error if you give me a fucking string, faggot.
	local base, posMod, negMod;
	local name = UnitName(unit);
	local stats = ScrubBuster["stats"][name]["stats"];
	local rating;
	
	if index == 2 then
		rating = stats["defense"]["defenseRating"];
	elseif index == 3 then
		rating = stats["defense"]["dodgeRating"];
	elseif index == 4 then
		rating = stats["defense"]["parryRating"];
	elseif index == 5 then
		rating = stats["defense"]["blockRating"];
	elseif index == 6 or index == 7 then
		rating = stats["physical"]["hitRating"];
	elseif index == 8 then
		rating = stats["spell"]["hitRating"];
	elseif index == 9 then
		rating = stats["melee"]["critRating"];
	elseif index == 10 then
		rating = stats["ranged"]["critRating"];
	elseif index == 11 then
		rating = stats["spell"]["critRating"];
	elseif index == 15 then
		rating = stats["defense"]["resilience"];
	elseif index == 18 then
		rating = stats["physical"]["hasteRating"];
	elseif index == 20 then
		rating = stats["spell"]["hasteRating"];
	elseif index == 24 then
		rating = stats["melee"]["expertiseRating"];
	end
	base = rating["base"];
	posMod = rating["posMod"];
	negMod = rating["negMod"];
	
	return base, posMod, negMod;
end

function SBDamageFrame_OnEnter()
	-- Main hand weapon
	GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
	GameTooltip:SetText(INVTYPE_WEAPONMAINHAND, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	GameTooltip:AddDoubleLine(ATTACK_SPEED_COLON, format("%.2f", this.attackSpeed), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	GameTooltip:AddDoubleLine(DAMAGE_COLON, this.damage, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	GameTooltip:AddDoubleLine(DAMAGE_PER_SECOND, format("%.1f", this.dps), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	-- Check for offhand weapon
	if ( this.offhandAttackSpeed ) then
		GameTooltip:AddLine("\n");
		GameTooltip:AddLine(INVTYPE_WEAPONOFFHAND, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
		GameTooltip:AddDoubleLine(ATTACK_SPEED_COLON, format("%.2f", this.offhandAttackSpeed), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
		GameTooltip:AddDoubleLine(DAMAGE_COLON, this.offhandDamage, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
		GameTooltip:AddDoubleLine(DAMAGE_PER_SECOND, format("%.1f", this.offhandDps), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	end
	GameTooltip:Show();
end

function SBRangedDamageFrame_OnEnter()
	if ( not this.damage ) then
		return;
	end
	GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
	GameTooltip:SetText(INVTYPE_RANGED, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	GameTooltip:AddDoubleLine(ATTACK_SPEED_COLON, format("%.2f", this.attackSpeed), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	GameTooltip:AddDoubleLine(DAMAGE_COLON, this.damage, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	GameTooltip:AddDoubleLine(DAMAGE_PER_SECOND, format("%.1f", this.dps), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	GameTooltip:Show();
end

function SBSpellBonusDamage_OnEnter()
	GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
	GameTooltip:SetText(HIGHLIGHT_FONT_COLOR_CODE..BONUS_DAMAGE.." "..this.minModifier..FONT_COLOR_CODE_CLOSE);
	for i=2, MAX_SPELL_SCHOOLS do
		GameTooltip:AddDoubleLine(getglobal("DAMAGE_SCHOOL"..i), this.bonusDamage[i], NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
		GameTooltip:AddTexture("Interface\\PaperDollInfoFrame\\SpellSchoolIcon"..i);
	end

	GameTooltip:Show();
end

function SBSpellCritChance_OnEnter()
	GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
	GameTooltip:SetText(HIGHLIGHT_FONT_COLOR_CODE..COMBAT_RATING_NAME11.." "..this.critRating..FONT_COLOR_CODE_CLOSE);
	local spellCrit;
	for i=2, MAX_SPELL_SCHOOLS do
		spellCrit = format("%.2f", this.spellCrit[i]);
		spellCrit = spellCrit.."%";
		GameTooltip:AddDoubleLine(getglobal("DAMAGE_SCHOOL"..i), spellCrit, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
		GameTooltip:AddTexture("Interface\\PaperDollInfoFrame\\SpellSchoolIcon"..i);
	end
	GameTooltip:Show();
end

function SBStatFrame_SetLabelAndText(frame, label, text, isPercentage)
	getglobal(frame:GetName().."Label"):SetText(label..":");
	if isPercentage then
		text = format("%.2f%%", text);
	end
	getglobal(frame:GetName().."StatText"):SetText(text);
end

function SBStatFrame_FormatStat(statName, baseStat, posMod, negMod, frame, textString)
	local totalStat = max(0, baseStat + posMod + negMod);
	local text = HIGHLIGHT_FONT_COLOR_CODE..statName.." "..math.floor(totalStat);
	if posMod == 0 and negMod == 0 then
		text = text..FONT_COLOR_CODE_CLOSE;
		textString:SetText(math.floor(totalStat));
	else
		if posMod > 0 or negMod < 0 then
			text = text.." ("..math.floor(baseStat)..FONT_COLOR_CODE_CLOSE;
		end
		if ( posMod > 0 ) then
			text = text..GREEN_FONT_COLOR_CODE.."+"..math.floor(posMod)..FONT_COLOR_CODE_CLOSE;
		end
		if negMod < 0 then
			text = text..RED_FONT_COLOR_CODE.." "..math.floor(negMod)..FONT_COLOR_CODE_CLOSE;
		end
		if posMod > 0 or negMod < 0 then
			text = text..HIGHLIGHT_FONT_COLOR_CODE..")"..FONT_COLOR_CODE_CLOSE;
		end
		
		--If there are negative modifiers the main number is always red
		--if there's only positive modifiers it's green
		if negMod < 0 then
			textString:SetText(RED_FONT_COLOR_CODE..math.floor(totalStat)..FONT_COLOR_CODE_CLOSE);
		else
			textString:SetText(GREEN_FONT_COLOR_CODE..math.floor(totalStat)..FONT_COLOR_CODE_CLOSE);
		end
	end
	frame.tooltip = text;
end


--Hooks, need to be called after the functions they reference are prototyped
hooksecurefunc("InspectFrame_Show", SBInspectFrame_Show);
hooksecurefunc("InspectFrame_UnitChanged", SBInspectFrame_UnitChanged);
hooksecurefunc("ScrubBuster_StatsDone", SBInspectFrame_Update);
InspectFrame:HookScript("OnHide", SBInspectFrame_OnHide);

--Create event handler
local f = CreateFrame("Frame", "SBInspectFrame", UIParent);
f:SetScript("OnEvent", SBInspectFrame_OnEvent);
f:RegisterEvent("UNIT_INVENTORY_CHANGED");