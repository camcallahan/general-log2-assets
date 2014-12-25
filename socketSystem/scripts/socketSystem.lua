
function enchantArmor(gem, armor)
	local doDebug = true
	local removable = false
	local gemName = gem.go.name
	local baseUiName = armor.go.item:getUiName()
	local placeGem = false
	
	if not armor.go:getComponent("sockets") then return false end
	if not armor.go:getComponent("gemcount") then return false end
	if armor.go.gemcount:getValue() == 0 then 
		hudPrint("The " .. baseUiName .. " has no more empty sockets.")
		return false 
	end
	
-- Apply modifiers for the type of gem socketed	
	if string.find(gemName, "_ruby") then
		local modVitality = 0
		local modHealth = 0
		local baseVitality = armor.go.equipmentitem:getVitality()
		if baseVitality == nil then baseVitality = 0 end
		local baseHealth = armor.go.equipmentitem:getHealth()
		if baseHealth == nil then baseHealth = 0 end

		if gemName == "socket_gem_chipped_ruby" then modHealth = 10 end
		if gemName == "socket_gem_flawed_ruby" then modHealth = 25 end
		if gemName == "socket_gem_normal_ruby" then 
			modHealth = 25
			modVitality = 1
		end
		if gemName == "socket_gem_flawless_ruby" then
			modHealth = 45
			modVitality = 2
		end
		if gemName == "socket_gem_perfect_ruby" then
			modHealth = 45
			modVitality = 3
		end
		if modVitality > 0 then armor.go.equipmentitem:setVitality( baseVitality + modVitality ) end
		if modHealth > 0 then armor.go.equipmentitem:setHealth( baseHealth + modHealth ) end
		gemEffect = "Provides vitality."	
		placeGem = true
	end
	if string.find(gemName, "_sapphire") then
		local modWillpower = 0
		local modEnergy = 0
		local baseWillpower = armor.go.equipmentitem:getWillpower()
		if baseWillpower == nil then baseWillpower = 0 end
		local baseEnergy = armor.go.equipmentitem:getEnergy()
		if baseEnergy == nil then baseEnergy = 0 end

		if gemName == "socket_gem_chipped_sapphire" then modEnergy = 10 end
		if gemName == "socket_gem_flawed_sapphire" then modEnergy = 25 end
		if gemName == "socket_gem_normal_sapphire" then 
			modEnergy = 25
			modWillpower = 1
		end
		if gemName == "socket_gem_flawless_sapphire" then
			modEnergy = 45
			modWillpower = 2
		end
		if gemName == "socket_gem_perfect_sapphire" then
			modEnergy = 45
			modWillpower = 3
		end
		if modWillpower > 0 then armor.go.equipmentitem:setWillpower( baseWillpower + modWillpower ) end
		if modEnergy > 0 then armor.go.equipmentitem:setHealth( baseEnergy + modEnergy ) end
		gemEffect = "Provides willpower."	
		placeGem = true
	end
	if string.find(gemName, "_topaz") then
		local modStrength = 0
		local modCritical = 0
		local baseStrength = armor.go.equipmentitem:getStrength()
		if baseStrength == nil then baseStrength = 0 end
		local baseCritical = armor.go.equipmentitem:getCriticalChance()
		if baseCritical == nil then baseCritical = 0 end

		if gemName == "socket_gem_chipped_topaz" then modCritical = 2 end
		if gemName == "socket_gem_flawed_topaz" then modCritical = 4 end
		if gemName == "socket_gem_normal_topaz" then 
			modCritical = 4
			modStrength = 1
		end
		if gemName == "socket_gem_flawless_topaz" then
			modCritical = 6
			modStrength = 2
		end
		if gemName == "socket_gem_perfect_topaz" then
			modCritical = 6
			modStrength = 3
		end
		if modStrength > 0 then armor.go.equipmentitem:setStrength( baseStrength + modStrength ) end
		if modCritical > 0 then armor.go.equipmentitem:setCriticalChance( baseCritical + modCritical ) end
		gemEffect = "Provides strength."	
		placeGem = true
	end
	if string.find(gemName, "_emerald") then
		local modDexterity = 0
		local modAccuracy = 0
		local baseDexterity = armor.go.equipmentitem:getDexterity()
		if baseDexterity == nil then baseDexterity = 0 end
		local baseAccuracy = armor.go.equipmentitem:getAccuracy()
		if baseAccuracy == nil then baseAccuracy = 0 end

		if gemName == "socket_gem_chipped_emerald" then modAccuracy = 3 end
		if gemName == "socket_gem_flawed_emerald" then modAccuracy = 6 end
		if gemName == "socket_gem_normal_emerald" then 
			modAccuracy = 6
			modDexterity = 1
		end
		if gemName == "socket_gem_flawless_emerald" then
			modAccuracy = 10
			modDexterity = 2
		end
		if gemName == "socket_gem_perfect_emerald" then
			modAccuracy = 10
			modDexterity = 3
		end
		if modDexterity > 0 then armor.go.equipmentitem:setDexterity( baseDexterity + modDexterity ) end
		if modAccuracy > 0 then armor.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy ) end
		gemEffect = "Provides dexterity."	
		placeGem = true
	end
	if string.find(gemName, "_amethyst") then
		local modEvasion = 0
		if gemName == "socket_gem_chipped_amethyst" then modEvasion = 3 end
		if gemName == "socket_gem_flawed_amethyst" then modEvasion = 6 end
		if gemName == "socket_gem_normal_amethyst" then modEvasion = 10 end
		if gemName == "socket_gem_flawless_amethyst" then modEvasion = 14 end
		if gemName == "socket_gem_perfect_amethyst" then modEvasion = 18 end
		local baseEvasion = armor.go.equipmentitem:getEvasion()
		if baseEvasion == nil then baseEvasion = 0 end
		armor.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
		gemEffect = "Provides evasion."	
		placeGem = true
	end
	if string.find(gemName, "_diamond") then
		local modProtection = 0
		if gemName == "socket_gem_chipped_diamond" then modProtection = 3 end
		if gemName == "socket_gem_flawless_diamond" then modProtection = 6 end
		if gemName == "socket_gem_normal_diamond" then modProtection = 10 end
		if gemName == "socket_gem_flawless_diamond" then modProtection = 14 end
		if gemName == "socket_gem_perfect_diamond" then modProtection = 18 end
		local baseProtection = armor.go.equipmentitem:getProtection()
		if baseProtection == nil then baseProtection = 0 end
		armor.go.equipmentitem:setProtection( baseProtection + modProtection )
		gemEffect = "Provides protection."	
		placeGem = true
	end
-- End Stat Gems

-- Begin Skull Gems
	if gemName == "socket_skull_chipped_light_weapons" then 
		if armor.go.item:hasTrait("heavy_armor") then
			armor.go.item:removeTrait("heavy_armor")
			armor.go.item:addTrait("light_armor")
			gemEffect = "Alters armor requirements."	
			placeGem = true
		end
	end

	if gemName == "socket_skull_chipped_heavy_weapons" then 
		if armor.go.item:hasTrait("light_armor") then
			armor.go.item:removeTrait("light_armor")
			armor.go.item:addTrait("heavy_armor")
			gemEffect = "Alters armor requirements."	
			placeGem = true
		end
	end

-- End Skull Gems


	if not placeGem then hudPrint("The " .. gem.go.item:getUiName() .. "does nothing.") return false end
	if placeGem then
		armor.go.gemcount:decrement()
		local numberSockets = armor.go.gemcount:getValue()
		if numberSockets == 1 then
			armor.go.item:setGameEffect("1 free socket.")
		else 
			armor.go.item:setGameEffect(tostring(numberSockets) .. " free sockets.")
		end
		hudPrint("The " .. gem.go.item:getUiName() .. " disappears and enchants the " .. baseUiName .. ".")
		hudPrint(gemEffect)
		return true
	end
	return false
end

function enchantWeapon(gem, weapon)
	local doDebug = false
	local removable = false
	local gemName = gem.go.name
	local baseUiName = weapon.go.item:getUiName()
	local placeGem = false
	
	if not weapon.go:getComponent("sockets") then return false end
	if not weapon.go:getComponent("gemcount") then return false end
	if weapon.go.gemcount:getValue() == 0 then 
		hudPrint("The " .. baseUiName .. " has no more empty sockets.")
		return false 
	end
-- Apply modifiers for the type of gem socketed	
	if string.find(gemName, "_ruby") then
		local modAttackPower = 0
		if gemName == "socket_gem_chipped_ruby" then modAttackPower = 1 end
		if gemName == "socket_gem_flawed_ruby" then modAttackPower = 2 end
		if gemName == "socket_gem_normal_ruby" then modAttackPower = 4 end
		if gemName == "socket_gem_flawless_ruby" then modAttackPower = 6 end
		if gemName == "socket_gem_perfect_ruby" then modAttackPower = 8 end
		if weapon.go:getComponent("meleeattack") then
			local baseAttackPower = weapon.go.meleeattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.meleeattack:setDamageType("fire")
			if gemName == "socket_gem_flawless_ruby" then 
				weapon.go.meleeattack:setCauseCondition("burning")
				weapon.go.meleeattack:setConditionChance(25)
			end
			if gemName == "socket_gem_perfect_ruby" then 
				weapon.go.meleeattack:setCauseCondition("burning")
				weapon.go.meleeattack:setConditionChance(45)
			end
		elseif weapon.go:getComponent("rangedattack") then
			if gemName == "socket_gem_flawless_ruby" then 
				modAttackPower = modAttackpower + 2
			end
			if gemName == "socket_gem_perfect_ruby" then 
				modAttackPower = modAttackpower + 4
			end
			local baseAttackPower = weapon.go.rangedattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.rangedattack:setDamageType("fire")
		elseif weapon.go:getComponent("firearmattack") then
			if gemName == "socket_gem_flawless_ruby" then 
				modAttackPower = modAttackpower + 2
			end
			if gemName == "socket_gem_perfect_ruby" then 
				modAttackPower = modAttackpower + 4
			end			
			local baseAttackPower = weapon.go.firearmattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.firearmattack:setDamageType("fire")
		end
		gemEffect = "Provides Fire damage."	
		placeGem = true
	end
	if string.find(gemName, "_sapphire") then
		local modAttackPower = 0
		if gemName == "socket_gem_chipped_sapphire" then modAttackPower = 1 end
		if gemName == "socket_gem_flawed_sapphire" then modAttackPower = 2 end
		if gemName == "socket_gem_normal_sapphire" then modAttackPower = 4 end
		if gemName == "socket_gem_flawless_sapphire" then modAttackPower = 6 end
		if gemName == "socket_gem_superior_sapphire" then modAttackPower = 8 end
		if weapon.go:getComponent("meleeattack") then
			local baseAttackPower = weapon.go.meleeattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.meleeattack:setDamageType("cold")
			if gemName == "socket_gem_flawless_sapphire" then 
				weapon.go.meleeattack:setCauseCondition("frozen")
				weapon.go.meleeattack:setConditionChance(25)
			end
			if gemName == "socket_gem_perfect_sapphire" then 
				weapon.go.meleeattack:setCauseCondition("frozen")
				weapon.go.meleeattack:setConditionChance(45)
			end
		elseif weapon.go:getComponent("rangedattack") then
			if gemName == "socket_gem_flawless_sapphire" then 
				modAttackPower = modAttackpower + 2
			end
			if gemName == "socket_gem_perfect_sapphire" then 
				modAttackPower = modAttackpower + 4
			end
			local baseAttackPower = weapon.go.rangedattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.rangedattack:setDamageType("cold")
		elseif weapon.go:getComponent("firearmattack") then
			if gemName == "socket_gem_flawless_sapphire" then 
				modAttackPower = modAttackpower + 2
			end
			if gemName == "socket_gem_perfect_sapphire" then 
				modAttackPower = modAttackpower + 4
			end
			local baseAttackPower = weapon.go.firearmattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.firearmattack:setDamageType("cold")
		end
		gemEffect = "Cold damage."	
		placeGem = true
	end
	if string.find(gemName, "_topaz") then
		local modAttackPower = 0
		if gemName == "socket_gem_chipped_topaz" then modAttackPower = 2 end
		if gemName == "socket_gem_flawed_topaz" then modAttackPower = 4 end
		if gemName == "socket_gem_normal_topaz" then modAttackPower = 6 end
		if gemName == "socket_gem_flawless_topaz" then modAttackPower = 10 end
		if gemName == "socket_gem_perfect_topaz" then modAttackPower = 12 end
		if weapon.go:getComponent("meleeattack") then
			local baseAttackPower = weapon.go.meleeattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.meleeattack:setDamageType("shock")
		elseif weapon.go:getComponent("rangedattack") then
			local baseAttackPower = weapon.go.rangedattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.rangedattack:setDamageType("shock")
		elseif weapon.go:getComponent("firearmattack") then
			if gemName == "socket_gem_flawless_topaz" then 
				modAttackPower = modAttackPower + 2
			end
			if gemName == "socket_gem_perfect_topaz" then 
				modAttackPower = modAttackPower + 4
			end
			local baseAttackPower = weapon.go.firearmattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.firearmattack:setDamageType("shock")
		end
		gemEffect = "Shock damage."	
		placeGem = true
	end
	if string.find(gemName, "_emerald") then
		local modAttackPower = 0
		if gemName == "socket_gem_chipped_emerald" then modAttackPower = 1 end
		if gemName == "socket_gem_flawed_emerald" then modAttackPower = 2 end
		if gemName == "socket_gem_normal_emerald" then modAttackPower = 4 end
		if gemName == "socket_gem_flawless_emerald" then modAttackPower = 6 end
		if gemName == "socket_gem_perfect_emerald" then modAttackPower = 8 end
		if weapon.go:getComponent("meleeattack") then
			local baseAttackPower = weapon.go.meleeattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.meleeattack:setDamageType("poison")
			if gemName == "socket_gem_flawless_emerald" then 
				weapon.go.meleeattack:setCauseCondition("poisoned")
				weapon.go.meleeattack:setConditionChance(25)
			end
			if gemName == "socket_gem_perfect_emerald" then 
				weapon.go.meleeattack:setCauseCondition("poisoned")
				weapon.go.meleeattack:setConditionChance(45)
			end
		elseif weapon.go:getComponent("rangedattack") then
			if gemName == "socket_gem_flawless_emerald" then 
				modAttackPower = modAttackpower + 2
			end
			if gemName == "socket_gem_perfect_emerald" then 
				modAttackPower = modAttackpower + 4
			end
			local baseAttackPower = weapon.go.rangedattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.rangedattack:setDamageType("poison")
			weapon.go.meleeattack:setDamageType("poison")
		elseif weapon.go:getComponent("firearmattack") then
			if gemName == "socket_gem_flawless_emerald" then 
				modAttackPower = modAttackpower + 2
			end
			if gemName == "socket_gem_perfect_emerald" then 
				modAttackPower = modAttackpower + 4
			end
			local baseAttackPower = weapon.go.firearmattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
			weapon.go.firearmattack:setDamageType("poison")
			weapon.go.meleeattack:setDamageType("poison")
		end
		gemEffect = "Poison damage."	
		placeGem = true
	end
	if string.find(gemName, "_amethyst") then
		local modAccuracy = 0
		if gemName == "socket_gem_chipped_amethyst" then modAccuracy = 2 end
		if gemName == "socket_gem_flawed_amethyst" then modAccuracy = 5 end
		if gemName == "socket_gem_normal_amethyst" then modAccuracy = 8 end
		if gemName == "socket_gem_flawless_amethyst" then modAccuracy = 10 end
		if gemName == "socket_gem_perfect_amethyst" then modAccuracy = 15 end
		if weapon.go:getComponent("meleeattack") then
			local baseAccuracy = weapon.go.meleeattack:getAccuracy()
			if baseAccuracy == nil then baseAccuracy = 0 end
			weapon.go.meleeattack:setAccuracy( baseAccuracy + modAccuracy )
		elseif weapon.go:getComponent("rangedattack") then
			if not weapon.go:getComponent("equipmentitem") then
				weapon.go:createComponent("EquipmentItem")
				weapon.go.equipmentitem:setSlot(1)
			end
			local baseAccuracy = weapon.go.equipmentitem:getAccuracy()
			if baseAccuracy == nil then baseAccuracy = 0 end
			weapon.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
		elseif weapon.go:getComponent("firearmattack") then
			if not weapon.go:getComponent("equipmentitem") then
				weapon.go:createComponent("EquipmentItem")
				weapon.go.equipmentitem:setSlot(1)
			end
			local baseAccuracy = weapon.go.equipmentitem:getAccuracy()
			if baseAccuracy == nil then baseAccuracy = 0 end
			weapon.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
		end
		gemEffect = "Improved accuracy."	
		placeGem = true
	end
	if string.find(gemName, "_diamond") then
		local modAttackPower = 0
		if gemName == "socket_gem_chipped_diamond" then modAttackPower = 4 end
		if gemName == "socket_gem_flawed_diamond" then modAttackPower = 6 end
		if gemName == "socket_gem_normal_diamond" then modAttackPower = 8 end
		if gemName == "socket_gem_flawless_diamond" then modAttackPower = 12 end
		if gemName == "socket_gem_perfect_diamond" then modAttackPower = 15 end
		if weapon.go:getComponent("meleeattack") then
			local baseAttackPower = weapon.go.meleeattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
		elseif weapon.go:getComponent("rangedattack") then
			local baseAttackPower = weapon.go.rangedattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
		elseif weapon.go:getComponent("firearmattack") then
			local baseAttackPower = weapon.go.firearmattack:getAttackPower()
			if baseAttackPower == nil then baseAttackPower = 0 end
			weapon.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
		end
		gemEffect = "Improved damage."	
		placeGem = true
	end
-- Begin Skull Gems
	if gemName == "socket_skull_chipped_concentration" then 
		local newReq = "concentration"
		if weapon.go:getComponent("meleeattack") then
			if doDebug then print("meleeattack") end
			local baseReqs = weapon.go.meleeattack:getRequirements()
			if baseReqs ~= nil then 
				for i = 1, #baseReqs do
					if baseReqs[i] == "light_weapons" then baseReqs[i] = newReq end
					if baseReqs[i] == "heavy_weapons" then baseReqs[i] = newReq end
					if baseReqs[i] == "missile_weapons" then baseReqs[i] = newReq end
				end
			weapon.go.meleeattack:setRequirements( baseReqs )
			gemEffect = "Alters weapon requirements."	
			placeGem = true
			end
		elseif weapon.go:getComponent("rangedattack") then
			if doDebug then print("rangedattack") end
			local baseReqs = weapon.go.rangedattack:getRequirements()
				for i = 1, #baseReqs do
					if baseReqs[i] == "light_weapons" then baseReqs[i] = newReq end
					if baseReqs[i] == "heavy_weapons" then baseReqs[i] = newReq end
					if baseReqs[i] == "missile_weapons" then baseReqs[i] = newReq end
				end
			weapon.go.rangedattack:setRequirements( baseReqs )
			gemEffect = "Alters weapon requirements."	
			placeGem = true
		end
	end

	if gemName == "socket_skull_chipped_light_weapons" then 
		local newReq = "light_weapons"
		if weapon.go:getComponent("meleeattack") then
			if doDebug then print("meleeattack") end
			local baseReqs = weapon.go.meleeattack:getRequirements()
			if baseReqs ~= nil then 
				for i = 1, #baseReqs do
					if baseReqs[i] == "concentration" then baseReqs[i] = newReq end
					if baseReqs[i] == "heavy_weapons" then baseReqs[i] = newReq end
					if baseReqs[i] == "missile_weapons" then baseReqs[i] = newReq end
				end
			weapon.go.meleeattack:setRequirements( baseReqs )
			gemEffect = "Alters weapon requirements."	
			placeGem = true
			end
		elseif weapon.go:getComponent("rangedattack") then
			if doDebug then print("rangedattack") end
			local baseReqs = weapon.go.rangedattack:getRequirements()
				for i = 1, #baseReqs do
					if baseReqs[i] == "concentration" then baseReqs[i] = newReq end
					if baseReqs[i] == "heavy_weapons" then baseReqs[i] = newReq end
					if baseReqs[i] == "missile_weapons" then baseReqs[i] = newReq end
				end
			weapon.go.rangedattack:setRequirements( baseReqs )
			gemEffect = "Alters weapon requirements."	
			placeGem = true
		end
	end

	if gemName == "socket_skull_chipped_heavy_weapons" then 
		local newReq = "heavy_weapons"
		if weapon.go:getComponent("meleeattack") then
			if doDebug then print("meleeattack") end
			local baseReqs = weapon.go.meleeattack:getRequirements()
			if baseReqs ~= nil then 
				for i = 1, #baseReqs do
					if baseReqs[i] == "concentration" then baseReqs[i] = newReq	end
					if baseReqs[i] == "light_weapons" then baseReqs[i] = newReq	end
					if baseReqs[i] == "missile_weapons" then baseReqs[i] = newReq end
				end
			weapon.go.meleeattack:setRequirements( baseReqs )
			gemEffect = "Alters weapon requirements."	
			placeGem = true
			end
		elseif weapon.go:getComponent("rangedattack") then
			if doDebug then print("rangedattack") end
			local baseReqs = weapon.go.rangedattack:getRequirements()
				for i = 1, #baseReqs do
					if baseReqs[i] == "concentration" then baseReqs[i] = newReq end
					if baseReqs[i] == "light_weapons" then baseReqs[i] = newReq end
					if baseReqs[i] == "missile_weapons" then baseReqs[i] = newReq end
				end
			weapon.go.rangedattack:setRequirements( baseReqs )
			gemEffect = "Alters weapon requirements."	
			placeGem = true
		end
	end

-- End Skull Gems
	if not placeGem then hudPrint("The " .. gem.go.item:getUiName() .. "does nothing.") return false end
	if placeGem then
		weapon.go.gemcount:decrement()
		local numberSockets = weapon.go.gemcount:getValue()
		if numberSockets == 1 then
			weapon.go.item:setGameEffect("1 free socket.")
		else 
			weapon.go.item:setGameEffect(tostring(numberSockets) .. " free sockets.")
		end
		hudPrint("The " .. gem.go.item:getUiName() .. " disappears and enchants the " .. baseUiName .. ".")
		hudPrint(gemEffect)
		return true
	end
	return false
end

function enchantShield(gem, shield)
	local doDebug = true
	local placeGem = false
	local gemName = gem.go.name
	local baseUiName = shield.go.item:getUiName()

	if not shield.go:getComponent("sockets") then return false end
	if not shield.go:getComponent("gemcount") then return false end
	if shield.go.gemcount:getValue() == 0 then 
		hudPrint("The " .. baseUiName .. " has no more empty sockets.")
		return false 
	end
	
-- Apply modifiers for the type of gem socketed	
	if string.find(gemName, "_ruby") then
		local modResistFire = 0
		if gemName == "socket_gem_chipped_ruby" then modResistFire = 5 end
		if gemName == "socket_gem_flawed_ruby" then modResistFire = 12 end
		if gemName == "socket_gem_normal_ruby" then modResistFire = 20 end
		if gemName == "socket_gem_flawless_ruby" then modResistFire = 28 end
		if gemName == "socket_gem_perfect_ruby" then modResistFire = 35 end
		local baseResistFire = shield.go.equipmentitem:getResistFire()
		if baseResistFire == nil then baseResistFire = 0 end
		shield.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
		gemEffect = "Provides resistance to fire."	
		placeGem = true
	end
	if string.find(gemName, "_sapphire") then
		local modResistCold = 0
		if gemName == "socket_gem_chipped_sapphire" then modResistCold = 5 end
		if gemName == "socket_gem_flawed_sapphire" then modResistCold = 12 end
		if gemName == "socket_gem_normal_sapphire" then modResistCold = 20 end
		if gemName == "socket_gem_flawless_sapphire" then modResistCold = 28 end
		if gemName == "socket_gem_perfect_sapphire" then modResistCold = 35 end
		local baseResistCold = shield.go.equipmentitem:getResistCold()
		if baseResistCold == nil then baseResistCold = 0 end
		shield.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
		gemEffect = "Provides resistance to cold."	
		placeGem = true
	end
	if string.find(gemName, "_topaz") then
		local modResistShock = 0
		if gemName == "socket_gem_chipped_topaz" then modResistShock = 5 end
		if gemName == "socket_gem_flawed_topaz" then modResistShock = 12 end
		if gemName == "socket_gem_normal_topaz" then modResistShock = 20 end
		if gemName == "socket_gem_flawless_topaz" then modResistShock = 28 end
		if gemName == "socket_gem_perfect_topaz" then modResistShock = 35 end
		local baseResistShock = shield.go.equipmentitem:getResistShock()
		if baseResistShock == nil then baseResistShock = 0 end
		shield.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
		gemEffect = "Provides resistance to lightning."	
		placeGem = true
	end
	if string.find(gemName, "_emerald") then
		local modResistPoison = 0
		if gemName == "socket_gem_chipped_emerald" then modResistPoison = 5 end
		if gemName == "socket_gem_flawed_emerald" then modResistPoison = 12 end
		if gemName == "socket_gem_normal_emerald" then modResistPoison = 20 end
		if gemName == "socket_gem_flawless_emerald" then modResistPoison = 28 end
		if gemName == "socket_gem_perfect_emerald" then modResistPoison = 35 end
		local baseResistPoison = shield.go.equipmentitem:getResistPoison()
		if baseResistPoison == nil then baseResistPoison = 0 end
		shield.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
		gemEffect = "Provides resistance to poison."	
		placeGem = true
	end
	if string.find(gemName, "_amethyst") then
		local modEvasion = 0
		if gemName == "socket_gem_chipped_amethyst" then modEvasion = 2 end
		if gemName == "socket_gem_flawed_amethyst" then modEvasion = 5 end
		if gemName == "socket_gem_normal_amethyst" then modEvasion = 8 end
		if gemName == "socket_gem_flawless_amethyst" then modEvasion = 11 end
		if gemName == "socket_gem_perfect_amethyst" then modEvasion = 15 end		
		local baseEvasion = shield.go.equipmentitem:getEvasion()
		if baseEvasion == nil then baseEvasion = 0 end
		shield.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
		gemEffect = "Provides evasion."	
		placeGem = true
	end
	if string.find(gemName, "_diamond") then
		local modResistAll = 0
		if gemName == "socket_gem_chipped_diamond" then modResistAll = 5 end
		if gemName == "socket_gem_flawed_diamond" then modResistAll = 12 end
		if gemName == "socket_gem_normal_diamond" then modResistAll = 20 end
		if gemName == "socket_gem_flawless_diamond" then modResistAll = 28 end
		if gemName == "socket_gem_perfect_diamond" then modResistAll = 35 end
		local modResistFire = modResistAll
		local modResistCold = modResistAll
		local modResistShock = modResistAll
		local modResistPoison = modResistAll
		local baseResistFire = shield.go.equipmentitem:getResistFire()
		local baseResistCold = shield.go.equipmentitem:getResistCold()
		local baseResistShock = shield.go.equipmentitem:getResistShock()
		local baseResistPoison = shield.go.equipmentitem:getResistPoison()
		if baseResistFire == nil then baseResistFire = 0 end
		if baseResistCold == nil then baseResistCold = 0 end
		if baseResistShock == nil then baseResistShock = 0 end
		if baseResistPoison == nil then baseResistPoison = 0 end
		shield.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
		shield.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
		shield.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
		shield.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
		gemEffect = "Provides resistance to many elements."	
		placeGem = true
	end
-- End Stat Gems

-- Begin Skull Gems
	if gemName == "socket_skull_chipped_light_weapons" then 
		if shield.go.item:hasTrait("heavy_armor") then
			shield.go.item:removeTrait("heavy_armor")
			shield.go.item:addTrait("light_armor")
			gemEffect = "Alters armor requirements."	
			placeGem = true
		end
	end

	if gemName == "socket_skull_chipped_heavy_weapons" then 
		if shield.go.item:hasTrait("light_armor") then
			shield.go.item:removeTrait("light_armor")
			shield.go.item:addTrait("heavy_armor")
			gemEffect = "Alters armor requirements."	
			placeGem = true
		end
	end

-- End Skull Gems
	if not placeGem then hudPrint("The " .. gem.go.item:getUiName() .. "does nothing.") return false end
	if placeGem then
		shield.go.gemcount:decrement()
		local numberSockets = shield.go.gemcount:getValue()
		if numberSockets == 1 then
			shield.go.item:setGameEffect("1 free socket.")
		else 
			shield.go.item:setGameEffect(tostring(numberSockets) .. " free sockets.")
		end
		hudPrint("The " .. gem.go.item:getUiName() .. " disappears and enchants the " .. baseUiName .. ".")
		hudPrint(gemEffect)
		return true
	end
	return false
end
