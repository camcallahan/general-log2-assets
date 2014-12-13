--[[
Ascension Items Pack
by Cameron Callahan @camcallahan

Requires the Ascension Party hooks to be in your init.lua.
A small set of items meant to show off some really neat 
things the Grimrock 2 engine can do with items. 

Summary of some of the neat things:

* Sword that has a spell secondaryAction that gains charges
as you damage enemies.

* A cloak that has a chance to invis the whole party briefly
when the wearer takes damage.

* A cloak that counts the steps you take with it on and as
you travel grants more stat bonuses.

* A set of daggers that have a secondaryAction that is 
worthless without both daggers equipped.

* That same set of daggers plays around with the concept of
energy a little bit, too, providing Energy when they hit a 
monster but also draining your energy. This sort of concept 
can certainly add some depth to having two weapon sets 
available to the champions.

* A necklace that changes colors when near a trap. Currently,
this scans the surrounding tiles onMove and looks for a couple
things: Is there a chest that is a Mimic nearby and is there 
any entity with a istrap Counter component that has a value 
greater than 0. If either is true, is swaps the gfxIndex for a 
new necklace. This currently uses some icons from Akroma's icon 
sets on the grimrock forums. At first you right-clicked it to 
scan the area, then I set up the party wide hooks and changed 
it to be a passive effect. It looking for the istrap Counter 
lets you allow it to warn the champions of booby-trapped doors 
or anything else. You could also make it do a check against the 
istrap and not activate if the Counter is above a certain number, 
so super difficult/elaborate traps won't actually trigger the 
necklace... or the necklace won't trigger against really hard 
traps unless the wearer is a Rogue, etc.
-- Akroma's icons: http://www.grimrock.net/forum/viewtopic.php?f=22&t=8058

* A shield that you can meleeattack with and has a secondaryAction.
This one is less impressive, but I think shields were an item type
that were a little plain in the game, given how dynamic the 
component setup is. This shield has a secondaryAction that knocks 
back the enemy.

* A sack-like backpack that can be equipped. The advantage of equipping
it versus just storing items in it and leaving it in your inventory
is that when equipped it increases the max_load of a character so
that they can carry more items.

* Staff of Energy Shield. When the secondaryAction is used it casts a
spell that adds a trait that triggers an onDamage party hook for the
champion and prevents any damage dealt to him and reduces the champion's
energy by the same amount. If the champion's energy reaches zero they 
lose the Shield. While protected, the champion's energyRegenerationRate 
is reduced so that it drains very slowly, though potions and other 
Energy gaining effects can still increase their Energy pool. If hit by
a particularly strong blow there is a chance for the shield to shatter.

* Gift From Elsewhere. A bag that onInit will add a random set of potions
to itself. It will always give a healing potion, sometimes a greater healing
potion. It will usually give an energy potion, though sometimes that will
be a greater energy potion. Small chance for resurrection potion and a stat
potion. Then one or two random effect/cure potions. Cannot be added to an 
enemy in the editor, as it won't run the onInit function... Can be spawned 
added to the monster with addItem(), though. Could be used as a reward when
the party levels, providing some support and occasionally a small stat boost.
--]]





defineObject{
	name = "the_collector",
	baseObject = "base_item",
	tags = { "weapon", "ascension_items", },
	components = {
		{
			class = "Model",
			model = "assets/models/items/claymore.fbx",
		},
		{
			class = "Item",
			uiName = "The Collector",
			description = "Those slain by this blade are forever following it, waiting to be released.",
			gfxIndex = 401,
			gfxIndexPowerAttack = 464,
			impactSound = "impact_blade",
			weight = 4.2,
			traits = { "heavy_weapon", "two_handed", "sword", "epic" },
			secondaryAction = "poisonBolt",
		},
		{
			class = "Counter",
			name = "collection",
			value = 0,
		},
		{
			class = "MeleeAttack",
			attackPower = 35,
			accuracy = 0,
			cooldown = 5,
			damageType = "cold",
			swipe = "vertical",
			attackSound = "swipe_heavy",
			requirements = { "heavy_weapons", 5 },
			onHitMonster = function(self, monster, tside, damage, champion)
				local doDebug = false
				local currentCount = self.go.collection:getValue()
				local amountLow = (damage / 5)
				local amountHigh = (damage / 2)
				local collectedCount = math.random(amountLow, amountHigh)
				if doDebug then print("currentCount:", currentCount) end
				if doDebug then print("Low:",amountLow,"High:", amountHigh) end
				if doDebug then print("Collected:", collectedCount) end
				self.go.collection:setValue(currentCount + collectedCount)
				if doDebug then print("New Count:", self.go.collection:getValue()) end
				if self.go.collection:getValue() >= 100 then
					local currentCharges = self.go.poisonBolt:getCharges()
					if currentCharges < 3 then
						if doDebug then print("Charge added, resetting count.") end
						self.go.poisonBolt:setCharges(currentCharges + 1)
						self.go.collection:setValue(0)
						hudPrint("The Collector screams with power.")
					else
						self.go.collection:setValue(0)
					end
				end
			end,
		},
		{
			class = "CastSpell",
			name = "poisonBolt",
			uiName = "Poison Bolt",
			cooldown = 5,
			spell = "poison_bolt",
			energyCost = 40,
			power = 30,
			charges = 2,
			requirements = { "concentration", 2 },
		},
	},
}

defineObject{
	name = "ceremonial_dagger_of_flesh",
	baseObject = "base_item",
	tags = { "weapon", "ascension_items" },
	components = {
		{
			class = "Model",
			model = "assets/models/items/backbiter.fbx",
		},
		{
			class = "Item",
			uiName = "Ceremonial Dagger of Flesh",
			description = "One of two daggers used centuries ago in the creation of a massive army of flesh golems.",
			gfxIndex = 228,
			gfxIndexPowerAttack = 202,
			impactSound = "impact_blade",
			weight = 2.4,
			secondaryAction = "sacrifice",
			traits = { "light_weapon", "dagger" },
			gameEffect = "Drains energy. Successful attacks replenish energy.",
		},
		{
			class = "MeleeAttack",
			attackPower = 25,
			cooldown = 1.2,
			swipe = "vertical",
			attackSound = "swipe_light",
			onHitMonster = function(self, monster, side, dmg, champion)
				champion:regainEnergy(14)
			end,
		},
		{
			class = "MeleeAttack",
			name = "sacrifice",
			uiName = "Sacrifice",
			attackPower = 30,
			accuracy = 20,
			cooldown = 4.5,
			energyCost = 45,
			swipe = "vertical",
			attackSound = "swipe_light",
			requirements = { "light_weapons", 3 },
			onHitMonster = function(self, monster, side, dmg, champion)
				dmg = 0
				local weaponItem = champion:getItem(ItemSlot.Weapon)
				local otherItem = champion:getItem(ItemSlot.OffHand)
				if weaponItem == nil then return end
				if otherItem == nil then return end
				if otherItem.go.name == "ceremonial_dagger_of_rot" or weaponItem.go.name == "ceremonial_dagger_of_rot" then
					for i = 1,4 do
						local stabbyDamage = rollDamage(45, "vitality")
						local monsterHealth = monster.go.monster:getHealth()
						local luckMod = 0
						if party:getComponent("luck") then
							luckMod = party.luck:getValue()
						end
						if luckMod == nil then luckMod = 0 end
						-- If you add a Counter component named "luck"
						-- to your Party, you can use that as a general
						-- counter to modify the chance that a special
						-- action happens. If the party is lucky, it
						-- means sacrifices happen a little more.
						if (math.random(1, 100) + luckMod) > 95 then
							stabbyDamage = stabbyDamage + 500 
							hudPrint("A SACRIFICE IS MADE.")
							local baseHealth = self.go.equipmentitem:getHealth()
							if baseHealth == nil then baseHealth = 0 end
							self.go.equipmentitem:setHealth(baseHealth + 15)
						end
						monster.go.monster:setHealth( monsterHealth - stabbyDamage )
						monster.go.monster:showDamageText(tostring(stabbyDamage), "FF0000")
						if monster.go.monster:getHealth() <= 0 then monster.go.monster:die() end
					end
				end
			end,
		},
		{
			class = "EquipmentItem",
			name = "equipmentitem",
			slot = ItemSlot.Weapon,
			energyRegenerationRate = -95,
		},
		{
			class = "Light",
			name = "light",
			range = 1,
			brightness = 4,
			color = vec(0,0,7),
		}
	},
}
defineObject{
	name = "ceremonial_dagger_of_rot",
	baseObject = "base_item",
	tags = { "weapon", "ascension_items" },
	components = {
		{
			class = "Model",
			model = "assets/models/items/backbiter.fbx",
		},
		{
			class = "Item",
			uiName = "Ceremonial Dagger of Rot",
			description = "One of two daggers used centuries ago in the creation of a massive army of flesh golems.",
			gfxIndex = 228,
			gfxIndexPowerAttack = 202,
			impactSound = "impact_blade",
			weight = 2.4,
			secondaryAction = "sacrifice",
			traits = { "light_weapon", "dagger" },
			gameEffect = "Drains energy. Successful attacks replenish energy.",
		},
		{
			class = "MeleeAttack",
			attackPower = 25,
			cooldown = 1.2,
			swipe = "vertical",
			attackSound = "swipe_light",
			onHitMonster = function(self, monster, side, dmg, champion)
				champion:regainEnergy(14)
			end,
		},
		{
			class = "MeleeAttack",
			name = "sacrifice",
			uiName = "Sacrifice",
			attackPower = 0,
			accuracy = 20,
			cooldown = 4.5,
			energyCost = 45,
			swipe = "vertical",
			attackSound = "swipe_light",
			requirements = { "light_weapons", 3 },
			onHitMonster = function(self, monster, side, dmg, champion)
				dmg = 0
				local weaponItem = champion:getItem(ItemSlot.Weapon)
				local otherItem = champion:getItem(ItemSlot.OffHand)
				if weaponItem == nil then return end
				if otherItem == nil then return end
				if otherItem.go.name == "ceremonial_dagger_of_rot" or weaponItem.go.name == "ceremonial_dagger_of_rot" then
					for i = 1,4 do
						local stabbyDamage = rollDamage(45, "vitality")
						local monsterHealth = monster.go.monster:getHealth()
						local luckMod = 0
						if party:getComponent("luck") then
							luckMod = party.luck:getValue()
						end
						if luckMod == nil then luckMod = 0 end
						-- If you add a Counter component named "luck"
						-- to your Party, you can use that as a general
						-- counter to modify the chance that a special
						-- action happens. If the party is lucky, it
						-- means sacrifices happen a little more.
						if (math.random(1, 100) + luckMod) > 95 then
							stabbyDamage = stabbyDamage + 500 
							hudPrint("A SACRIFICE IS MADE.")
							local baseHealth = self.go.equipmentitem:getHealth()
							if baseHealth == nil then baseHealth = 0 end
							self.go.equipmentitem:setHealth(baseHealth + 15)
						end
						monster.go.monster:setHealth( monsterHealth - stabbyDamage )
						monster.go.monster:showDamageText(tostring(stabbyDamage), "FF0000")
						if monster.go.monster:getHealth() <= 0 then monster.go.monster:die() end
					end
				end
			end,
		},
		{
			class = "EquipmentItem",
			name = "equipmentitem",
			slot = ItemSlot.Weapon,
			energyRegenerationRate = -95,
		},
		{
			class = "Light",
			name = "light",
			range = 1,
			brightness = 4,
			color = vec(7,0,0),
		}
	},
}


defineObject{
	name = "charm_of_the_thief",
	baseObject = "base_item",
	tags = { "ascension_items", },
	components = {
		{
			class = "Model",
			model = "assets/models/items/spirit_mirror_pendant.fbx",
		},
		{
			class = "Item",
			uiName = "The Charm of the Thief",
			description = "A good luck charm crafted by an expert thief.",
			-- Requires Akroma's icons from grimrock forums
			-- http://www.grimrock.net/forum/viewtopic.php?f=22&t=8058
			-- If those are in your mod_assets/textures folder then
			-- uncomment the lines below and in the un/equip and onMove
			-- sections below and comment out the gfxIndex = 74/26 lines.
			-- gfxAtlas = "mod_assets/textures/akroma_icons2.dds",
			-- gfxIndex = 25,
			gfxIndex = 74,
			weight = 0.2,
			gameEffect = "Senses danger.",
			traits = { "necklace" },
			onUnequipItem = function(self, champion, slot)
				--self.go.item:setGfxIndex(25)
				self.go.item:setGfxIndex(74)
			end,
			onEquipItem = function(self, champion, slot)
				--self.go.item:setGfxIndex(25)
				self.go.item:setGfxIndex(74)
			end,
		},
		{
			class = "EquipmentItem",
			evasion = 10,
		},
		{
			class = "Script",
			name = "triggerOnMove",
			source = [[function performAction(dummyself, direction)
				local foundTrap = false
				for xx = party.x - 1, party.x + 1 do
				for yy = party.y - 1, party.y + 1 do
				for i in party.map:entitiesAt(xx, yy) do
					if i:getComponent("istrap") then
					if i.istrap:getValue() > 0 then foundTrap = true end
					end
					if i:getComponent("chest") then
					if i.chest:getMimic() then foundTrap = true end
					end
				end
				end
			end
			if foundTrap then 
				--self.go.item:setGfxIndex(23)
				self.go.item:setGfxIndex(26)
			else
				--self.go.item:setGfxIndex(25)
				self.go.item:setGfxIndex(74)
			end
			end
			]]
		},
	},
}

defineObject{
	name = "cloak_of_phasing",
	baseObject = "base_item",
	tags = { "ascension_items", },
	components = {
		{
			class = "Model",
			model = "assets/models/items/diviner_clothes.fbx",
		},
		{
			class = "Item",
			uiName = "Cloak of Phasing",
			description = "A cloak that exists in this world and elsewhere simultaneously.",
			gfxIndex = 167,
			weight = 0.6,
			traits = { "cloak" },
		},
		{
			class = "Script",
			name = "triggerOnDamage",
			source = [[
				function performAction(self, champion, damage, damageType)
					local chanceToPhase = 35
					if math.random(1, 100) <= chanceToPhase then
					for i = 1, 4 do
					party.party:getChampion(i):setConditionValue("invisibility", 5)
					end
					end
				end
			]]
		},
	},
}
defineObject{
	name = "heavy_shield_of_bashing",
	baseObject = "base_item",
	tags = { "ascension_items", },
	components = {
		{
			class = "Model",
			model = "assets/models/items/heavy_shield.fbx",
		},
		{
			class = "Item",
			uiName = "Heavy Shield of Bashing",
			description = "It's bashing time!",
			gfxIndex = 15,
			gfxIndexPowerAttack = 15,
			impactSound = "impact_blunt",
			weight = 6.5,
			traits = { "shield" },
		},
		{
			class = "EquipmentItem",
			slot = "Weapon",
			protection = 10,
		},
		{
			class = "MeleeAttack",
			attackPower = 30,
			cooldown = 6,
			swipe = "vertical",
			attackSound = "swipe_heavy",
			requirements = { "heavy_weapons", 3 },
			powerAttackTemplate = "knockback",
		},
	},
}

defineObject{
	name = "travelers_cloak",
	baseObject = "base_item",
	tags = { "ascension_items", },
	components = {
		{
			class = "Model",
			model = "assets/models/items/spidersilk_cloak.fbx",
		},
		{
			class = "Item",
			uiName = "Traveler's Cloak",
			gfxIndex = 321,
			weight = 0.5,
			traits = { "cloak" },
			description = "Knowledge comes from travel and new experiences.",
		},
		{
			class = "EquipmentItem",
			evasion = 15,
			willpower = 1,
		},
		{
			class = "Counter",
			name = "steps",
			value = 0,
		},
		{
		class = "Script",
		name = "triggerOnMove",
		source = [[
			function performAction(dummyself, direction)
				local stepCount = self.go.steps:getValue() + 1
				local willpowerCount = self.go.equipmentitem:getWillpower()
				if willpowerCount == nil then willpowerCount = 0 end
				self.go.steps:setValue(stepCount)
				if stepCount > (100 + ((willpowerCount - 1) * 350)) then
					self.go.equipmentitem:setWillpower(willpowerCount + 1)
					self.go.steps:setValue(0)
				end
			end
			]]
		},
	},
}

defineObject{
	name = "simple_backpack",
	baseObject = "base_item",
	tags = { "ascension_items", },
	components = {
		{
			class = "Model",
			model = "assets/models/items/sack_empty.fbx",
		},
		{
			class = "Item",
			uiName = "Simple Backpack",
			gfxIndex = 82,
			gfxIndexContainer = 482,
			weight = 0.4,
			fitContainer = false,
			gameEffect = "Stores items and increases carry capacity when worn.",
			description = "A simple drawstring backpack.",
			traits = { "cloak" },
		},
		{
			class = "EquipmentItem",
			evasion = -5,
			onRecomputeStats = function(self, champion)
				if champion:getLevel() > 0 then
					champion:addStatModifier("max_load", 35)
				end
			end,
		},
		{
			class = "ContainerItem",
			name = "backpack",
			containerType = "sack",
			openSound = "container_sack_open",
			closeSound = "container_sack_close",
			onInit = function(self)
				if self:getItemCount() > 0 then
					self.go.model:setModel("assets/models/items/sack_full.fbx")
					self.go.item:setGfxIndex(81)
					self.go.item:updateBoundingBox()
				end
			end,
			onInsertItem = function(self, item)
				-- convert to full sack
				if self.go.item:getGfxIndex() == 82 then
					self.go.model:setModel("assets/models/items/sack_full.fbx")
					self.go.item:setGfxIndex(81)
					self.go.item:updateBoundingBox()
				end
			end,
			onRemoveItem = function(self, item)
				-- convert to empty sack when last item is removed
				if self:getItemCount() == 0 and self.go.item:getGfxIndex() == 81 then
					self.go.model:setModel("assets/models/items/sack_empty.fbx")
					self.go.item:setGfxIndex(82)
					self.go.item:updateBoundingBox()
				end
			end,
		},
	},
}

defineObject{ 
	name = "staff_of_energy_shield",
	baseObject = "base_item",
	tags = { "ascension_items", },
	components = {
		{
			class = "Model",
			model = "assets/models/items/shaman_staff.fbx",
		},
		{
			class = "Item",
			uiName = "Staff of Energy Shield",
			description = "A rune covered staff with a pulsating poison green gem attached to its tip. You can sense great power in it.",
			gfxIndex = 1,
			gfxIndexPowerAttack = 440,
			impactSound = "impact_blunt",
			weight = 3.3,
			secondaryAction = "energyShield",
		},
		{
			class = "RunePanel",
			requirements = { "concentration", 2 },
		},
		{
			class = "EquipmentItem",
			slot = "Weapon",
			energy = 25,
		},
		{
			class = "CastSpell",
			name = "energyShield",
			uiName = "Energy Shield",
			cooldown = 5,
			spell = "energy_shield",
			energyCost = 25,
			power = 0,
			requirements = { "concentration", 3 },
		},
	},
}

defineObject{
	name = "gift_from_elsewhere",
	baseObject = "base_item",
	tags = { "ascension_items", },
	components = {
		{
			class = "Model",
			model = "assets/models/items/sack_empty.fbx",
		},
		{
			class = "Item",
			uiName = "Gift From Elsewhere",
			gfxIndex = 82,
			gfxIndexContainer = 482,
			weight = 0.4,
			fitContainer = false,
			description = "A gift appears as if from out of thin air.",
		},
		{
			class = "Particle",
		},
		{
			class = "ContainerItem",
			name = "containeritem",
			containerType = "sack",
			openSound = "container_sack_open",
			closeSound = "container_sack_close",
			onInit = function(self)
				local potionRoll = math.random(1, 100)
				if potionRoll <= 80 then
					self.go.containeritem:addItem(spawn("potion_healing").item)
				else
					self.go.containeritem:addItem(spawn("potion_greater_healing").item)
				end
				potionRoll = math.random(1, 100)
				if potionRoll <= 30 then
					self.go.containeritem:addItem(spawn("potion_healing").item)
				elseif potionRoll >= 31 and potionRoll <= 50 then
					self.go.containeritem:addItem(spawn("potion_greater_healing").item)
				end
				potionRoll = math.random(1, 100)
				if potionRoll <= 50 then
					self.go.containeritem:addItem(spawn("potion_energy").item)
				elseif potionRoll >= 51 and potionRoll <= 70 then
					self.go.containeritem:addItem(spawn("potion_greater_energy").item)
				end
				potionRoll = math.random(1, 100)
				if potionRoll <= 20 then
					self.go.containeritem:addItem(spawn("potion_bear_form").item)
				end
				potionRoll = math.random(1, 100)
				if potionRoll <= 20 then
					self.go.containeritem:addItem(spawn("potion_resurrection").item)
					self.go.particle:setParticleSystem("power_gem_item")
				end
				potionRoll = math.random(1, 100)
				if potionRoll <= 20 then
					self.go.particle:setParticleSystem("power_gem_item")
					local whichStat = math.random(1, 4)
					if whichStat == 1 then self.go.containeritem:addItem(spawn("potion_dexterity").item) end
					if whichStat == 2 then self.go.containeritem:addItem(spawn("potion_strength").item) end
					if whichStat == 3 then self.go.containeritem:addItem(spawn("potion_vitality").item) end
					if whichStat == 4 then self.go.containeritem:addItem(spawn("potion_willpower").item) end
				end
				for i = 1, 2 do
					potionRoll = math.random(1, 7)
					if potionRoll == 1 then
						self.go.containeritem:addItem(spawn("potion_shield").item)
					elseif potionRoll == 2 then
						self.go.containeritem:addItem(spawn("potion_rage").item)
					elseif potionRoll == 3 then
						self.go.containeritem:addItem(spawn("potion_bear_form").item)
					elseif potionRoll == 4 then
						self.go.containeritem:addItem(spawn("potion_speed").item)
					elseif potionRoll == 5 then
						self.go.containeritem:addItem(spawn("potion_cure_poison").item)
					elseif potionRoll == 6 then
						self.go.containeritem:addItem(spawn("potion_cure_disease").item)
					end
				end
				if self:getItemCount() > 0 then
					self.go.model:setModel("assets/models/items/sack_full.fbx")
					self.go.item:setGfxIndex(81)
					self.go.item:updateBoundingBox()
				end
			end,
			onInsertItem = function(self, item)
				-- convert to full sack
				if self.go.item:getGfxIndex() == 82 then
					self.go.model:setModel("assets/models/items/sack_full.fbx")
					self.go.item:setGfxIndex(81)
					self.go.item:updateBoundingBox()
				end
			end,
			onRemoveItem = function(self, item)
				-- convert to empty sack when last item is removed
				if self:getItemCount() == 0 and self.go.item:getGfxIndex() == 81 then
					self.go.model:setModel("assets/models/items/sack_empty.fbx")
					self.go.item:setGfxIndex(82)
					self.go.item:updateBoundingBox()
				end
			end,
		},
	},
}


-------------------
--    TRAITS     --
-------------------


defineTrait{
	name = "energyshield",
	uiName = "Energy Shield",
	icon = 11,
	charGen = false,
	hidden = false,
	gameEffect = "Energy Shield allows damage taken to be absorbed by your Energy, depleting that instead of your Health. Running out of Energy removes this effect.",	
	description = "Creates a magical barrier surrounding the caster, absorbing damage. Particularly strong blows can shatter the barrier.",
	onRecomputeStats = function(champion, level)
		if level > 0 then
			champion:addStatModifier("energy_regeneration_rate", -110)
		end
	end,
}

-------------------
--    SPELLS     --
-------------------

defineSpell{
	name = "energy_shield",
	uiName = "Energy Shield",
	gesture = 0,
	manaCost = 50,
	onCast = function(champion, x, y, direction, elevation, skillLevel)
		if champion:hasTrait("energyshield") then
			champion:removeTrait("energyshield")
		elseif not champion:hasTrait("energyshield") then
			champion:addTrait("energyshield")
		end
	end,
	skill = "concentration",
	requirements = { "concentration", 3 },
	icon = 85,
	spellIcon = 12,
	description = "Creates a magical barrier surrounding the champion, absorbing damage. Particularly strong blows can shatter the barrier.",
}
