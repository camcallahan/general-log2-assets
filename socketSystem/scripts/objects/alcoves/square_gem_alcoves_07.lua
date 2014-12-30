-- | ************************************************************ |
-- | * Alcoves & Gems Collection by LordYig
-- | * Version : 1.0
-- | ************************************************************ |
-- Alcoves Definition
-- targetSize: a 3d vector specifying the extents of the click box.
-- targetPos: a 3d vector specifying the center position of the click box in model’s local space.
-- anchorRotation: a 3d vector specifying the item anchor rotation in model’s local space.
-- anchorPos: a 3d vector specifying the item anchor position in model’s local space.
-- square alcoves 07
-- lower - center
defineObject{
	name = "square_gem_alcove_07_l_c",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_l_c.fbx",
	anchorPos = vec(0, 1.1, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(0, 1.1, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
-- center - center
defineObject{
	name = "square_gem_alcove_07_c_c",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_c_c.fbx",
	anchorPos = vec(0, 1.6, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(0, 1.6, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
-- upper - center
defineObject{
	name = "square_gem_alcove_07_u_c",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_u_c.fbx",
	anchorPos = vec(0, 2.1, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(0, 2.1, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
-- lower - left
defineObject{
	name = "square_gem_alcove_07_l_l",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_l_l.fbx",
	anchorPos = vec(-0.5, 1.1, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(-0.5, 1.1, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
-- center - left
defineObject{
	name = "square_gem_alcove_07_c_l",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_c_l.fbx",
	anchorPos = vec(-0.5, 1.6, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(-0.5, 1.6, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
-- upper - left
defineObject{
	name = "square_gem_alcove_07_u_l",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_u_l.fbx",
	anchorPos = vec(-0.5, 2.1, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(-0.5, 2.1, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
-- lower - right
defineObject{
	name = "square_gem_alcove_07_l_r",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_l_r.fbx",
	anchorPos = vec(0.5, 1.1, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(0.5, 1.1, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
-- center - right
defineObject{
	name = "square_gem_alcove_07_c_r",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_c_r.fbx",
	anchorPos = vec(0.5, 1.6, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(0.5, 1.6, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
-- upper - right
defineObject{
	name = "square_gem_alcove_07_u_r",
	class = "Alcove",
	model = "mod_assets/models/env/alcoves/square_gem_alcove_07_u_r.fbx",
	anchorPos = vec(0.5, 2.1, -0.09),
	anchorRotation = vec(45, 0, 90),
	targetPos = vec(0.5, 2.1, 0),
	targetSize = vec(0.05, 0.05, 0.05),
	onInsertItem = function(self, item)
		local allowed = {"itm_gem_black_07", "itm_gem_blue_07", "itm_gem_golden_orange_07", "itm_gem_green_07", "itm_gem_light_magenta_07", "itm_gem_magenta_07", "itm_gem_orange_07", "itm_gem_pastel_green_07", "itm_gem_pastel_yellow_07", "itm_gem_pure_cyan_07", "itm_gem_pure_green_07", "itm_gem_pure_green_cyan_07", "itm_gem_pure_magenta_07", "itm_gem_pure_violet_magenta_07", "itm_gem_pure_yellow_green_07", "itm_gem_red_07", "itm_gem_white_07", "itm_gem_yellow_07"}
		for i = 1, #allowed do
			if item.name == allowed[i] then
				return item.name == allowed[i] and self:getItemCount() == 0
			end
		end
	end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}