--[[ SKULL GEMS
The skull gems deal with altering and swapping
the stat and skill requirements of weapons and armor.
They let a champion change the heavy_weapons
requirement of a giant hammer to light_weapons, or make
a new found swords damage scale up based off of willpower
instead of strength.
--]]

defineObject{ name = "socket_skull_heavy_reqs",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "skull_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Heavy Skull",
			gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Changes light armor to heavy armor.
			- Changes light weapons to heavy weapons]],
			description = "The skull of a once strong creature.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("light_armor") then
				itemToEnchant.go.item:removeTrait("light_armor")
				itemToEnchant.go.item:addTrait("heavy_armor")
				return true, "Altered requirements."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local newReq = "heavy_weapons"
				local baseReqs = itemToEnchant.go.meleeattack:getRequirements()
				if baseReqs ~= nil then 
					for i = 1, #baseReqs do
						if baseReqs[i] == "concentration" then baseReqs[i] = newReq	end
						if baseReqs[i] == "light_weapons" then baseReqs[i] = newReq	end
						if baseReqs[i] == "missile_weapons" then baseReqs[i] = newReq end
					end
					itemToEnchant.go.meleeattack:setRequirements( baseReqs )
					return true, "Altered requirements."
				end
			end
		end]]
		},
	}
}
defineObject{ name = "socket_skull_light_reqs",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "skull_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Light Skull",
			gfxIndex = 31,
			class = "Item",
			description = "An Amethyst.",
			gameEffect = [[This gem enchants items.
			- Changes heavy armor to light armor.
			- Changes heavy weapons to light weapons]],
			description = "The skull of a once nimble creature.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("heavy_armor") then
				itemToEnchant.go.item:removeTrait("heavy_armor")
				itemToEnchant.go.item:addTrait("light_armor")
				return true, "Altered requirements."
			elseif itemToEnchant.go:getComponent("meleeattack") then
				local newReq = "light_weapons"
				local baseReqs = itemToEnchant.go.meleeattack:getRequirements()
				if baseReqs ~= nil then 
					for i = 1, #baseReqs do
						if baseReqs[i] == "concentration" then baseReqs[i] = newReq	end
						if baseReqs[i] == "heavy_weapons" then baseReqs[i] = newReq	end
					end
					itemToEnchant.go.meleeattack:setRequirements( baseReqs )
					return true, "Altered requirements."
				end
			end
		end]]
		},
	}
}
defineObject{ name = "socket_skull_concentration_reqs",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "skull_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Magic Skull",
			gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Changes light and heavy weapons to concentration weapons.]],
			description = "The skull of a once magical being.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("meleeattack") then
				local newReq = "concentration"
				local baseReqs = itemToEnchant.go.meleeattack:getRequirements()
				if baseReqs ~= nil then 
					for i = 1, #baseReqs do
						if baseReqs[i] == "light_weapons" then baseReqs[i] = newReq	end
						if baseReqs[i] == "heavy_weapons" then baseReqs[i] = newReq	end
					end
					itemToEnchant.go.meleeattack:setRequirements( baseReqs )
					return true, "Altered requirements."
				end
			end
		end]]
		},
	}
}

defineObject{ name = "socket_skull_willpower",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "skull_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Magic Skull",
			gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Changes a weapon so that it deals damage based off of Willpower.]],
			description = "The skull of a once enchanted being.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("meleeattack") then
				local newStat = "willpower"
				local baseReqs = itemToEnchant.go.meleeattack:getRequirements()
				itemToEnchant.go.meleeattack:setBaseDamageStat( newStat )
				return true, "Altered damage statistics."
			end
		end]]
		},
	}
}

defineObject{ name = "socket_skull_vitality",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "skull_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Healthy Skull",
			gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Changes a weapon so that it deals damage based off of Vitality.]],
			description = "The skull of a once hearty creature.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("meleeattack") then
				local newStat = "vitality"
				local baseReqs = itemToEnchant.go.meleeattack:getRequirements()
				itemToEnchant.go.meleeattack:setBaseDamageStat( newStat )
				return true, "Altered damage statistics."
			end
		end]]
		},
	}
}

defineObject{ name = "socket_skull_dexterity",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "skull_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Light Skull",
			gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Changes a weapon so that it deals damage based off of Dexterity.]],
			description = "The skull of a once quick creature.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("meleeattack") then
				local newStat = "dexterity"
				local baseReqs = itemToEnchant.go.meleeattack:getRequirements()
				itemToEnchant.go.meleeattack:setBaseDamageStat( newStat )
				return true, "Altered damage statistics."
			end
		end]]
		},
	}
}

defineObject{ name = "socket_skull_strength",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "skull_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Light Skull",
			gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Changes a weapon so that it deals damage based off of Strength.]],
			description = "The skull of a once powerful creature.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("meleeattack") then
				local newStat = "strength"
				local baseReqs = itemToEnchant.go.meleeattack:getRequirements()
				itemToEnchant.go.meleeattack:setBaseDamageStat( newStat )
				return true, "Altered damage statistics."
			end
		end]]
		},
	}
}