-- Adding imersite
data:extend(
{	
	{
		type = "resource",
		name = "imersite",
		category = "kr-quarry",
		icon = kr_mip_icons_path .. "raw-imersite/raw-imersite.png",
		icon_size = 64,
		flags = {"placeable-neutral"},
		order="a-b-a",
		infinite = false,
		highlight = true,
		minimum = 50,
		normal = 350,
		infinite_depletion_amount = 10,
		resource_patch_search_radius = 12,
		tree_removal_probability = 1,
		tree_removal_max_distance = 32 * 32,
		minable =
		{
		  hardness = 1,
		  mining_time = 2,
		  result = "raw-imersite"
		},
		collision_box = {{ -3.4, -3.4}, {3.4, 3.4}},
		selection_box = {{ -3.5, -3.5}, {3.5, 3.5}},
		autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "imersite",
			order = "f",
			base_density = 1,
			base_spots_per_km2 = 0.2,
			has_starting_area_placement = false,
			random_spot_size_minimum = 0.01,
			random_spot_size_maximum = 0.1,
			regular_blob_amplitude_multiplier = 1,
			richness_post_multiplier = 0.8,
			additional_richness = 250000,
			regular_rq_factor_multiplier = 0.1,
			candidate_spot_count = 22
		},
		stage_counts = {0},
		stages =
		{
		  sheet =
		  {
			filename = kr_resources_sprites_path .. "imersite/imersite-rift.png",
			priority = "extra-high",
			width = 250,
			height = 250,
			frame_count = 3,
			variation_count = 1,
			hr_version =
				{
				filename = kr_resources_sprites_path .. "imersite/hr-imersite-rift.png",
				priority = "extra-high",
				width = 500,
				height = 500,
				frame_count = 3,
				variation_count = 1,
				scale = 0.5,
				}
		  }
		},
		stages_effect =
		{
		  sheet =
		  {
			filename = kr_resources_sprites_path .. "imersite/imersite-rift-glow.png",
			priority = "extra-high",
			width = 250,
			height = 250,
			frame_count = 3,
			variation_count = 1,
			blend_mode = "additive",
			flags = {"light"},
			hr_version =
			{
				filename = kr_resources_sprites_path .. "imersite/hr-imersite-rift-glow.png",
				priority = "extra-high",
				width = 500,
				height = 500,
				frame_count = 3,
				variation_count = 1,
				scale = 0.5,
			  blend_mode = "additive",
			  flags = {"light"}
			}
		  }
		},
		effect_animation_period = 5,
		effect_animation_period_deviation = 1,
		effect_darkness_multiplier = 3.5,
		min_effect_alpha = 0.2,
		max_effect_alpha = 0.3,
		map_color = {r=1, g=0.5, b=1},
		map_grid = false
	},	
	{
		type = "autoplace-control",
		name = "imersite",
		richness = true,
		order = "b-k",
		category = "resource"
	},
	{
		type = "noise-layer",
		name = "imersite"
	}
})