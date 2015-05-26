local vehicleDataTableForTent = {
{"Wood Pile"},
{"Bandage"},
{"Water Bottle"},
{"Pasta Can"},
{"Beans Can"},
{"Burger"},
{"Box of Matches"},
{"M911"},
{"M9 SD"},
{"Winchester 1866"},
{"PDW"},
{"Hunting Knife"},
{"Morphine"},
{"Hatchet"},
{"Pizza"},
{"Soda Bottle"},
{"Empty Gas Canister"},
{"Full Gas Canister"},
{"Roadflare"},
{"Milk"},
{"Tear Gas"},
{"Grenade"},
{"Desert Eagle"},
{"Sawn-Off Shotgun"},
{"SPAZ-12 Combat Shotgun"},
{"MP5A5"},
{"Watch"},
{"Medic Kit"},
{"Heat Pack"},
{"Lee Enfield"},
{"AK-47"},
{"Blood Bag"},
{"GPS"},
{"Map"},
{"Toolbox"},
{"Wire Fence"},
{"Tire"},
{"Engine"},
{"Tank Parts"},
{"CZ 550 Mag"},
{"M4"},
{"CZ 550"},
{"Satchel"},
{"Infrared Goggles"},
{"Night Vision Goggles"},
{"Tent"},
{"Raw Meat"},
{"Cooked Meat"},
{"Camouflage Clothing"},
{"Ghillie Suit"},
{"Civilian Clothing"},
{"Survivor Clothing"},
{"Painkiller"},
{"Binoculars"},
{"Empty Water Bottle"},
{"Empty Soda Cans"},
{"Scruffy Burgers"},
{"Assault Pack (ACU)"},
{"Alice Pack"},
{"Radio Device"},
{"Coyote Backpack"},
{"Czech Backpack"},
{"Baseball Bat"},
{"Shovel"},
{"Golf Club"},
{"Compass"},

{"Mosin 9130"},
{"Sporter 22"},
{"Crossbow"},
{"SKS"},
{"Blaze 95 Double Rifle"},
{"Remington 870"},
{"FN FAL"},
{"G36C"},
{"Sa58V CCO"},
{"SVD Dragunov"},
{"DMR"},
{"Bizon PP-19"},
{"Revolver"},
{"Machete"},
{"Crowbar"},

{".45 ACP Cartridge"},
{"9x19mm SD Cartridge"},
{"9x19mm Cartridge"},
{"9x18mm Cartridge"},
{"5.45x39mm Cartridge"},
{"5.56x45mm Cartridge"},
{"1866 Slug"},
{"2Rnd. Slug"},
{"12 Gauge Pellet"},
{"9.3x62mm Cartridge"},
{".303 British Cartridge"},
{"Bolt"},

{"Ghillie Backpack"},
{"OS Backpack"},

-- [[ PRIMARY WEAPONS ]] --
{"M4 Blueprint"},
{"CZ 550 Blueprint"},
{"Winchester 1866 Blueprint"},
{"SPAZ-12 C. Shtgn. Blueprint"},
{"Sawn-Off Shtgn. Blueprint"},
{"AK-47 Blueprint"},
{"Lee Enfield Blueprint"},

-- [[ SECONDARY WEAPONS ]]-- 
{"M1911 Blueprint"},
{"M9 SD Blueprint"},
{"PDW Blueprint"},
{"MP5A5 Blueprint"},
{"Desert Eagle Blueprint"},
{"Hunting Knife Blueprint"},
{"Hatchet Blueprint"},
{"Baseball Bat Blueprint"},
{"Shovel Blueprint"},
{"Golf Club Blueprint"},

-- [[ SPECIAL WEAPONS ]] --
{"Parachute Blueprint"},
{"Tear Gas Blueprint"},
{"Grenade Blueprint"},
{"Binoculars Blueprint"},

-- [[ AMMO ]] --
{"M1911 Mag Blueprint"},
{"M9 SD Mag Blueprint"},
{"Desert Eagle Mag Blueprint"},
{"PDW Mag Blueprint"},
{"MP5A5 Mag Blueprint"},
{"AK Mag Blueprint"},
{"M4 Mag Blueprint"},
{"1866 Slug Blueprint"},
{"2Rnd. Slug Blueprint"},
{"SPAZ-12 Pellet Blueprint"},
{"CZ 550 Mag Blueprint"},
{"Lee Enfield Mag Blueprint"},

-- [[ ITEMS ]] --
{"Medic Kit Blueprint"},
{"Wire Fence Blueprint"},
{"Tent Blueprint"},
{"Camouflage Clthng. Blueprint"},
{"Survivor Clthng. Blueprint"},
{"Civilian Clthng. Blueprint"},
{"Ghillie Suit Blueprint"},
{"Roadflare Blueprint"},

-- [[ TOOLBELT ]] --
{"Toolbox Blueprint"},
{"Radio Device Blueprint"},
{"Infrared Goggles Blueprint"},
{"Night Vision Goggles Blueprint"},

-- [[ BLUEPRINT PARTS ]] --
{"Gun Barrel"},
{"Short Gun Barrel"},
{"Gun Stock"},
{"Thread"},
{"Cloth"},
{"Gun Powder"},
{"Mechanical Supplies"},
{"Cables"},
{"Nails"},
{"Sheet"},
{"Barbed Wire"},
{"Duct Tape"},
{"Glue"},
{"Drugs"},
{"Bandaid"},
{"Vitamins"},
{"Tissue"},
{"Small Box"},
{"String"},
{"Needle"},
{"Microchips"},
{"Optics"},
{"Sharp Metal"},
{"Handle"},
{"Wooden Stick"},
{"Hand Saw"},
{"Metal Plate"},
{"Metallic Stick"},
{"Small Casing"},
}

weaponAmmoTable = {
[".45 ACP Cartridge"] = {
{"M1911",22},
{"Desert Eagle",24},
{"Revolver",24},
},

["9x19mm SD Cartridge"] = {
{"M9 SD",23},
},

["9x19mm Cartridge"] = {
{"PDW",28},
},

["9x18mm Cartridge"] = {
{"MP5A5",29},
{"Bizon PP-19",29},
},

["5.45x39mm Cartridge"] = {
{"AK-47",30},
{"FN FAL",30},
{"G36C",30},
{"Sa58V CCO",30},
},

["5.56x45mm Cartridge"] = {
{"M4",31},
},

["1866 Slug"] = {
{"Winchester 1866",25},
},

["2Rnd. Slug"] = {
{"Sawn-Off Shotgun",26},
{"Blaze 95 Double Rifle",25},
},

["12 Gauge Pellet"] = {
{"SPAZ-12 Combat Shotgun",27},
{"Remington 870",27},
},

["9.3x62mm Cartridge"] = {
{"CZ 550",34},
{"DMR",34},
{"SVD Dragunov",34},
},

[".303 British Cartridge"] = {
{"Lee Enfield",33},
{"Sporter 22",33},
{"Mosin 9130",33},
{"SKS",33},
},

["M136 Rocket"] = {
{"Heat-Seeking RPG",36},
{"M136 Rocket Launcher",35},
},

["Bolt"] = {
{"Crossbow",25},
},

["others"] = {
{"Parachute",46},
{"Satchel",39},
{"Tear Gas",17},
{"Grenade",16},
{"Hunting Knife",4},
{"Hatchet",8},
{"Binoculars",43},
{"Baseball Bat",5},
{"Shovel",6},
{"Golf Club",2},
{"Machete",8},
{"Crowbar",2},
},
}

function getWeaponAmmoType (weaponName,notOthers)
	if not notOthers then
		for i,weaponData in ipairs(weaponAmmoTable["others"]) do
			if weaponName == weaponData[1] then
				return weaponData[1],weaponData[2]
			end
		end
	end	
	for i,weaponData in ipairs(weaponAmmoTable[".45 ACP Cartridge"]) do
        if weaponName == weaponData[1] then
            return ".45 ACP Cartridge",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["9x19mm SD Cartridge"]) do
        if weaponName == weaponData[1] then
            return "9x19mm SD Cartridge",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["9x19mm Cartridge"]) do
        if weaponName == weaponData[1] then
            return "9x19mm Cartridge",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["9x18mm Cartridge"]) do
        if weaponName == weaponData[1] then
            return "9x18mm Cartridge",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["5.45x39mm Cartridge"]) do
        if weaponName == weaponData[1] then
            return "5.45x39mm Cartridge",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["5.56x45mm Cartridge"]) do
        if weaponName == weaponData[1] then
            return "5.56x45mm Cartridge",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["1866 Slug"]) do
        if weaponName == weaponData[1] then
            return "1866 Slug",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["12 Gauge Pellet"]) do
        if weaponName == weaponData[1] then
            return "12 Gauge Pellet",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["2Rnd. Slug"]) do
        if weaponName == weaponData[1] then
            return "2Rnd. Slug",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["9.3x62mm Cartridge"]) do
        if weaponName == weaponData[1] then
            return "9.3x62mm Cartridge",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable[".303 British Cartridge"]) do
        if weaponName == weaponData[1] then
            return ".303 British Cartridge",weaponData[2]
        end
    end
    for i,weaponData in ipairs(weaponAmmoTable["M136 Rocket"]) do
        if weaponName == weaponData[1] then
            return "M136 Rocket",weaponData[2]
        end
    end
	for i,weaponData in ipairs(weaponAmmoTable["Bolt"]) do
		if weaponName == weaponData[1] then
			return "Bolt",weaponData[2]
		end
	end
	return false
end

function rearmPlayerWeapon (weaponName,slot)
	takeAllWeapons (source)
	--Rearm
	local ammoData,weapID = getWeaponAmmoType (weaponName)
	if getElementData(source,ammoData) <= 0 then triggerClientEvent (source, "displayClientInfo", source,"Rearm",shownInfos["nomag"],255,22,0) return end
	setElementData(source,"currentweapon_"..slot,weaponName)
	--Old Weapons
	local weapon = getElementData(source,"currentweapon_1")
	if weapon then
		local ammoData,weapID = getWeaponAmmoType (weapon)
		giveWeapon(source,weapID,getElementData(source,ammoData), true )
	end
	local weapon = getElementData(source,"currentweapon_2")
	if weapon then
		local ammoData,weapID = getWeaponAmmoType (weapon)
		giveWeapon(source,weapID,getElementData(source,ammoData), false )
	end
	local weapon = getElementData(source,"currentweapon_3")
	if weapon then
		local ammoData,weapID = getWeaponAmmoType (weapon)
		giveWeapon(source,weapID,getElementData(source,ammoData), false )
	end
	if elementWeaponBack[source] then
		detachElementFromBone(elementWeaponBack[source])
		destroyElement(elementWeaponBack[source])
		elementWeaponBack[source] = false
	end	
	setElementModel(source, getElementData(source,"skin"))
end
addEvent("onPlayerRearmWeapon",true)
addEventHandler("onPlayerRearmWeapon",getRootElement(),rearmPlayerWeapon)

weaponIDtoObjectID = {
{30,355},
{31,356},
{25,349},
{26,350},
{27,351},
{33,357},
{34,358},
{36,360},
{35,359},
{2,333},
{5,336},
{6,337},
}

function getWeaponObjectID (weaponID)
	for i,weaponData in ipairs(weaponIDtoObjectID) do
		if weaponID == weaponData[1] then
			return weaponData[2]
		end
	end
end	

--attaches
local elementBackpack = {}
function backPackBack (dataName,oldValue)
	if getElementType(source) == "player" and dataName =="MAX_Slots" then
		local newValue = getElementData(source,dataName)
		if elementBackpack[source] then
			detachElementFromBone(elementBackpack[source])
			destroyElement(elementBackpack[source])
			elementBackpack[source] = false
		end
		local x,y,z = getElementPosition(source)
		local rx,ry,rz = getElementRotation(source)
		if newValue == 18 then
			elementBackpack[source] = createObject(3026,x,y,z)
		elseif newValue == 25 then
			elementBackpack[source] = createObject(1248,x,y,z)
		elseif newValue == 36 then
			elementBackpack[source] = createObject(1575,x,y,z)
		elseif newValue == 64 then
			elementBackpack[source] = createObject(1252,x,y,z)
		elseif newValue == 45 then
			elementBackpack[source] = createObject(1275,x,y,z)
		elseif newValue == 100 then
			elementBackpack[source] = createObject(1644,x,y,z)
		elseif newValue == 8 then
			return
		end
		if newValue == 36 then
			attachElementToBone(elementBackpack[source],source,3,0,-0.16,0.05,270,0,180)
		else
			attachElementToBone(elementBackpack[source],source,3,0,-0.225,0.05,90,0,0)
		end
	end	
end
addEventHandler ( "onElementDataChange", getRootElement(), backPackBack )

function backpackRemoveQuit ()
	if elementBackpack[source] then
		detachElementFromBone(elementBackpack[source])
		destroyElement(elementBackpack[source])
	end
	if elementWeaponBack[source] then
		detachElementFromBone(elementWeaponBack[source])
		destroyElement(elementWeaponBack[source])	
		elementWeaponBack[source] = false
	end	
end
addEventHandler ( "onPlayerQuit", getRootElement(), backpackRemoveQuit )

elementWeaponBack = {}
function weaponSwitchBack ( previousWeaponID, currentWeaponID )
	local weapon1 = getElementData(source,"currentweapon_1")
	if not weapon1 then return end
	local ammoData1,weapID1 = getWeaponAmmoType(weapon1)
	local x,y,z = getElementPosition(source)
	local rx,ry,rz = getElementRotation(source)
	if previousWeaponID == weapID1 then
		if elementWeaponBack[source] then
			detachElementFromBone(elementWeaponBack[source])
			destroyElement(elementWeaponBack[source])
			elementWeaponBack[source] = false
		end
		elementWeaponBack[source] = createObject(getWeaponObjectID(weapID1),x,y,z)
		setObjectScale(elementWeaponBack[source],0.875)
		if elementBackpack[source] then
			attachElementToBone(elementWeaponBack[source],source,3,0.19,-0.31,-0.1,0,270,-90)
		else
			attachElementToBone(elementWeaponBack[source],source,3,0.19,-0.11,-0.1,0,270,10)
		end
	elseif currentWeaponID == weapID1 then
		detachElementFromBone(elementWeaponBack[source])
		destroyElement(elementWeaponBack[source])
		elementWeaponBack[source] = false
	end
end
addEventHandler ( "onPlayerWeaponSwitch", getRootElement(), weaponSwitchBack )

function removeBackWeaponOnDrop ()
	if elementWeaponBack[source] then
		detachElementFromBone(elementWeaponBack[source])
		destroyElement(elementWeaponBack[source])	
		elementWeaponBack[source] = false
	end
end
addEvent("removeBackWeaponOnDrop",true)
addEventHandler("removeBackWeaponOnDrop",getRootElement(),removeBackWeaponOnDrop)

function removeAttachedOnDeath ()
	if elementBackpack[source] then
		detachElementFromBone(elementBackpack[source])
		destroyElement(elementBackpack[source])
	end
	if elementWeaponBack[source] then
		detachElementFromBone(elementWeaponBack[source])
		destroyElement(elementWeaponBack[source])	
		elementWeaponBack[source] = false
	end	
end
addEvent("kilLDayZPlayer",true)
addEventHandler("kilLDayZPlayer",getRootElement(),removeAttachedOnDeath)

function weaponDelete(dataName,oldValue)
	if getElementType(source) == "player" then -- check if the element is a player
		local weapon1 = getElementData(source,"currentweapon_1")
		local weapon2 = getElementData(source,"currentweapon_2")
		local weapon3 = getElementData(source,"currentweapon_3")
		if dataName == weapon1 or dataName == weapon2 or dataName == weapon3 then
			if getElementData (source,dataName) == 0 then
				local ammoData,weapID = getWeaponAmmoType(dataName)
				takeWeapon (source,weapID)
			end
		end
		local weapon1 = getElementData(source,"currentweapon_1")
		local weapon2 = getElementData(source,"currentweapon_2")
		local weapon3 = getElementData(source,"currentweapon_3")
		local ammoData1,weapID1 = getWeaponAmmoType(weapon1)
		local ammoData2,weapID2 = getWeaponAmmoType(weapon2)
		local ammoData3,weapID3 = getWeaponAmmoType(weapon3)
		if dataName == ammoData1 then
			if not oldValue then return end
			local newammo = oldValue - getElementData (source,dataName)
			if newammo == 1 then return end
			if getElementData (source,dataName) < oldValue then
				takeWeapon (source,weapID1,newammo) 
				if elementWeaponBack[source] then
					detachElementFromBone(elementWeaponBack[source])
					destroyElement(elementWeaponBack[source])	
					elementWeaponBack[source] = false
				end	
			elseif getElementData (source,dataName) > oldValue then
				giveWeapon(source,weapID1,getElementData (source,dataName)-oldValue,true)
			end
		end	
		if dataName == ammoData2 then
			if not oldValue then return end
			local newammo = oldValue - getElementData (source,dataName)
			if newammo == 1 then return end
			if getElementData (source,dataName) < oldValue then
				takeWeapon (source,weapID2,newammo) 
			elseif getElementData (source,dataName) > oldValue then
				giveWeapon(source,weapID2,getElementData (source,dataName)-oldValue,false)
			end
		end	
		if dataName == ammoData3 then
			if not oldValue then return end
			local newammo = oldValue - getElementData (source,dataName)
			if newammo == 1 then return end
			if getElementData (source,dataName) < oldValue then
				takeWeapon (source,weapID3,newammo) 
			elseif getElementData (source,dataName) > oldValue then
				giveWeapon(source,weapID3,getElementData (source,dataName)-oldValue,false)
			end	
		end
	end
end
addEventHandler("onElementDataChange",getRootElement(),weaponDelete)

function addPlayerStats (player,data,value)
	if data == "food" then
		local current = getElementData(player,data)
		if current + value > 100 then
			setElementData(player,data,100)
		elseif 	current + value < 1 then
			setElementData(player,data,0)
			setElementData(player,"blood",getElementData(player,"blood")-math.random(50,120))
		else
			setElementData(player,data,current+value)
		end
	elseif data == "thirst" then
		local current = getElementData(player,data)
		if current + value > 100 then
			setElementData(player,data,100)
		elseif 	current + value < 1 then
			setElementData(player,data,0)
			setElementData(player,"blood",getElementData(player,"blood")-math.random(50,120))
		else
			setElementData(player,data,current+value)
		end
	elseif data == "blood" then
		local current = getElementData(player,data)
		if current + value > 12000 then
			setElementData(player,data,12000)
		elseif 	current + value < 1 then
			setElementData(player,data,0)
		else
			setElementData(player,data,current+value)
		end
	elseif data == "temperature" then
		local current = getElementData(player,data)
		if current + value > 41 then
			setElementData(player,data,41)
		elseif 	current + value <= 31 then
			setElementData(player,data,31)
		else
			setElementData(player,data,current+value)
		end
	elseif data == "humanity" then
		local current = getElementData(player,data)
		if current + value > 5000 then
			setElementData(player,data,5000)
		else
			setElementData(player,data,current+value)
		end		
	end
end

function checkTemperature()
	for i,player in ipairs(getElementsByType("player")) do
		if getElementData(player,"logedin") then
			value = 0
			if getWeather == 7 then
				value = -0.1
			elseif getWeather == 12 then
				value = 0
			elseif getWeather == 16 then
				value = -0.4
			elseif getWeather == 4 then
				value = -0.1
			end
			local hour, minutes = getTime()
			if hour >= 21 and hour <= 8 then
				value = value-0.05
			end
			addPlayerStats (player,"temperature",value)
		end
	end	
end
setTimer(checkTemperature,60000,0)

function checkTemperature2()
	for i,player in ipairs(getElementsByType("player")) do
		if getElementData(player,"logedin") then
			value = 0
			if isElementInWater(player) then
				value = gameplayVariables["temperaturewater"]
			end	
			if getControlState (player,"sprint") then
				value = value+gameplayVariables["temperaturesprint"]
			end
			if isPedInVehicle(player) then
				value = value+0.5
			addPlayerStats (player,"temperature",value)
			end
		end	
	end
end
setTimer(checkTemperature2,10000,0)

function setHunger()
	for i,player in ipairs(getElementsByType("player")) do
		if getElementData(player,"logedin") then
			value = gameplayVariables["loseHunger"]
			addPlayerStats (player,"food",value)
		end	
	end
end
setTimer(setHunger,60000,0)

function setThirsty()
	for i,player in ipairs(getElementsByType("player")) do
		if getElementData(player,"logedin") then
			value = gameplayVariables["loseThirst"]
			addPlayerStats (player,"thirst",value)
		end
	end
end
setTimer(setThirsty,60000,0)

function checkThirsty()
	for i,player in ipairs(getElementsByType("player")) do
		if getElementData(player,"logedin") then
			value = 0
			if getControlState (player,"sprint") then
				value = gameplayVariables["sprintthirst"]
			end	
			addPlayerStats (player,"thirst",value)
		end
	end
end
setTimer(checkThirsty,10000,0)

function checkHumanity()
	for i,player in ipairs(getElementsByType("player")) do
		if getElementData(player,"logedin") then
			if getElementData(player,"humanity") < 2500 then
				addPlayerStats (player,"humanity",30)
				if getElementData(player,"humanity") > 2000 then
					setElementData(player,"bandit",false)
				end
			end
		end	
	end
end
setTimer(checkHumanity,60000,0)

function onPlayerRequestChangingStats(itemName,itemInfo,data)
	if data == "food" then
		if itemName == "Burger" then
			blood = 300
		elseif itemName == "Pizza" then
			blood = 300
		elseif itemName == "Cooked Meat" then
			blood = 800
		elseif itemName == "Beans Can" then
			blood = 200
		elseif itemName == "Pasta Can" then
			blood = 200
		end
		setPedAnimation (source,"FOOD","EAT_Burger",nil,false,false,nil,false)
		setElementData(source,itemName,getElementData(source,itemName)-1)
		addPlayerStats (source,"blood",blood)
		addPlayerStats (source,data,gameplayVariables["foodrestore"])
	elseif data == "thirst" then
		setElementData(source,itemName,getElementData(source,itemName)-1)
		addPlayerStats (source,data,gameplayVariables["thirstrestore"])
		setPedAnimation (source,"VENDING","VEND_Drink2_P",nil,false,false,nil,false) 
		if itemName == "Water Bottle" then
			setElementData(source,"Empty Water Bottle",(getElementData(source,"Empty Water Bottle") or 0)+1)
		end
	end
	triggerClientEvent (source, "displayClientInfo", source,"Food",shownInfos["youconsumed"].." "..itemName,22,255,0)
	triggerClientEvent(source,"refreshInventoryManual",source)
end
addEvent("onPlayerRequestChangingStats",true)
addEventHandler("onPlayerRequestChangingStats",getRootElement(),onPlayerRequestChangingStats)

function onPlayerUseMedicObject(itemName)
	local playersource = source
	setPedAnimation (playersource,"BOMBER","BOM_Plant",nil,false,false,nil,false)
	setTimer( function ()
		if itemName == "Bandage" then
			setElementData(playersource,"bleeding",0)
			setElementData(playersource,itemName,getElementData(playersource,itemName)-1)
		elseif itemName == "Medic Kit" then
			addPlayerStats (playersource,"blood",7000)
			setElementData(playersource,"bleeding",0)
			setElementData(playersource,itemName,getElementData(playersource,itemName)-1)
		elseif itemName == "Heat Pack" then
			setElementData(playersource,"cold",false)
			setElementData(playersource,"temperature",37)
			setElementData(playersource,itemName,getElementData(playersource,itemName)-1)
		elseif itemName == "Painkiller" then
			setElementData(playersource,"pain",false)
			setElementData(playersource,itemName,getElementData(playersource,itemName)-1)
		elseif itemName == "Morphine" then
			setElementData(playersource,"brokenbone",false)
			setElementData(playersource,itemName,getElementData(playersource,itemName)-1)
		elseif itemName == "Blood Bag" then
			addPlayerStats (playersource,"blood",12000)
			setElementData(playersource,itemName,getElementData(playersource,itemName)-1)
		end
	end,1500,1)	
	triggerClientEvent(playersource,"refreshInventoryManual",playersource)
end
addEvent("onPlayerUseMedicObject",true)
addEventHandler("onPlayerUseMedicObject",getRootElement(),onPlayerUseMedicObject)

function onPlayerGiveMedicObject(itemName,player)
	local playersource = source
	setPedAnimation (playersource,"BOMBER","BOM_Plant",nil,false,false,nil,false)
	setTimer( function ()
		if itemName == "bandage" then
			setElementData(player,"bleeding",0)
			setElementData(playersource,"Bandage",getElementData(playersource,"Bandage")-1)
			addPlayerStats (playersource,humanity,40)
		elseif itemName == "giveblood" then
			addPlayerStats (player,"blood",12000)
			setElementData(playersource,"Blood Bag",getElementData(playersource,"Blood Bag")-1)
			addPlayerStats (playersource,humanity,250)
		end
	end,1500,1)	
end
addEvent("onPlayerGiveMedicObject",true)
addEventHandler("onPlayerGiveMedicObject",getRootElement(),onPlayerGiveMedicObject)


skinTable = {
{"Camouflage Clothing",287},
{"Civilian Clothing",179},
{"Ghillie Suit",285},
{"Survivor Clothing",73},
}

function getSkinIDFromName(name)
	for i,skin in ipairs(skinTable) do
		if name == skin[1] then
			return skin[2]
		end
	end
end

function getSkinNameFromID(id)
	for i,skin in ipairs(skinTable) do
		if id == skin[2] then
			return skin[1]
		end
	end
end

function addPlayerSkin(skin)
	local current = getElementData(source,"skin")
	local name = getSkinNameFromID(current)
	--setElementData(source,name,getElementData(source,name)+1)
	setElementData(source,skin,getElementData(source,skin)-1)
	local id = getSkinIDFromName(skin)
	setElementData(source,"skin",id)
	setElementModel(source,id)
	triggerClientEvent(source,"refreshInventoryManual",source)
end
addEvent("onPlayerChangeSkin",true)
addEventHandler("onPlayerChangeSkin",getRootElement(),addPlayerSkin)



function onPlayerRefillWaterBottle (itemName)
	if isElementInWater(source) then
		setElementData(source,"Water Bottle",getElementData(source,"Water Bottle")+1)
		setElementData(source,itemName,getElementData(source,itemName)-1)
		triggerClientEvent(source,"refreshInventoryManual",source)
		triggerClientEvent (source, "displayClientInfo", source,"Water Bottle",shownInfos["filledup"],22,255,0)
	else
		triggerClientEvent (source, "displayClientInfo", source,"Water Bottle",shownInfos["needwatersource"],255,22,0)
	end	
end
addEvent("onPlayerRefillWaterBottle",true)
addEventHandler("onPlayerRefillWaterBottle",getRootElement(),onPlayerRefillWaterBottle)

function getPointFromDistanceRotation(x, y, dist, angle)
 
    local a = math.rad(90 - angle);
 
    local dx = math.cos(a) * dist;
    local dy = math.sin(a) * dist;
 
    return x+dx, y+dy;
 
end

function onPlayerPitchATent (itemName)
	setElementData(source,itemName,getElementData(source,itemName)-1)
	setPedAnimation (source,"BOMBER","BOM_Plant",nil,false,false,nil,false)
	local source = source
	setTimer( function ()		
			local x,y,z = getElementPosition(source)
			local xr,yr,zr = getElementRotation(source)
			px, py, pz = getElementPosition(source)
			prot = getPedRotation(source)
			local offsetRot = math.rad(prot+90)
			local vx = px + 5 * math.cos(offsetRot)
			local vy = py + 5 * math.sin(offsetRot)
			local vz = pz + 2
			local vrot = prot+180
			tent = createObject(3243,vx,vy,z-1,0,0,vrot)
			setObjectScale(tent,1.3)
			tentCol = createColSphere(x,y,z,4)
			attachElements ( tentCol, tent, 0, 0, 0 )
			setElementData(tentCol,"parent",tent)
			setElementData(tent,"parent",tentCol)
			setElementData(tentCol,"tent",true)
			setElementData(tentCol,"vehicle",true)
			setElementData(tentCol,"MAX_Slots",100)
			triggerClientEvent(source,"refreshInventoryManual",source)
	end,1500,1)			
end
addEvent("onPlayerPitchATent",true)
addEventHandler("onPlayerPitchATent",getRootElement(),onPlayerPitchATent)

function onPlayerBuildAWireFence (itemName)
	setElementData(source,itemName,getElementData(source,itemName)-1)
	setPedAnimation (source,"BOMBER","BOM_Plant",nil,false,false,nil,false)
	local source = source
	setTimer( function ()				
			local x,y,z = getElementPosition(source)
			local xr,yr,zr = getElementRotation(source)
			--outputChatBox(zr)
			px, py, pz = getElementPosition(source)
			prot = getPedRotation(source)
			local offsetRot = math.rad(prot+90)
			local vx = px + 1 * math.cos(offsetRot)
			local vy = py + 1 * math.sin(offsetRot)
			local vz = pz + 2
			local vrot = prot+90
			--local x,y = getPointFromDistanceRotation(x,y,5,0)
			tent = createObject(983,vx,vy,pz,xr,yr,vrot)
			setObjectScale(tent,1)
			tentCol = createColSphere(x,y,z,2)
			attachElements ( tentCol, tent, 0, 0, 0 )
			setElementData(tentCol,"parent",tent)
			setElementData(tent,"parent",tentCol)
			setElementData(tentCol,"wirefence",true)
			triggerClientEvent(source,"refreshInventoryManual",source)
	end,1500,1)			
end
addEvent("onPlayerBuildAWireFence",true)
addEventHandler("onPlayerBuildAWireFence",getRootElement(),onPlayerBuildAWireFence)

function removeWirefence (object)
	destroyElement(getElementData(object,"parent"))
	destroyElement(object)
end
addEvent("removeWirefence",true)
addEventHandler("removeWirefence",getRootElement(),removeWirefence)

function removeTent (object)
	local x,y,z = getElementPosition(getElementData(object,"parent"))
	local item,itemString = getItemTablePosition("Tent")
	local itemPickup = createItemPickup(item,x,y,z+1,itemString)
	
	destroyElement(getElementData(object,"parent"))
	destroyElement(object)
end
addEvent("removeTent",true)
addEventHandler("removeTent",getRootElement(),removeTent)

function addPlayerCookMeat ()
	local playersource = source
	setPedAnimation (playersource,"BOMBER","BOM_Plant",nil,false,false,nil,false)
	local meat = getElementData(playersource,"Raw Meat")
	setTimer(function()
			setElementData(playersource,"Raw Meat",0)
			setElementData(playersource,"Cooked Meat",getElementData(playersource,"Cooked Meat")+meat)
			triggerClientEvent (playersource, "displayClientInfo", playersource,"Fireplace","You cooked "..meat.." Raw Meat.",22,255,0)
	end,5000,1)
end
addEvent("addPlayerCookMeat",true)
addEventHandler("addPlayerCookMeat",getRootElement(),addPlayerCookMeat)

function onPlayerMakeAFire (itemName)
	setElementData(source,"Wood Pile",getElementData(source,"Wood Pile")-1)
	local x,y,z = getElementPosition(source)
	local xr,yr,zr = getElementRotation(source)
	px, py, pz = getElementPosition(source)
	prot = getPedRotation(source)
	local offsetRot = math.rad(prot+90)
	local vx = px + 1 * math.cos(offsetRot)
	local vy = py + 1 * math.sin(offsetRot)
	local vz = pz + 2
	local vrot = prot+90
	--local x,y = getPointFromDistanceRotation(x,y,5,0)
	local wood = createObject(1463,vx,vy,pz-0.75,xr,yr,vrot)
	setObjectScale(wood,0.55)
	setElementCollisionsEnabled(wood, false)
	setElementFrozen (wood,true)
	local fire = createObject(3525,vx,vy,pz-0.75,xr,yr,vrot)
	setObjectScale(fire,0)
	local fireCol = createColSphere(x,y,z,2)
	setElementData(fireCol,"parent",wood)
	setElementData(fire,"parent",fireCol)
	setElementData(fireCol,"fireplace",true)
	setElementData(fire,"x",vx)
	setElementData(fire,"y",vy)
	setElementData(fire,"z",pz-0.75)
	triggerClientEvent(source,"refreshInventoryManual",source)
	triggerClientEvent("playCampfireSound",fire)
	setPedAnimation (source,"BOMBER","BOM_Plant",nil,false,false,nil,false)
	setTimer(function()
		triggerClientEvent("stopCampfireSound",fire)
		destroyElement(fireCol)
		destroyElement(fire)
		destroyElement(wood)
	end,120000,1)
end
addEvent("onPlayerMakeAFire",true)
addEventHandler("onPlayerMakeAFire",getRootElement(),onPlayerMakeAFire)

function onPlayerPlaceRoadflare (itemName)
	setElementData(source,itemName,getElementData(source,itemName)-1)
	local x,y,z = getElementPosition(source)
	local object = createObject(354,x,y,z-0.6)
	setTimer(destroyElement,300000,1,object)
	triggerClientEvent(source,"refreshInventoryManual",source)
end
addEvent("onPlayerPlaceRoadflare",true)
addEventHandler("onPlayerPlaceRoadflare",getRootElement(),onPlayerPlaceRoadflare)

function math.round(number, decimals, method)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
    else return tonumber(("%."..decimals.."f"):format(number)) end
end

--------------------------------------------------------
--Chat Systeme					 					  --
--------------------------------------------------------

local chatRadius = 15
local chatEadioRadius = 250
 
function sendMessageToNearbyPlayers( message, messageType )
cancelEvent()
    if (messageType == 0) then
		local posX, posY, posZ = getElementPosition( source )
        local chatSphere = createColSphere( posX, posY, posZ, chatRadius )
        local nearbyPlayers = getElementsWithinColShape( chatSphere, "player" )
        destroyElement( chatSphere )
        for index, nearbyPlayer in ipairs( nearbyPlayers ) do
            outputChatBox("[LOCAL]"..string.gsub((getPlayerName(source).." : "..message), '#%x%x%x%x%x%x', ''),nearbyPlayer, 211,211,211,true ) -- Color changed from 60,200,40 to 211,211,211
        end
	end	
end
addEventHandler( "onPlayerChat", getRootElement(), sendMessageToNearbyPlayers )

function playerRadioChat(playersource,cmd,...)
	if cmd == "radiochat" then
		local msg2 = table.concat({...}, " ")
		if (getElementData(playersource,"Radio Device") or 0) <= 0 then outputChatBox(shownInfos["noradio"],playersource) return end
        local posX, posY, posZ = getElementPosition( playersource )
        local chatSphere = createColSphere( posX, posY, posZ, chatEadioRadius )
        local nearbyPlayers = getElementsWithinColShape( chatSphere, "player" )
        destroyElement( chatSphere )
        for index, nearbyPlayer in ipairs( nearbyPlayers ) do
			if getElementData(nearbyPlayer,"Radio Device") > 0 then
				outputChatBox("[RADIO]"..string.gsub((getPlayerName(playersource).." : "..msg2), '#%x%x%x%x%x%x', ''),nearbyPlayer, 238,238,0,true ) -- Color changed from 60,200,40 to 238,238,0
			end
        end
	end
end
addCommandHandler( "radiochat", playerRadioChat )
 
function blockChatMessage(m,mt)
    if mt == 1 then
		cancelEvent()
	end
end
addEventHandler( "onPlayerChat", getRootElement(), blockChatMessage )


function checkBandit ()
	for i, player in ipairs(getElementsByType("player")) do
		if getElementData(player,"logedin") then
			local current = getElementData(player,"skin")
			if getElementData(player,"bandit") then
				if current == 179 or current == 287 then
					setElementModel(player,288)
				elseif current == 73 then
					setElementModel(player,180)
				end
			elseif getElementData(player,"humanity") == 5000 then
				if current == 73 or current == 179 or current == 287 then
					setElementModel(player,210)
				end
			else
				setElementModel(player,getElementData(player,"skin"))
			end
		end
	end
end
setTimer(checkBandit,20000,0)

local infoTimer = 240000

function outputInfo1 ()
	for i, player in ipairs(getElementsByType("player")) do
		triggerClientEvent (player, "displayClientInfo", player,"Info","You can use the middle mouse button or '-' to do various actions.",200,200,22)
	end
	setTimer(outputInfo2,infoTimer,1)
end
setTimer(outputInfo1,infoTimer,1)

function outputInfo2 ()
	for i, player in ipairs(getElementsByType("player")) do
		triggerClientEvent (player, "displayClientInfo", player,"Info","Encountered a bug? Please report it at our forum: viscera-gaming.com!",200,200,22)
	end
	setTimer(outputInfo3,infoTimer,1)
end

function outputInfo3 ()
	for i, player in ipairs(getElementsByType("player")) do
		triggerClientEvent (player, "displayClientInfo", player,"Info","Visit our forum: viscera-gaming.com!",200,200,22)
	end
	setTimer(outputInfo4,infoTimer,1)
end

function outputInfo4 ()
	for i, player in ipairs(getElementsByType("player")) do
		triggerClientEvent (player, "displayClientInfo", player,"Info","viscera-gaming.com",200,200,22)
	end
	setTimer(outputInfo5,infoTimer,1)
end

function outputInfo5 ()
	for i, player in ipairs(getElementsByType("player")) do
		triggerClientEvent (player, "displayClientInfo", player,"Info","Staff Members online: "..getTeamMemberOnline(),200,200,22)
	end
	setTimer(outputInfo1,infoTimer,1)
end

function getTeamMemberOnline ()
	theTableMembersOnline = ""
	for i,player in ipairs(getElementsByType("player")) do
		local account = getPlayerAccount(player)
		if not isGuestAccount(account) then
			if getElementData(player,"supporter") or getElementData(player,"admin") then
				theTableMembersOnline = theTableMembersOnline..","..getPlayerName(player)
			end
		end
	end
	if theTableMembersOnline == "" then
		return "None"
	else
		return theTableMembersOnline
	end
end

--player Wildcard
function getPlayerWildcard(namePart)
	namePart = string.lower(namePart)
	
	local bestaccuracy = 0
	local foundPlayer, b, e
	for _,player in ipairs(getElementsByType("player")) do
		b,e = string.find(string.lower(string.gsub(getPlayerName(player), "#%x%x%x%x%x%x", "")), namePart)
		if b and e then
			if e-b > bestaccuracy then
				bestaccuracy = e-b
				foundPlayer = player
			end
		end
	end
	
	if (foundPlayer) then
		return foundPlayer
	else
		return false
	end
end

---------------------Set Admin/Supporter--------------------------------------------------
function setGroup (playersource,command,teamName,targetString)
	if (isObjectInACLGroup("user." ..getAccountName(getPlayerAccount(playersource)), aclGetGroup("Admin")))  then
		local foundTargetPlayer = getPlayerWildcard(targetString)
		if (foundTargetPlayer) then
			--Team Strings Rework 
			if teamName == "admin" or teamName == "supporter" or teamName == "remove" then 
				--nüx
			else
				outputChatBox ("#FFFFFFCorrect names are admin, supporter and remove!",playersource,27, 89, 224,true)	
				return
			end
			--Set Player to Teams
			if teamName == "remove" then
				value = false
				account = getPlayerAccount(foundTargetPlayer)
				setAccountData(account,"admin",value)
				setAccountData(account,"supporter",value)
				setElementData(foundTargetPlayer,"admin",value)
				setElementData(foundTargetPlayer,"supporter",value)
			else
				value = true
			end
			account = getPlayerAccount(foundTargetPlayer)
			accountname = getAccountName(account)
			setAccountData(account,teamName,value)
			setElementData(foundTargetPlayer,teamName,value)
			if value == true then
				outputChatBox ("#FFFFFF"..getPlayerName (foundTargetPlayer).." #FF0000 has been promoted to "..teamName.."!",getRootElement(),27, 89, 224,true)
			else
				outputChatBox ("#FFFFFF"..getPlayerName (foundTargetPlayer).." #FF0000 lost his status...",getRootElement(),27, 89, 224,true)
			end
		else
			outputChatBox ("#FFFFFFCan't find player! Did you input the correct name?",playersource,27, 89, 224,true)		
		end
	else
		outputChatBox ("#FFFFFFYou are not an admin!",playersource,27, 89, 224,true)		
	end
end
addCommandHandler("add",setGroup)

function banPLayer (playersource,command,targetString,banTime,reason)
	if getAccountData(getPlayerAccount(playersource),"admin") == true  then
		local foundTargetPlayer = getPlayerWildcard(targetString)
		local banTime = banTime or 0
		local reason = reason or "Unknown"
		if (foundTargetPlayer) then
			local account = getPlayerAccount()
			local ip = getPlayerIP(foundTargetPlayer)
			local serial = getPlayerSerial(foundTargetPlayer)
			local name = getPlayerName(foundTargetPlayer)
			kickPlayer(foundTargetPlayer,playersource,reason)
			addBan (ip,name,serial,playersource,reason,banTime*86400)
			outputChatBox ("#FFFFFF"..name.." #FF0000 has been banned for "..banTime.." Day(Z)'s.",getRootElement(),27, 89, 224,true)
		else
			outputChatBox ("#FFFFFFCan't find player! Did you input the correct name?",playersource,27, 89, 224,true)		
		end
	else
		outputChatBox ("#FFFFFFYou are not an admin! ",playersource,27, 89, 224,true)		
	end
end
addCommandHandler("playerban",banPLayer)

function pmsgAdmin (playersource,command,...)
	local msg = table.concat({...}, " ")
	if getAccountData(getPlayerAccount(playersource),"admin") == true  then
		outputChatBox ("[SERVER] "..msg,getRootElement(),255,0,0,true)	
	else
		outputChatBox ("#FFFFFFYou are not an admin! ",playersource,27, 89, 224,true)		
	end
end
addCommandHandler("pmsg",pmsgAdmin)

	
botSupportTable = {
--Website
{"website","what","","The URL is: www.community.vavegames.net.","","James"},
{"website","where","","The URL is: www.community.vavegames.net.","","James"},
{"website","which","","The URL is: www.community.vavegames.net.","","James"},
{"website","how","","The URL is: www.community.vavegames.net.","","James"},
{"website","got","","The URL is: www.community.vavegames.net.","","James"},
{"website","know","","The URL is: www.community.vavegames.net.","","James"},
--Chat
{"hey","james","","Hey.","","James"},
{"hey","paul","","Yo!.","","Paul"},
{"hey","sandra","","Hello.","","Sandra"},
{"how are","you","james","I am fine, thank you.","","James"},
{"how are","you","paul","Feeling absolutely splendid today, why, thanks!","","Paul"},
{"how are","you","sandra","I am perfectly fine.","","Sandra"},
{"i love","you","sandra","ERROR: Can't access emotions.exe.","Thanks.","Sandra"},
{"thank","you","james","You are welcome.","","James"},
{"thank","paul","you","Hey, that's my job!","","Paul"},
{"thank","sandra","you","You are welcome.","","Sandra"},
--IngameHelp (james)
{"how","use","map","Press F11 to use the map.","","James"},
{"how","use","gps","The GPS activates automatically. You can see it at the lower left corner.","","James"},
{"how","take","items","Press 'J' to open your inventory. Alternatively, you can press the middle mouse button or '-' to pick items up.","","James"},
{"how","open","inven","By pressing 'J', you can open your inventory.","","James"},
--Cyxno
{"drop","item","","Press 'J' to open your inventory, select the item you want to drop and press the arrow pointing to the left.","","Paul"},
{"fuel","car","how","You need an 'Empty Gas Canister'. You can fill it at a gas station.","","Sandra"},
{"pick","items","how","Press the middle mouse button (or '-') when the name of the item is written on the left of your screen.","","Sandra"},
{"fence","wire","destroy","You need a toolbox to destroy a wirefence.","","James"},
{"register","how","to","You need to fill in your name and password. Afterwards, press 'Register'. If it doesn't work, reconnect.","","James"},
{"bugged","stuck","help","Wait until an admin contacts and helps you.","","Sandra"},
--Marwin
{"radio","chat","","Press 'Z' to use the radio device.","","James"},
}



function botCheck (text,player)
	for i, data in ipairs(botSupportTable) do
		 if string.find(text:lower(), data[1]:lower(), 1, true) and string.find(text:lower(), data[2]:lower(), 1, true) and string.find(text:lower(), data[3]:lower(), 1, true) then
			answere = data[4]
			if data[5] ~= "" then
				local randomNumber = math.random(4,5)
				answere = data[randomNumber]
			end
			setTimer(onServerSupportChatMessage,math.random(3000,6000),1,data[6],string.gsub(getPlayerName ( player ), '#%x%x%x%x%x%x', '')..", "..answere)
		end
	end	
end

function onServerSupportChatMessage (player2,text)
	notGoOn = false
	mutedmessage = false
	for i, player in ipairs(getElementsByType("player")) do
		if player2 == "Sandra" or player2 == "James" or player2 == "Paul" then
			triggerClientEvent(player,"onSupportChatMessage",player,player2,text)
			notGoOn = true
		elseif getElementData(player,"supporter") or getElementData(player,"admin") then
			if not getElementData(player2,"admin") then
				if not getElementData(player2,"supporter") then
					if not isPlayerMuted(player2) then
						outputChatBox("#E01BBCNew Support Message by "..getPlayerName(player2),player,255,255,255,true)
					end
				end
			end
		end
		if not notGoOn then
			if not isPlayerMuted(player2) then
				triggerClientEvent(player,"onSupportChatMessage",player,player2,text)
			else
				mutedmessage = true
			end
		end	
	end	
	if not notGoOn then
		botCheck(text,player2)
	end
	if mutedmessage then
		outputChatBox("#2200ddYou are muted!",player2,255,255,255,true)
	end
end
addEvent("onServerSupportChatMessage",true)
addEventHandler("onServerSupportChatMessage", getRootElement(),onServerSupportChatMessage)

--Weapon Property

setWeaponProperty ("m4","poor","maximum_clip_ammo",30)
setWeaponProperty ("m4","std","maximum_clip_ammo",30)
setWeaponProperty ("m4","pro","maximum_clip_ammo",30)

function kickPLayer (playersource,command,targetString,banTime,reason)
	if getAccountData(getPlayerAccount(playersource),"admin") == true  then
		for i,player in ipairs(getElementsByType("player")) do
			if player ~= playersource then
				kickPlayer(player,"Server Script Restart, #Hotfix")
			end
		end
	else
		outputChatBox ("#FFFFFFYou are not an admin! ",playersource,27, 89, 224,true)		
	end
end
addCommandHandler("kickplayer",banPLayer)

function kickAll (playersource,command,reason)
	if (isObjectInACLGroup("user." ..getAccountName(getPlayerAccount(playersource)), aclGetGroup("Admin")))  then
		for i, player in ipairs(getElementsByType("player")) do
			if player == playersource then break end 
			kickPlayer(player,reason)
		end
	else
		outputChatBox ("#FFFFFFYou are not an admin!",playersource,27, 89, 224,true)		
	end
end
addCommandHandler("kickall",kickAll)


--Supportermode
local supporterMode = {}
local foodd = {}
local thirstt = {}

function Supportermode (playersource,command)
	if getAccountData(getPlayerAccount(playersource),"supporter") == true  then
		supporterMode[playersource] = not (supporterMode[playersource] or false)
		if supporterMode[playersource] then
			setElementAlpha(playersource,0)
			setElementFrozen(playersource,true)
			foodd[playersource] = getElementData(playersource,"food")
			thirstt[playersource] = getElementData(playersource,"thirst")
		else
			setElementAlpha(playersource,255)
			setElementFrozen(playersource,false)
		end
	else
		outputChatBox ("#FFFFFFYou are not a supporter, you can't use this command!",playersource,27, 89, 224,true)		
	end
end
addCommandHandler("supportmode",Supportermode)

function StatsSupportermode ()
	for i,player in ipairs(getElementsByType("player")) do
		if supporterMode[player] then
			setElementData (player,"food",foodd[player])
			setElementData (player,"thirst",thirstt[player])
		end
	end	
end
setTimer(StatsSupportermode,60000,0)

function preventCommandSpam(commandName)
	if commandName == "login" or commandName == "logout" then
		cancelEvent()
	end
end
addEventHandler("onPlayerCommand", root, preventCommandSpam)

--Pingkick

function kickPlayerOnHighPing ()
	outputChatBox (getPlayerName(source).." was kicked due to high ping!",getRootElement(),27, 89, 224,true)	
	kickPlayer(source,"Your Ping was straight too high.")
end
addEvent("kickPlayerOnHighPing",true)
addEventHandler("kickPlayerOnHighPing", getRootElement(),kickPlayerOnHighPing)

local handsUp = false
local siting = false
local lying = false
function funcBindHandsup ( player, key, keyState )
	if handsUp then
		setPedAnimation (player,false)
		handsUp = false
	else
		if isPedInVehicle (player) then return end
		setPedAnimation (player,"BEACH","ParkSit_M_loop",nil,true,false,false,false)
		handsUp = true
	end	
end

function funcBindSit ( player, key, keyState )
	if siting then
		setPedAnimation (player,false)
		siting = false
	else
		if isPedInVehicle (player) then return end
		setPedAnimation (player,"SHOP","SHP_Rob_HandsUp",nil,true,true,false,false)
		siting = true
	end	
end

function funcBindLie ( player, key, keyState )
	if lying then
		lying = false
		setPedAnimation(player,"ped","getup_front",-1,false)
		setTimer(function() setPedAnimation (player,false) end,1300,1)
	else
		if isPedInVehicle(player) then return end
		lying = true
		setPedAnimation (player,"ped","FLOOR_hit_f", -1,false)
	end
end

-- STAMINA SYSTEM (EVENTS)

-- Event for changing animation
addEvent("tiredAnimation",true)
addEventHandler("tiredAnimation",root,function(target)
	setPedAnimation ( target, "FAT", "IDLE_tired", -1, true, false )
	setElementData(target, "tired", true)
	setTimer(triggerEvent, 7500, 1, "switchToNormal", root, target )
end)

-- Event for reverting animation
addEvent("switchToNormal",true)
addEventHandler("switchToNormal",root,function(target)
	setPedAnimation(target,false)
	setElementData(target, "tired", false)
end)


function bindTheKeys ()
  bindKey(source,",","down",funcBindHandsup)
  bindKey(source,".","down",funcBindSit)
  bindKey(source,"l","down",funcBindLie)
end
addEventHandler("onPlayerLogin", getRootElement(), bindTheKeys)


local nearbyPlayers = {}
 
addEventHandler( 'onPlayerVoiceStart', root,
    function()
          local chatRadius = 10
          local posX, posY, posZ = getElementPosition( source )
          local chatSphere = createColSphere( posX, posY, posZ, chatRadius )
          nearbyPlayers = getElementsWithinColShape( chatSphere, "player" )
          destroyElement( chatSphere )
          local empty = exports.voice:getNextEmptyChannel ( )
          exports.voice:setPlayerChannel(source, empty)
           for index, player in ipairs (nearbyPlayers) do
                  exports.voice:setPlayerChannel(player, empty)
           end
    end)
	
addEventHandler("onPlayerVoiceStop",root,
    function()
         exports.voice:setPlayerChannel(source)
         for index, player in ipairs (nearbyPlayers) do
                  exports.voice:setPlayerChannel(player)
         end
          nearbyPlayers = {}
    end)

-- [[ EVENT WEAPONS ]] --


function onPlayerGhillieStateOn()
local getSlots = getElementData(client,"MAX_Slots")
local getWeapon = getElementData(client,"currentweapon_1")
local getAttach1 = isElementAttachedToBone(elementWeaponBack[source])
local getAttach2 = isElementAttachedToBone(elementBackpack[source])
setElementAlpha(client,50)
	if getAttach1 then
		setElementAlpha(elementWeaponBack[source],50)
	end
	if getAttach2 then
		setElementAlpha(elementBackpack[source],50)
	end
end
addEvent("onPlayerGhillieStateOn",true)
addEventHandler("onPlayerGhillieStateOn",root,onPlayerGhillieStateOn)

function onPlayerGhillieStateOff()
local getSlots = getElementData(client,"MAX_Slots")
local getWeapon = getElementData(client,"currentweapon_1")
local getAttach1 = isElementAttachedToBone(elementWeaponBack[source])
local getAttach2 = isElementAttachedToBone(elementBackpack[source])
setElementAlpha(client,255)
	if getAttach1 then
		setElementAlpha(elementWeaponBack[source],255)
	end
	if getAttach2 then
		setElementAlpha(elementBackpack[source],255)
	end
end
addEvent("onPlayerGhillieStateOff",true)
addEventHandler("onPlayerGhillieStateOff",root,onPlayerGhillieStateOff)


addEvent( "onPlayerChopTree", true )

removedTrees = {}

function onPlayerChopTree( worldID, worldX, worldY, worldZ, worldRX, worldRY, worldRZ, worldLODID, interior )
	removeWorldModel( worldID, 3, worldX, worldY, worldZ, interior )
	removedTrees["realmodel"] = worldID, 3, worldX, worldY, worldZ, interior
	removeWorldModel( worldLODID, 3, worldX, worldY, worldZ, interior )
	removedTrees["LODmodel"] = worldLODID, 3, worldX, worldY, worldZ, interior

	local _, _, rz = getElementRotation( client )
	local tree = createObject( worldID, worldX, worldY, worldZ, worldRX, worldRY, worldRZ )
	setTimer( setElementCollisionsEnabled, 1000, 1, tree, false )
	moveObject( tree, 4000, worldX, worldY, worldZ, 0, 87, 0, "OutBounce" )
	setTimer( destroyElement, 4000, 1, tree )
end

addEventHandler( "onPlayerChopTree", root, onPlayerChopTree )

addEvent("onServerRespawnTrees",true)

function onServerRespawnTrees( worldID, worldX, worldY, worldZ, worldRX, worldRY, worldRZ, worldLODID, interior )
	restoreWorldModel(removedTrees["realmodel"])
	restoreWorldModel(removedTrees["LODmodel"])
	outputChatBox("Trees have been respawned!",root,0,255,0,true)
end
addEventHandler("onServerRespawnTrees",root,onServerRespawnTrees)


--[[


function getPointFromDistanceRotation(x, y, dist, angle)
 
    local a = math.rad(90 - angle);
 
    local dx = math.cos(a) * dist;
    local dy = math.sin(a) * dist;
 
    return x+dx, y+dy;
 
end

Hunter = nil
function getPlayerNearestToPosition(x, y, z)
	local nearestPlayer = nil
	local nearestDistance = nil
	for i, players in ipairs(getElementsByType("player")) do
		local px, py, pz = getElementPosition(players)
		local distance = getDistanceBetweenPoints3D(px, py, pz, x, y, z)
		if nearestPlayer == nil then
			nearestPlayer = players
			nearestDistance = distance
		elseif distance < nearestDistance then
			nearestDistance = distance
			nearestPlayer = players
		end
	end
	if nearestPlayer == nil then
		return false
	else
		return nearestPlayer
	end
end

setTimer(
	function()
			localPed2 = RealHunter
						if isElement(RealHunter) then
			local x, y, z = getElementPosition(RealHunter)
			local player = getPlayerNearestToPosition(x, y, z)
			if player then
				local px, py, pz = getElementPosition(player)
				if getDistanceBetweenPoints3D(x, y, z, px, py, pz) < 10 then
					if isElementInWater(RealHunter) then
					setPedAnimation(RealHunter, "ped", "Player_Sneak", -1, true, true, false)
					end
					local rotZ = findRotation(x, y, px, py)
					setPedRotation(RealHunter, rotZ)
					if getDistanceBetweenPoints3D(px, py, pz, x, y, z) < 2 then
						local health = getElementHealth(player)
						if health < 5 or health == 5 then
							setElementHealth(player, 0)
							local leX, leY, leZ = getElementPosition(RealHunter)
							setPedAnimation(RealHunter, "ped", "Player_Sneak", -1, true, true, false) 
						else
							setElementHealth(player, health - 5)
						end
					end
				else
				setPedAnimation(RealHunter, "ped", "Player_Sneak", -1, true, true, false) 
				end
			end
		end
	end
, 50, 0)
]]