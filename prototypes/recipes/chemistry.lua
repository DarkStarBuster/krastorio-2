-- A RECIPE FOR STAY IN THIS FILE SHOULD HAVE THE ATTRIBUTE category = "chemistry"
return
{
	{
		type = "recipe",
		name = "kr-water",
		localized_name = {"fluid-name.water"},
		category = "chemistry",
		icon = kr_recipes_icons_path .. "water.png",
		icon_size = 256,
		energy_required = 5,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		ingredients = 
		{
			{ type = "fluid", name = "oxygen", amount = 20 },
			{ type = "fluid", name = "hydrogen", amount = 30 }
		},
		results =
		{
			{ type = "fluid", name = "water", amount = 50 }
		},
		subgroup = "raw-material",
		order = "y03[water]"
	},
	{
		type = "recipe",
		name = "ammonia",
		category = "chemistry",
		icon = kr_fluids_icons_path  .. "ammonia.png",
		icon_size = 64,		
		energy_required = 5,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="fluid", name="hydrogen", amount=50},
			{type="fluid", name="nitrogen", amount=50}
		},
		results =
		{ 
			{type="fluid", name="ammonia", amount=50}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.106, g = 0.000, b = 0.50, a = 0.250},
			secondary = {r = 0.200, g = 0.000, b = 0.690, a = 0.127},
			tertiary = {r = 0.210, g = 0.000, b = 0.75, a = 0.350}, 
			quaternary = {r = 0.106, g = 0.000, b = 0.50, a = 0.900}
		},
		subgroup = "raw-material",
		order = "y03[ammonia]"
	},
	{
		type = "recipe",
		name = "nitric-acid",
		category = "chemistry",
		icon = kr_fluids_icons_path  .. "nitric-acid.png",
		icon_size = 64,		
		energy_required = 5,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="fluid", name="ammonia", amount=50},
			{type="fluid", name="oxygen", amount=50}
		},
		results =
		{ 
			{type="fluid", name="nitric-acid", amount=50}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.800, g = 0.000, b = 0.100, a = 0.200},
			secondary = {r = 0.500, g = 0.100, b = 0.300, a = 0.357},
			tertiary = {r = 0.430, g = 0.000, b = 0.450, a = 0.200}, 
			quaternary = {r = 0.800, g = 0.000, b = 0.100, a = 0.900}
		},
		subgroup = "raw-material",
		order = "y04[nitric-acid]"
	},
	{
		type = "recipe",
		name = "hydrogen-chloride",
		category = "chemistry",
		icon = kr_fluids_icons_path  .. "hydrogen-chloride.png",
		icon_size = 64,		
		energy_required = 5,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="fluid", name="chlorine", amount=50},
			{type="fluid", name="hydrogen", amount=50}
		},
		results =
		{ 
			{type="fluid", name="hydrogen-chloride", amount=50}
		},		
		crafting_machine_tint =
		{
			primary = {r = 0.835, g = 0.901, b = 0.862, a = 0.250},
			secondary = {r = 0.698, g = 0.839, b = 0.756, a = 0.127},
			tertiary = {r = 0.321, g = 0.890, b = 0.443, a = 0.250}, -- #52e371
			quaternary = {r = 0.835, g = 0.901, b = 0.862, a = 0.900}
		},
		subgroup = "raw-material",
		order = "y05[hydrogen-chloride]"
	},
	{
		type = "recipe",
		name = "heavy-water",
		category = "chemistry",
		icon = kr_fluids_icons_path  .. "heavy-water.png",
		icon_size = 64,	
		energy_required = 5,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients = 
		{
			{ type = "fluid", name = "water", amount = 100 }
		},
		results =
		{
			{ type = "fluid", name = "heavy-water", amount = 1 }
		},
		subgroup = "raw-material",
		order = "y06[heavy-water]"
	},
	{
		type = "recipe",
		name = "enriched-iron",
		category = "chemistry",
		icon = kr_mip_icons_path .. "enriched-iron/enriched-iron.png",
		icon_size = 64,
		energy_required = 3,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type = "fluid", name = "sulfuric-acid", amount = 3},
			{type = "fluid", name = "water", amount = 25, catalyst_amount = 25},
			{type = "item",  name = "iron-ore", amount = 9}
		},
		results =
		{ 
			{type = "item",  name = "enriched-iron", amount = 6},
			{type = "fluid", name = "dirty-water", amount = 25, catalyst_amount = 25}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.25, g = 0.50, b = 0.65, a = 0.200},
			secondary = {r = 0.50, g = 0.70, b = 0.90, a = 0.357},
			tertiary = {r = 0.10, g = 0.25, b = 0.50, a = 0.100}, 
			quaternary = {r = 0.25, g = 0.50, b = 0.65, a = 0.850}
		},
		subgroup = "intermediate-product",
		order = "e01[enriched-iron]"
	},
	{
		type = "recipe",
		name = "enriched-copper",
		icon = kr_mip_icons_path .. "enriched-copper/enriched-copper.png",
		icon_size = 64,
		category = "chemistry",
		energy_required = 3,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type = "fluid", name = "sulfuric-acid", amount = 3},
			{type = "fluid", name = "water", amount = 25, catalyst_amount = 25},
			{type = "item",  name = "copper-ore", amount = 9}
		},
		results =
		{ 
			{type = "item",  name = "enriched-copper", amount = 6},
			{type = "fluid", name = "dirty-water", amount = 25, catalyst_amount = 25}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.501, b = 0.000, a = 0.000},
			secondary = {r = 0.200, g = 0.680, b = 0.300, a = 0.357},
			tertiary = {r = 0.430, g = 0.305, b = 0.2, a = 0.000}, 
			quaternary = {r = 0.970, g = 0.501, b = 0.000, a = 0.900}
		},
		subgroup = "intermediate-product",
		order = "e02[enriched-copper]"
	},
	{
		type = "recipe",
		name = "lithium-chloride",
		category = "chemistry",
		icon = kr_mip_icons_path .. "lithium-chloride/lithium-chloride.png",
		icon_size = 64,
		energy_required = 5,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="fluid", name="mineral-water", amount=10},
			{type="fluid", name="hydrogen-chloride", amount=10}
		},
		results =
		{ 
			{type="item", name="lithium-chloride", amount=5}
		},
		subgroup = "raw-material",
		order = "y07[lithium-chloride]",
		crafting_machine_tint =
		{
			primary = {r = 0.662, g = 0.807, b = 0.839, a = 0.000}, 
			secondary = {r = 0.541, g = 0.647, b = 0.670, a = 0.250}, 
			tertiary = {r = 0.454, g = 0.517, b = 0.529, a = 0.500}, 
			quaternary = {r = 0.662, g = 0.807, b = 0.839, a = 0.900} 
		}
	},
	{
		type = "recipe",
		name = "biomethanol",
		category = "chemistry",
		icon = kr_fluids_icons_path  .. "biomethanol.png",
		icon_size = 64,
		energy_required = 20,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="item", name="wood", amount=30},
			{type="fluid", name="oxygen", amount=120, catalyst_amount = 120}
		},
		results =
		{ 
			{type="fluid", name="biomethanol", amount=30}
		},
		subgroup = "raw-material",
		order = "y08[biomethanol]",
		crafting_machine_tint =
		{
			primary = {r = 0.25, g = 0.53, b = 0.15, a = 0.000}, 
			secondary = {r = 0.27, g =0.53, b = 0.12, a = 0.250}, 
			primary = {r = 0.25, g = 0.53, b = 0.15, a = 0.750}, 
			secondary = {r = 0.27, g =0.53, b = 0.12, a = 0.900}, 
		}
	},
	---
	-- Fuels
	---
	{
		type = "recipe",
		name = "fuel",
		category = "chemistry",
		icon = kr_icons_path .. "fuel.png",
		icon_size = 64,
		energy_required = 10,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="item", name="solid-fuel", amount=5},
			{type="fluid", name="hydrogen", amount=50, catalyst_amount = 50}
		},
		results =
		{ 
			{type="item", name="fuel", amount=5}
		},
		subgroup = "intermediate-product",
		order = "f01[fuel]",
		crafting_machine_tint =
		{
			primary = {r = 0.662, g = 0.807, b = 0.839, a = 0.000}, 
			secondary = {r = 0.541, g = 0.647, b = 0.670, a = 0.250}, 
			tertiary = {r = 0.454, g = 0.517, b = 0.529, a = 0.500}, 
			quaternary = {r = 0.662, g = 0.807, b = 0.839, a = 0.900} 
		}
	},
	{
		type = "recipe",
		name = "bio-fuel",
		category = "chemistry",
		icon = kr_icons_path .. "bio-fuel.png",
		icon_size = 64,
		energy_required = 10,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="item", name="fuel", amount=5},
			{type="fluid", name="biomethanol", amount=50, catalyst_amount = 50}
		},
		results =
		{ 
			{type="item", name="bio-fuel", amount=10}
		},
		subgroup = "intermediate-product",
		order = "f02[bio-fuel]",
		crafting_machine_tint =
		{
			primary = {r = 0.30, g = 0.53, b = 0.20, a = 0.000}, 
			secondary = {r = 0.30, g =0.53, b = 0.20, a = 0.250}, 
			tertiary = {r = 0.454, g = 0.517, b = 0.529, a = 0.500}, 
			quaternary = {r = 0.662, g = 0.807, b = 0.839, a = 0.900} 
		}
	},
	---
	{
		type = "recipe",
		name = "menarite-crystal",
		category = "chemistry",
		icon = kr_mip_icons_path .. "menarite-crystal/menarite-crystal.png",
		icon_size = 64,	
		energy_required = 20,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="item", name="menarite-powder", amount=5},
			{type="fluid", name="nitric-acid", amount=10, catalyst_amount = 50}
		},
		result = "menarite-crystal",
		subgroup = "intermediate-product",
		order = "q3[menarite-crystal]",
		crafting_machine_tint = 
		{
			primary = {r = 0.25, g = 0.50, b = 0.65, a = 0.150},
			secondary = {r = 0.50, g = 0.70, b = 0.90, a = 0.357},
			tertiary = {r = 0.10, g = 0.25, b = 0.50, a = 0.100}, 
			quaternary = {r = 0.25, g = 0.50, b = 0.65, a = 0.900}
		}
	},
	{
		type = "recipe",
		name = "imersite-crystal",
		category = "chemistry",
		icon = kr_mip_icons_path .. "imersite-crystal/imersite-crystal.png",
		icon_size = 64,	
		energy_required = 30,
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		allow_productivity = true,
		ingredients =
		{
			{type="item", name="imersite-powder", amount=5},
			{type="fluid", name="nitric-acid", amount=10, catalyst_amount = 50}
		},
		result = "imersite-crystal",
		subgroup = "intermediate-product",
		order = "q4[imersite-crystal]",
		crafting_machine_tint = 
		{
			primary = {r = 0.882, g = 0.337, b = 0.890, a = 0.200},
			secondary = {r = 0.90, g = 0.30, b = 0.25, a = 0.357},
			tertiary = {r = 0.623, g = 0.270, b = 0.631, a = 0.100}, 
			quaternary = {r = 0.882, g = 0.337, b = 0.890, a = 0.900}
		}
	}
}
