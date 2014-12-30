-- Base Socket Gem

defineObject{ name = "base_socket_gem",
	baseObject = "base_item",
	--tags = { "socketSystem", "socket_gem", "item", },
	components = {
		{
			model = "assets/models/items/gems/red_gem.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Basic Socket Gem",
			gfxIndex = 218,
			class = "Item",
			name = "item",
			gameEffect = "This gem can fit into certain types of items. Use it in your hand along with the item to enchant in the other.",
		},
		{ 
		class = "UsableItem",
		sound = "level_up",
		onUseItem = function(self, champion)
			local slotW = champion:getItem(ItemSlot.Weapon)
			local slotO = champion:getItem(ItemSlot.OffHand)
			if slotW == nil or slotO == nil then
				hudPrint("The gem must be held along with the item to enchant.")
				return false 
				end
			if slotW.go.id ~= self.go.id and slotO.go.id ~= self.go.id then 
				hudPrint("The gem must be held along with the item to enchant.")
				return false 
			end
			local itemToEnchant = slotW
			if itemToEnchant == nil then itemToEnchant = "" end
			if itemToEnchant.go.id == self.go.id then
				itemToEnchant = slotO
			end	
			local placeGem = false
		local gemName = self.go.name
		local baseUiName = itemToEnchant.go.item:getUiName()
		if not itemToEnchant.go:getComponent("sockets") then return false end
		if not itemToEnchant.go:getComponent("gemcount") then return false end
		if itemToEnchant.go.gemcount:getValue() == 0 then 
			hudPrint("The " .. baseUiName .. " has no more empty sockets.")
			return false 
		end	
		local gemEffect = ""
		placeGem, gemEffect = self.go.triggers.insertGem(itemToEnchant)
			
		if not placeGem then hudPrint("The " .. self.go.item:getUiName() .. " does nothing.") return false end
		if placeGem then
			itemToEnchant.go.gemcount:decrement()
			local numberSockets = itemToEnchant.go.gemcount:getValue()
			if numberSockets == 1 then
				itemToEnchant.go.item:setGameEffect("1 free socket.")
			else 
				itemToEnchant.go.item:setGameEffect(tostring(numberSockets) .. " free sockets.")
			end
			hudPrint("The " .. self.go.item:getUiName() .. " disappears and enchants the " .. baseUiName .. ".")
			if gemEffect ~= nil then hudPrint(gemEffect) end
			return true
		end	
			return false			
		end,
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			print(self.go.name .. " needs to have its insertGem function properly defined.")
			if itemToEnchant.go.item:hasTrait("shield") then
			
			return false, "No Effect Defined."
			elseif itemToEnchant.go.item:hasTrait("chest_armor") then
			
			return false, "No Effect Defined."
			elseif itemToEnchant.go:getComponent("meleeattack") then
			
			return false, "No Effect Defined."
			elseif itemToEnchant.go:getComponent("rangedattack") then
			
			return false, "No Effect Defined."
			elseif itemToEnchant.go:getComponent("firearmattack") then
			
			return false, "No Effect Defined."
			end

			return false, "No Effect Defined."
		end]]
		},
	}
}

-- Spell/Ability definitions.

defineSpell{
	name = "mug_attack",
	uiName = "Mug",
	gesture = 0,
	manaCost = 35,
	skill = "concentration",
	requirements = {  },
	icon = 0,
	spellIcon = 0,
	description = "Mug the enemy.",
	onCast = function()
		local doDebug = false
		local chanceToTrigger = 20
		local xx = 0
        local yy = 0
        if party.facing == 0 then 
            yy = yy - 1
        elseif party.facing == 2 then
            yy = yy + 1
        elseif party.facing == 1 then
            xx = xx + 1
        elseif party.facing == 3 then
            xx = xx - 1
        end
        for i in party.map:entitiesAt(party.x + xx, party.y + yy) do
            if i:getComponent("monster") then
				local traitTrigger = math.random(1, 100)
				local flags = DamageFlags.Impact
                local mugDamage = rollDamage(20)
				if doDebug then print("chanceToTrigger:", chanceToTrigger) end
                if doDebug then print("traitTrigger:", traitTrigger) end
                damageTile(party.level, party.x+ xx, party.y + yy, 0, party.elevation, flags, "physical", mugDamage)
				if traitTrigger <= chanceToTrigger then
					if doDebug then print("Success") end
					local mugTable = { 
						"potion_healing", "potion_energy", "blooddrop_cap",  
						"potion_healing", "potion_rage", "etherweed", 
						"falconskyre", "blooddrop_cap", "mudwort", 
						"potion_shield", "potion_bear_form", }
                    local itemDrop = math.random(1, #mugTable)
					if doDebug then print("itemDrop:", itemDrop) end
					spawn(mugTable[itemDrop])
					return true
                end
            end
        end
	
	end,
}


