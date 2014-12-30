--[[ ELEMENTAL GEMS
These are a basic set of gems used to modify items related 
to one of the elements in the game (Fire/Cold/Shock/Poison).
They include an ability for each item type that can be 
socketed (weapon/shield/armor). They modify the four basic
stats used by the champion as well as the various minor stats.
When applicable, they also can cause attacks to inflict related
conditions.
--]]

defineObject{ name = "socket_gem_chipped_ruby",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_red_01.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Chipped Ruby",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 14,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds fire damage to weapons.
			- Adds fire resistance to shields.
			- Adds health to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistFire = 5
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				if baseResistFire == nil then baseResistFire = 0 end
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				return true, "Increased fire resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modHealth = 10
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 2
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("fire")
				return true, "Increased fire damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 3
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 3
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawed_ruby",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_red_02.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawed Ruby",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 15,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds fire damage to weapons.
			- Adds fire resistance to shields.
			- Adds health to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 3
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistFire = 12
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				if baseResistFire == nil then baseResistFire = 0 end
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				return true, "Increased fire resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modHealth = 25
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 4
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("fire")
				return true, "Increased fire damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 5
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 5
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_normal_ruby",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gems/gem_red_03.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Ruby",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 16,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds fire damage to weapons.
			- Adds fire resistance to shields.
			- Adds health and vitality to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 5
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistFire = 20
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				if baseResistFire == nil then baseResistFire = 0 end
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				return true, "Increased fire resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modHealth = 25
				local modVitality = 1
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health and vitality."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 6
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("fire")
				return true, "Increased fire damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 7
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 7
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawless_ruby",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gems/gem_red_04.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawless Ruby",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 17,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds fire damage to weapons.
			- Adds fire resistance to shields.
			- Adds health and vitality to armor.
			]],
		},
		{
			particleSystem = "power_gem_item",
			name = "particle",
			class = "Particle"
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 8
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistFire = 28
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				if baseResistFire == nil then baseResistFire = 0 end
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				return true, "Increased fire resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modHealth = 25
				local modVitality = 2
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 8
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("fire")
				itemToEnchant.go.meleeattack:setCauseCondition("burning")
				itemToEnchant.go.meleeattack:setConditionChance(25)
				return true, "Increased fire damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 10
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 10
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_perfect_ruby",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_red_05.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Perfect Ruby",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 18,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds fire damage to weapons.
			- Adds fire resistance to shields.
			- Adds health and vitality to armor.
			]],
		},
		{
			particleSystem = "power_gem_item",
			name = "particle",
			class = "Particle"
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 10
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistFire = 35
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				if baseResistFire == nil then baseResistFire = 0 end
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				return true, "Increased fire resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modHealth = 40
				local modVitality = 3
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 11
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("fire")
				itemToEnchant.go.meleeattack:setCauseCondition("burning")
				itemToEnchant.go.meleeattack:setConditionChance(45)
				return true, "Increased fire damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 13
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 13
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_chipped_sapphire",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_blue_01.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Chipped Sapphire",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 49,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds cold damage to weapons.
			- Adds cold resistance to shields.
			- Adds energy to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistCold = 5
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				if baseResistCold== nil then baseResistCold = 0 end
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				return true, "Increased cold resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEnergy = 10
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 2
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("cold")
				return true, "Increased cold damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 3
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 3
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawed_sapphire",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_blue_02.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawed Sapphire",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 50,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds cold damage to weapons.
			- Adds cold resistance to shields.
			- Adds energy to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 3
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistCold = 12
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				if baseResistCold == nil then baseResistCold = 0 end
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				return true, "Increased cold resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEnergy = 25
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 4
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("cold")
				return true, "Increased cold damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 5
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 5
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_normal_sapphire",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_blue_03.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Sapphire",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 51,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds cold damage to weapons.
			- Adds cold resistance to shields.
			- Adds energy and willpower to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 5
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistCold = 20
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				if baseResistCold == nil then baseResistCold = 0 end
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				return true, "Increased cold resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEnergy = 35
				local modWillpower = 1
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy and willpower."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 6
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("cold")
				return true, "Increased cold damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 7
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 7
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawless_sapphire",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_blue_04.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawless Sapphire",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 52,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds cold damage to weapons.
			- Adds cold resistance to shields.
			- Adds energy and willpower to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 8
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistCold = 28
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				if baseResistCold == nil then baseResistCold = 0 end
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				return true, "Increased cold resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEnergy = 35
				local modWillpower = 2
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy and willpower."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 8
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("cold")
				itemToEnchant.go.meleeattack:setCauseCondition("frozen")
				itemToEnchant.go.meleeattack:setConditionChance(25)
				return true, "Increased cold damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 10
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 10
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_perfect_sapphire",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_blue_05.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Perfect Sapphire",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 53,
			class = "Item",
			name = "item",
			gameEffect = [[This item enchants items.
			- Adds cold damage to weapons.
			- Adds cold resistance to shields.
			- Adds energy and willpower to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 10
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistCold = 35
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				if baseResistCold == nil then baseResistCold = 0 end
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				return true, "Increased fire resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEnergy = 40
				local modWillpower = 3
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy and willpower."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 11
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("cold")
				itemToEnchant.go.meleeattack:setCauseCondition("frozen")
				itemToEnchant.go.meleeattack:setConditionChance(45)
				return true, "Increased cold damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 13
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 13
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_chipped_emerald",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_pure_green_01.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Chipped Emerald",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 77,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds poison damage to weapons.
			- Adds poison resistance to shields.
			- Adds accuracy to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistPoison = 5
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased poison resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modAccuracy =3
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 2
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("poison")
				return true, "Increased poison damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 3
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 3
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawed_emerald",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_pure_green_02.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawed Emerald",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 78,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds poison damage to weapons.
			- Adds poison resistance to shields.
			- Adds accuracy to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 3
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistPoison = 12
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased poison resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modAccuracy = 6
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				if baseAccuracy == nil then baseAccuracy = 0 end
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 4
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("poison")
				return true, "Increased poison damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 5
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 5
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_normal_emerald",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_pure_green_03.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Emerald",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 79,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds poison damage to weapons.
			- Adds poison resistance to shields.
			- Adds accuracy to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 5
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistPoison = 20
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased poison resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modAccuracy = 13
				local modDexterity = 1
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				if baseAccuracy == nil then baseAccuracy = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy and dexterity."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 6
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("poison")
				return true, "Increased poisoned damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 7
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 7
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawless_emerald",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_pure_green_04.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawless Emerald",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 80,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds poison damage to weapons.
			- Adds poison resistance to shields.
			- Adds accuracy and dexterity to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 8
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistCold = 28
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				if baseResistCold == nil then baseResistCold = 0 end
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				return true, "Increased cold resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modAccuracy = 13
				local modDexterity = 2
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				if baseAccuracy == nil then baseAccuracy = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased health."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 8
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("poison")
				itemToEnchant.go.meleeattack:setCauseCondition("poisoned")
				itemToEnchant.go.meleeattack:setConditionChance(25)
				return true, "Increased poison damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 10
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 10
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_perfect_emerald",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_pure_green_05.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Perfect Emerald",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 81,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds poison damage to weapons.
			- Adds poison resistance to shields.
			- Adds accuracy and dexterity to armor.
			]],
		},
		{
			particleSystem = "power_gem_item",
			name = "particle",
			class = "Particle"
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 10
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistPoison = 35
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased poison resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modAccuracy = 16
				local modDexterity = 3
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				if baseAccuracy == nil then baseAccuracy = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy and dexterity."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 11
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("poison")
				itemToEnchant.go.meleeattack:setCauseCondition("poisoned")
				itemToEnchant.go.meleeattack:setConditionChance(45)
				return true, "Increased poison damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 13
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 13
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_chipped_topaz",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_golden_orange_01.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Chipped Topaz",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 119,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds shock damage to weapons.
			- Adds shock resistance to shields.
			- Adds critical chance to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistShock = 5
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				if baseResistShock == nil then baseResistShock = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				return true, "Increased shock resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modCritical = 2
				local baseCritical = itemToEnchant.go.equipmentitem:getCriticalChance()
				if baseCritical == nil then baseCritical = 0 end
				itemToEnchant.go.equipmentitem:setCriticalChance( baseCritical + modCritical )
				return true, "Increased critical chance."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 2
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("shock")
				return true, "Increased shock damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 3
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 3
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawed_topaz",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_golden_orange_02.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawed Topaz",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 120,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds shock damage to weapons.
			- Adds shock resistance to shields.
			- Adds critical chance to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 3
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistShock = 12
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				if baseResistShock == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				return true, "Increased shock resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modCritical = 4
				local baseCritical = itemToEnchant.go.equipmentitem:getCriticalChance()
				if baseCritical == nil then baseCritical = 0 end
				itemToEnchant.go.equipmentitem:setCriticalChance( baseCritical + modCritical )
				return true, "Increased critical chance."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 4
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("shock")
				return true, "Increased shock damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 5
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 5
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_normal_topaz",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_golden_orange_03.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Topaz",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 120,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds shock damage to weapons.
			- Adds shock resistance to shields.
			- Adds critical chance and strength to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 5
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistShock = 20
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				if baseResistShock == nil then baseResistShock = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				return true, "Increased shock resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modCritical = 6
				local modStrength = 1
				local baseCritical = itemToEnchant.go.equipmentitem:getCriticalChance()
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				if baseCritical == nil then baseCritical = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				itemToEnchant.go.equipmentitem:setCriticalChance( baseCritical + modCritical )
				return true, "Increased critical chance and strength."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 6
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("shock")
				return true, "Increased shock damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 7
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 7
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawless_topaz",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_golden_orange_04.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawless Topaz",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 122,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds shock damage to weapons.
			- Adds shock resistance to shields.
			- Adds critical chance and strength to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 8
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistShock = 28
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				if baseResistShock == nil then baseResistShock = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				return true, "Increased shock resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modCritical = 9
				local modStrength = 2
				local baseCritical = itemToEnchant.go.equipmentitem:getCriticalChance()
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				if baseCritical == nil then baseCritical = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				itemToEnchant.go.equipmentitem:setCriticalChance( baseCritical + modCritical )
				return true, "Increased critical chance and strength."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 8
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("shock")
				return true, "Increased poison damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 10
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 10
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_perfect_topaz",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_golden_orange_05.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Perfect Topaz",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 123,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds shock damage to weapons.
			- Adds shock resistance to shields.
			- Adds critical chance and strength to armor.
			]],
		},
		{
			particleSystem = "power_gem_item",
			name = "particle",
			class = "Particle"
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 10
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modResistShock = 35
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				if baseResistShock == nil then baseResistShock = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				return true, "Increased shock resistance."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modCritical = 12
				local modStrength = 3
				local baseCritical = itemToEnchant.go.equipmentitem:getCriticalChance()
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				if baseCritical == nil then baseCritical = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				itemToEnchant.go.equipmentitem:setCriticalChance( baseCritical + modCritical )
				return true, "Increased critical chance and strength."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 11
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				itemToEnchant.go.meleeattack:setDamageType("shock")
				return true, "Increased shock damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 13
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 13
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}


defineObject{ name = "socket_gem_chipped_diamond",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_white_01.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Chipped Diamond",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 0,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds attack power to weapons.
			- Adds resist all to shields.
			- Adds protection to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modAll = 5
				local modResistShock = modAll
				local modResistCold = modAll
				local modResistFire = modAll
				local modResistPoison = modAll				
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistShock == nil then baseResistShock = 0 end
				if baseResistCold == nil then baseResistCold = 0 end
				if baseResistFire == nil then baseResistFire = 0 end
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased resistances."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modProtection = 5
				local baseProtection = itemToEnchant.go.equipmentitem:getProtection()
				if baseProtection == nil then baseProtection = 0 end
				itemToEnchant.go.equipmentitem:setProtection( baseProtection + modProtection )
				return true, "Increased protection."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 4
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 4
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 4
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawed_diamond",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_white_02.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawed Diamond",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 1,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds attack power to weapons.
			- Adds resist all to shields.
			- Adds protection to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 3
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modAll = 9
				local modResistShock = modAll
				local modResistCold = modAll
				local modResistFire = modAll
				local modResistPoison = modAll				
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistShock == nil then baseResistShock = 0 end
				if baseResistCold == nil then baseResistCold = 0 end
				if baseResistFire == nil then baseResistFire = 0 end
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased resistances."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modProtection = 8
				local baseProtection = itemToEnchant.go.equipmentitem:getProtection()
				if baseProtection == nil then baseProtection = 0 end
				itemToEnchant.go.equipmentitem:setProtection( baseProtection + modProtection )
				return true, "Increased protection."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 8
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 8
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 8
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_normal_diamond",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_white_03.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Diamond",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 2,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds attack power to weapons.
			- Adds resist all to shields.
			- Adds protection to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 5
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modAll = 14
				local modResistShock = modAll
				local modResistCold = modAll
				local modResistFire = modAll
				local modResistPoison = modAll				
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistShock == nil then baseResistShock = 0 end
				if baseResistCold == nil then baseResistCold = 0 end
				if baseResistFire == nil then baseResistFire = 0 end
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased resistances."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modProtection = 14
				local baseProtection = itemToEnchant.go.equipmentitem:getProtection()
				if baseProtection == nil then baseProtection = 0 end
				itemToEnchant.go.equipmentitem:setProtection( baseProtection + modProtection )
				return true, "Increased protection."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 14
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 14
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 14
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_flawless_diamond",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_white_04.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Flawless Diamond",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 3,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds attack power to weapons.
			- Adds resist all to shields.
			- Adds protection to armor.
			]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 8
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modAll = 18
				local modResistShock = modAll
				local modResistCold = modAll
				local modResistFire = modAll
				local modResistPoison = modAll				
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistShock == nil then baseResistShock = 0 end
				if baseResistCold == nil then baseResistCold = 0 end
				if baseResistFire == nil then baseResistFire = 0 end
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased resistances."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modProtection = 18
				local baseProtection = itemToEnchant.go.equipmentitem:getProtection()
				if baseProtection == nil then baseProtection = 0 end
				itemToEnchant.go.equipmentitem:setProtection( baseProtection + modProtection )
				return true, "Increased protection."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 18
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 18
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 18
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_perfect_diamond",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "mod_assets/models/items/gems/gem_white_05.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Perfect Diamond",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 4,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Adds attack power to weapons.
			- Adds resist all to shields.
			- Adds protection to armor.
			]],
		},
		{
			particleSystem = "power_gem_item",
			name = "particle",
			class = "Particle"
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 10
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modAll = 25
				local modResistShock = modAll
				local modResistCold = modAll
				local modResistFire = modAll
				local modResistPoison = modAll				
				local baseResistShock = itemToEnchant.go.equipmentitem:getResistShock()
				local baseResistCold = itemToEnchant.go.equipmentitem:getResistCold()
				local baseResistFire = itemToEnchant.go.equipmentitem:getResistFire()
				local baseResistPoison = itemToEnchant.go.equipmentitem:getResistPoison()
				if baseResistShock == nil then baseResistShock = 0 end
				if baseResistCold == nil then baseResistCold = 0 end
				if baseResistFire == nil then baseResistFire = 0 end
				if baseResistPoison == nil then baseResistPoison = 0 end
				itemToEnchant.go.equipmentitem:setResistShock( baseResistShock + modResistShock )
				itemToEnchant.go.equipmentitem:setResistCold( baseResistCold + modResistCold )
				itemToEnchant.go.equipmentitem:setResistFire( baseResistFire + modResistFire )
				itemToEnchant.go.equipmentitem:setResistPoison( baseResistPoison + modResistPoison )
				return true, "Increased resistances."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modProtection = 25
				local baseProtection = itemToEnchant.go.equipmentitem:getProtection()
				if baseProtection == nil then baseProtection = 0 end
				itemToEnchant.go.equipmentitem:setProtection( baseProtection + modProtection )
				return true, "Increased protection."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAttackPower = itemToEnchant.go.meleeattack:getAttackPower()
				local modAttackPower = 24
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAttackPower = itemToEnchant.go.rangedattack:getAttackPower()
				local modAttackPower = 24
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAttackPower = itemToEnchant.go.firearmattack:getAttackPower()
				local modAttackPower = 24
				if baseAttackPower == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAttackPower( baseAttackPower + modAttackPower )
				return true, "Increased damage."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
