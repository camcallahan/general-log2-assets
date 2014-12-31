--[[ PASSIVE GEMS
These gems, largely, alter one stat and will fit into any 
type of item. The don't do as much as some of the elemental
gems but since they can fit into any open socket can be 
used to really increase a given stat by a good amount. They
also can potentially change qualities of an item like
whether or not it can be used underwater or from the back 
row.
--]]


defineObject{ name = "socket_gem_accuracy_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_01.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 21,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Adds accuracy to any type of item.
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
				local modAccuracy = 2
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modAccuracy = 2
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 2
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 2
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 2
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_accuracy_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_02.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 22,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Adds accuracy to any type of item.
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
				local modAccuracy = 4
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modAccuracy = 4
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 4
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 4
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 4
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_accuracy_3",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_03.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 23,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Adds accuracy to any type of item.
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
				local modAccuracy = 6
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modAccuracy = 6
				local baseAccuracy = itemToEnchant.go.equipmentitem:getAccuracy()
				itemToEnchant.go.equipmentitem:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 6
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.meleeattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 6
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.rangedattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local baseAccuracy = itemToEnchant.go.meleeattack:getAttackPower()
				local modAccuracy = 6
				if baseAccuracy == nil then baseAttackPower = 0 end
				itemToEnchant.go.firearmattack:setAccuracy( baseAccuracy + modAccuracy )
				return true, "Increased accuracy."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_evasion_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_04.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 24,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Adds evasion to any type of item.
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
				local modEvasion = 2
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				itemToEnchant.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEvasion = 2
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				itemToEnchant.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				local modEvasion = 2
				if baseEvasion == nil then baseEvasion = 0 end
				itemToEnchant.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_evasion_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_05.fbx",
		},
		{
			weight = 0.2,
			uiName = "Perfect Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 25,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Adds evasion to any type of item.
			]],
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				local modEvasion = 4
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				itemToEnchant.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEvasion = 4
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				itemToEnchant.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				local modEvasion = 4
				if baseEvasion == nil then baseEvasion = 0 end
				itemToEnchant.go.equipment:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_evasion_3",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_06.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 26,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Adds evasion to any type of item.
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
				local modEvasion = 6
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				itemToEnchant.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEvasion = 6
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				itemToEnchant.go.equipmentitem:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local baseEvasion = itemToEnchant.go.equipmentitem:getEvasion()
				local modEvasion = 6
				if baseEvasion == nil then baseEvasion = 0 end
				itemToEnchant.go.equipment:setEvasion( baseEvasion + modEvasion )
				return true, "Increased evasion."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_cooldown_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_07.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 27,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Slightly reduces cooldown of weapons (.3 seconds).
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
			if itemToEnchant.go:getComponent("meleeattack") then
				local modCooldown = .3
				local baseCooldown = itemToEnchant.go.meleeattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.meleeattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local modCooldown = .3
				local baseCooldown = itemToEnchant.go.rangedattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.rangedattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local modCooldown = .3
				local baseCooldown = itemToEnchant.go.firearmattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.firearmattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_cooldown_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_06.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 26,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Slightly reduces cooldown of weapons (.6 seconds).
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
			if itemToEnchant.go:getComponent("meleeattack") then
				local modCooldown = .6
				local baseCooldown = itemToEnchant.go.meleeattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.meleeattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local modCooldown = .6
				local baseCooldown = itemToEnchant.go.rangedattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.rangedattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local modCooldown = .6
				local baseCooldown = itemToEnchant.go.firearmattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.firearmattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}
defineObject{ name = "socket_gem_cooldown_3",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_magenta_05.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 25,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Slightly reduces cooldown of weapons (1 second).
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
			if itemToEnchant.go:getComponent("meleeattack") then
				local modCooldown = 1
				local baseCooldown = itemToEnchant.go.meleeattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.meleeattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			elseif itemToEnchant.go:getComponent("rangedattack") then
				local modCooldown = 1
				local baseCooldown = itemToEnchant.go.rangedattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.rangedattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			elseif itemToEnchant.go:getComponent("firearmattack") then
				local modCooldown = 1
				local baseCooldown = itemToEnchant.go.firearmattack:getCooldown()
				if baseCooldown == nil then return false, "No effect." end
				itemToEnchant.go.firearmattack:setCooldown( baseCooldown - modCooldown )
				return true, "Reduced cooldown."
			end
			return false, "Nothing happens."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_energy_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_magenta_01.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 28,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Increases energy by 10. Fits into any type of item.
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
				local modEnergy = 10
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEnergy = 10
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modEnergy = 10
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_energy_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_magenta_02.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 29,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Increases energy by 18. Fits into any type of item.
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
				local modEnergy = 18
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEnergy = 18
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modEnergy = 18
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_energy_3",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_magenta_03.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 30,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Increases energy by 25. Fits into any type of item.
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
				local modEnergy = 25
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modEnergy = 25
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modEnergy = 25
				local baseEnergy = itemToEnchant.go.equipmentitem:getEnergy()
				if baseEnergy == nil then baseEnergy = 0 end
				itemToEnchant.go.equipmentitem:setEnergy( baseEnergy + modEnergy )
				return true, "Increased energy."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_health_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_magenta_04.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 31,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Increases health by 10. Fits into any type of item.
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
				local modHealth = 10
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modHealth = 10
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modHealth = 10
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_health_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_magenta_05.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 32,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Increases health by 18. Fits into any type of item.
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
				local modHealth = 18
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modHealth = 18
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modHealth = 18
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_health_3",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_magenta_06.fbx",
		},
		{
			weight = 0.2,
			uiName = "Amethyst",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 33,
			class = "Item",
			name = "item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Increases health by 25. Fits into any type of item.
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
				local modHealth = 25
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modHealth = 25
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modHealth = 25
				local baseHealth = itemToEnchant.go.equipmentitem:getHealth()
				if baseHealth == nil then baseHealth = 0 end
				itemToEnchant.go.equipmentitem:setHealth( baseHealth + modHealth )
				return true, "Increased health."
			end
		end]]
		},
	}
}

-- PRIMARY STAT GEMS

defineObject{ name = "socket_gem_willpower_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_violet_magenta_01.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 42,
			class = "Item",
			name = "item",
			uiName = "Almandine",
			description = "A deep red-violet garnet.",
			gameEffect = [[This gem enchants items.
			- Increases willpower by 1. Fits into any type of item.
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
				local modWillpower = 1
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				return true, "Increased willpower."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modWillpower = 1
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				return true, "Increased willpower."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modWillpower = 1
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				return true, "Increased willpower."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_willpower_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_violet_magenta_02.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 43,
			class = "Item",
			name = "item",
			uiName = "Almandine",
			description = "A deep red-violet garnet.",
			gameEffect = [[This gem enchants items.
			- Increases willpower by 2. Fits into any type of item.
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
				local modWillpower = 2
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				return true, "Increased willpower."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modWillpower = 2
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				return true, "Increased willpower."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modWillpower = 2
				local baseWillpower = itemToEnchant.go.equipmentitem:getWillpower()
				if baseWillpower == nil then baseWillpower = 0 end
				itemToEnchant.go.equipmentitem:setWillpower( baseWillpower + modWillpower )
				return true, "Increased willpower."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_vitality_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_violet_magenta_03.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 44,
			class = "Item",
			name = "item",
			uiName = "Almandine",
			description = "A deep red-violet garnet.",
			gameEffect = [[This gem enchants items.
			- Increases vitality by 1. Fits into any type of item.
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
				local modVitality = 1
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				return true, "Increased vitality."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modVitality = 1
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				return true, "Increased vitality."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modVitality = 1
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				return true, "Increased vitality."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_vitality_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_violet_magenta_04.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 45,
			class = "Item",
			name = "item",
			uiName = "Almandine",
			description = "A deep red-violet garnet.",
			gameEffect = [[This gem enchants items.
			- Increases vitality by 1. Fits into any type of item.
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
				local modVitality = 2
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				return true, "Increased vitality."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modVitality = 2
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				return true, "Increased vitality."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modVitality = 2
				local baseVitality = itemToEnchant.go.equipmentitem:getVitality()
				if baseVitality == nil then baseVitality = 0 end
				itemToEnchant.go.equipmentitem:setVitality( baseVitality + modVitality )
				return true, "Increased vitality."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_dexterity_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_violet_magenta_05.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 46,
			class = "Item",
			name = "item",
			uiName = "Almandine",
			description = "A deep red-violet garnet.",
			gameEffect = [[This gem enchants items.
			- Increases dexterity by 1. Fits into any type of item.
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
				local modDexterity = 1
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				return true, "Increased dexterity."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modDexterity = 1
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				return true, "Increased dexterity."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modDexterity = 1
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				return true, "Increased dexterity."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_dexterity_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_violet_magenta_06.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 47,
			class = "Item",
			name = "item",
			uiName = "Almandine",
			description = "A deep red-violet garnet.",
			gameEffect = [[This gem enchants items.
			- Increases dexterity by 2. Fits into any type of item.
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
				local modDexterity = 2
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				return true, "Increased dexterity."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modDexterity = 2
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				return true, "Increased dexterity."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modDexterity = 2
				local baseDexterity = itemToEnchant.go.equipmentitem:getDexterity()
				if baseDexterity == nil then baseDexterity = 0 end
				itemToEnchant.go.equipmentitem:setDexterity( baseDexterity + modDexterity )
				return true, "Increased dexterity."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_strength_1",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_violet_magenta_06.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 47,
			class = "Item",
			name = "item",
			uiName = "Almandine",
			description = "A deep red-violet garnet.",
			gameEffect = [[This gem enchants items.
			- Increases strength by 1. Fits into any type of item.
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
				local modStrength = 1
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				return true, "Increased strength."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modStrength = 1
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				return true, "Increased strength."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modStrength = 1
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				return true, "Increased strength."
			end
		end]]
		},
	}
}
defineObject{ name = "socket_gem_strength_2",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_pure_violet_magenta_07.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 48,
			class = "Item",
			name = "item",
			uiName = "Almandine",
			description = "A deep red-violet garnet.",
			gameEffect = [[This gem enchants items.
			- Increases strength by 2. Fits into any type of item.
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
				local modStrength = 2
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				return true, "Increased strength."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
				local modStrength = 2
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				return true, "Increased strength."
			elseif itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack") then
				if not itemToEnchant.go:getComponent("equipmentitem") then itemToEnchant.go:createComponent("EquipmentItem") end
				itemToEnchant.go.equipmentitem:setSlot(ItemSlot.Weapon)
				local modStrength = 2
				local baseStrength = itemToEnchant.go.equipmentitem:getStrength()
				if baseStrength == nil then baseStrength = 0 end
				itemToEnchant.go.equipmentitem:setStrength( baseStrength + modStrength )
				return true, "Increased strength."
			end
		end]]
		},
	}
}

defineObject{ name = "socket_gem_reach",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_light_magenta_01.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 35,
			class = "Item",
			name = "item",
			uiName = "Rhodolite",
		description = "A deep pink garnet.",
			gameEffect = [[This gem enchants items.
			- Allows any melee weapon to attack from the back row.
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
			if itemToEnchant.go:getComponent("meleeattack") then
				if itemToEnchant.go.meleeattack:getReachWeapon() then return false, "This gem does nothing." end
				itemToEnchant.go.meleeattack:setReachWeapon(true)
				return true, "Reach ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_aquatic",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "passive_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_light_magenta_01.fbx",
		},
		{
			weight = 0.2,
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 35,
			class = "Item",
			name = "item",
			uiName = "Rhodolite",
		description = "A deep pink garnet.",
			gameEffect = [[This gem enchants items.
			- Allows any melee weapon to be used under water.]],
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
			if itemToEnchant.go:getComponent("meleeattack") then
				if itemToEnchant.go.item:hasTrait("aquatic") then return false, "This gem does nothing." end
				itemToEnchant.go.item:addTrait("aquatic")
				return true, "Aquatic attack ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}