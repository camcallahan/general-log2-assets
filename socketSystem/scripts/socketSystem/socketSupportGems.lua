-- This file has been generated by Dungeon Editor 2.1.9

--[[ PASSIVE GEMS
These are the basic gems used to modify items. They include
an ability for each item type that can be socketed (weapon/
shield/armor) and are generally tied to an element. They
modify the basic stats used by the champions, such as evasion,
 protection, health, energy, resistances, and the 
four primary stats. In weapons, accuracy, attackPower, and 
damage type can also be modified.
--]]

defineObject{ name = "socket_skull_chipped_heavy_weapons",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
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
			gameEffect = [[This item enchants items.
			- Alters requirements of weapons.
			- Alters requirements of armor.]],
			description = "The skull of a once strong creature.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
	}
}
defineObject{ name = "socket_skull_chipped_light_weapons",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Light Skull",
			gfxAtlas = "mod_assets/textures/akroma_icons5.dds",
			gfxIndex = 31,
			--gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This item enchants items.
			- Alters requirements of weapons.
			- Alters requirements of armor.]],
			description = "The skull of a once nimble creature.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
	}
}
defineObject{ name = "socket_skull_chipped_concentration",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "element_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Magic Skull",
			gfxAtlas = "mod_assets/textures/akroma_icons9.dds",
			gfxIndex = 3,
			--gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This item enchants items.
			- Alters requirements of weapons.
			- Alters requirements of armor.]],
			description = "The skull of a once magical being.",
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
	}
}