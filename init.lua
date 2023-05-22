local S
if minetest.get_modpath("intllib") then
    S = (intllib.make_gettext_pair and intllib.make_gettext_pair()) or intllib.Getter()
else
    S = function(s) return s end
end

local mod_name = "tfl_s7_stock_generic_livery_pack"

local default_seat_alpha = 192

-- The following variables may need to be overriden per template based on
-- future contributions. Currently, these values are the same for all livery
-- templates defined in this mod.
local template_designer = "Marnack"
local texture_license = "CC-BY-SA-3.0"
local texture_creator = "Marnack, with portions based on original texture by Mainote Plants Lab"

-- Define all of the livery tempalte names.  These will be used when creating
-- livery templates for each of the wagon types.
local livery_template_names = {
	 [1] =	{name = S("Generic - Triple Stripe"),			notes = "This a fictional variation of the original livery of the London Underground's S7 and S8 stock in which three wide stripes span the length of each unit."},
	 [2] =	{name = S("Generic - Middle Stripe"),			notes = "This a fictional variation of the original livery of the London Underground's S7 and S8 stock in which the stripe is located mid-wall instead of at its base."},
	 [3] =	{name = S("Generic - Two Color Stripe"),		notes = "This a fictional variation of the original livery of the London Underground's S7 and S8 stock in which a two color stripe wraps around the end of the train."},
	 [4] =	{name = S("Generic - Upper Lower Split"),		notes = "This a fictional variation of the original livery of the London Underground's S7 and S8 stock in which the upper and lower side walls can have different colors."},
	 [5] =	{name = S("Generic - Window Band"),				notes = "This a fictional variation of the original livery of the London Underground's S7 and S8 stock in which a horozontal band of color surrounds the side windows."},
}

local livery_templates = {
	["advtrains:under_s7dm"] = {
		[1] = {
			base_texture = mod_name.."_s7dm_01.png",
			overlays = {
				[1] = {name = S("Exterior Walls"),		texture = mod_name.."_s7dm_01_exterior_walls.png"},
				[2] = {name = S("Side Doors"),			texture = "advtrains_london_s7dm_common_doors.png"},
				[3] = {name = S("Upper Stripe"),		texture = mod_name.."_s7dm_01_upper_stripe.png"},
				[4] = {name = S("Middle Stripe"),		texture = mod_name.."_s7dm_01_middle_stripe.png"},
				[5] = {name = S("Lower Stripe"),		texture = mod_name.."_s7dm_01_lower_stripe.png"},
				[6] = {name = S("Roof"),				texture = "advtrains_london_s7dm_common_roof.png"},
			},
		},
		[2] = {
			base_texture = mod_name.."_s7dm_02.png",
			overlays = {
				[1] = {name = S("Cab End"),				texture = "advtrains_london_s7dm_common_cab_end.png"},
				[2] = {name = S("Side Doors"),			texture = "advtrains_london_s7dm_common_doors.png"},
				[3] = {name = S("Stripe"),				texture = mod_name.."_s7dm_02_stripe.png"},
				[4] = {name = S("Side Walls"),			texture = mod_name.."_s7dm_02_side_walls.png"},
				[5] = {name = S("Roof"),				texture = "advtrains_london_s7dm_common_roof.png"},
				[6] = {name = S("Seats"),				texture = mod_name.."_s7dm_02_seats.png",						alpha = default_seat_alpha},
			},
		},
		[3] = {
			base_texture = mod_name.."_s7dm_03.png",
			overlays = {
				[1] = {name = S("Cab End"),				texture = mod_name.."_s7dm_03_cab_end.png"},
				[2] = {name = S("Side Doors"),			texture = mod_name.."_s7dm_03_doors.png"},
				[3] = {name = S("Stripe"),				texture = mod_name.."_s7dm_03_stripe.png"},
				[4] = {name = S("Side Walls"),			texture = mod_name.."_s7dm_03_side_walls.png"},
				[5] = {name = S("Roof"),				texture = mod_name.."_s7dm_03_roof.png"},
				[6] = {name = S("Stripe Inset"),		texture = mod_name.."_s7dm_03_stripe_inset.png"},
			},
		},
		[4] = {
			base_texture = mod_name.."_s7dm_04.png",
			overlays = {
				[1] = {name = S("Cab End"),				texture = "advtrains_london_s7dm_common_cab_end.png"},
				[2] = {name = S("Side Doors"),			texture = "advtrains_london_s7dm_common_doors.png"},
				[3] = {name = S("Upper Walls"),			texture = mod_name.."_s7dm_04_upper_walls.png"},
				[4] = {name = S("Stripe"),				texture = mod_name.."_s7dm_04_stripe.png"},
				[5] = {name = S("Lower Walls"),			texture = mod_name.."_s7dm_04_lower_walls.png"},
				[6] = {name = S("Seats"),				texture = mod_name.."_s7dm_04_seats.png",						alpha = default_seat_alpha},
			},
		},
		[5] = {
			base_texture = mod_name.."_s7dm_05.png",
			overlays = {
				[1] = {name = S("Cab End"),				texture = "advtrains_london_s7dm_common_cab_end.png"},
				[2] = {name = S("Side Doors"),			texture = "advtrains_london_s7dm_common_doors.png"},
				[3] = {name = S("Window Band"),			texture = mod_name.."_s7dm_05_window_band.png"},
				[4] = {name = S("Window Band Edges"),	texture = mod_name.."_s7dm_05_window_band_edges.png"},
				[5] = {name = S("Side Walls"),			texture = mod_name.."_s7dm_05_side_walls.png"},
				[6] = {name = S("Seats"),				texture = mod_name.."_s7dm_05_seats.png",						alpha = default_seat_alpha},
			},
		},
	},
	["advtrains:under_s7ndm"] = {
		[1] = {
			base_texture = mod_name.."_s7ndm_01.png",
			overlays = {
				[1] = {name = S("Exterior Walls"),		texture = mod_name.."_s7ndm_01_exterior_walls.png"},
				[2] = {name = S("Side Doors"),			texture = "advtrains_london_s7ndm_common_doors.png"},
				[3] = {name = S("Upper Stripe"),		texture = mod_name.."_s7ndm_01_upper_stripe.png"},
				[4] = {name = S("Middle Stripe"),		texture = mod_name.."_s7ndm_01_middle_stripe.png"},
				[5] = {name = S("Lower Stripe"),		texture = mod_name.."_s7ndm_01_lower_stripe.png"},
				[6] = {name = S("Roof"),				texture = "advtrains_london_s7ndm_common_roof.png"},
			},
		},
		[2] = {
			base_texture = mod_name.."_s7ndm_02.png",
			overlays = {
				[1] = {name = S("Side Doors"),			texture = "advtrains_london_s7ndm_common_doors.png"},
				[2] = {name = S("Stripe"),				texture = mod_name.."_s7ndm_02_stripe.png"},
				[3] = {name = S("Side Walls"),			texture = mod_name.."_s7ndm_02_side_walls.png"},
				[4] = {name = S("Roof"),				texture = "advtrains_london_s7ndm_common_roof.png"},
				[5] = {name = S("Seats"),				texture = mod_name.."_s7ndm_02_seats.png",						alpha = default_seat_alpha},
			},
		},
		[3] = {
			base_texture = mod_name.."_s7ndm_03.png",
			overlays = {
				[1] = {name = S("Side Doors"),			texture = mod_name.."_s7ndm_03_doors.png"},
				[2] = {name = S("Stripe"),				texture = mod_name.."_s7ndm_03_stripe.png"},
				[3] = {name = S("Side Walls"),			texture = mod_name.."_s7ndm_03_side_walls.png"},
				[4] = {name = S("Roof"),				texture = "advtrains_london_s7ndm_common_roof.png"},
				[5] = {name = S("Stripe Inset"),		texture = mod_name.."_s7ndm_03_stripe_inset.png"},
			},
		},
		[4] = {
			base_texture = mod_name.."_s7ndm_04.png",
			overlays = {
				[1] = {name = S("Side Doors"),			texture = "advtrains_london_s7ndm_common_doors.png"},
				[2] = {name = S("Upper Walls"),			texture = mod_name.."_s7ndm_04_upper_walls.png"},
				[3] = {name = S("Stripe"),				texture = mod_name.."_s7ndm_04_stripe.png"},
				[4] = {name = S("Lower Walls"),			texture = mod_name.."_s7ndm_04_lower_walls.png"},
				[5] = {name = S("Seats"),				texture = mod_name.."_s7ndm_04_seats.png",						alpha = default_seat_alpha},
			},
		},
		[5] = {
			base_texture = mod_name.."_s7ndm_05.png",
			overlays = {
				[1] = {name = S("Side Doors"),			texture = "advtrains_london_s7ndm_common_doors.png"},
				[2] = {name = S("Window Band"),			texture = mod_name.."_s7ndm_05_window_band.png"},
				[3] = {name = S("Window Band Edges"),	texture = mod_name.."_s7ndm_05_window_band_edges.png"},
				[4] = {name = S("Side Walls"),			texture = mod_name.."_s7ndm_05_side_walls.png"},
				[5] = {name = S("Seats"),				texture = mod_name.."_s7ndm_05_seats.png",						alpha = default_seat_alpha},
			},
		},
	},
}

local predefined_liveries = {
	{
		name = "Generic - Village Green",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Triple Stripe",
			overlays = {
				[1] = {id = 1,	color = "#006400"},	-- Exterior Walls
				[2] = {id = 2,	color = "#F2F2F2"},	-- Side Doors
				[3] = {id = 3,	color = "#006400"},	-- Upper Stripe
				[4] = {id = 4,	color = "#F2F2F2"},	-- Middle Stripe
				[5] = {id = 5,	color = "#333333"},	-- Lower Stripe
--				[6] = {id = 6,	color = "#000000"},	-- Roof
			},
		},
	},
	{
		name = "Generic - Village Green",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Triple Stripe",
			overlays = {
				[1] = {id = 1,	color = "#006400"},	-- Exterior Walls
				[2] = {id = 2,	color = "#F2F2F2"},	-- Side Doors
				[3] = {id = 3,	color = "#006400"},	-- Upper Stripe
				[4] = {id = 4,	color = "#F2F2F2"},	-- Middle Stripe
				[5] = {id = 5,	color = "#333333"},	-- Lower Stripe
--				[6] = {id = 6,	color = "#000000"},	-- Roof
			},
		},
	},
	{
		name = "Generic - Orange Appeal",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Triple Stripe",
			overlays = {
				[1] = {id = 1,	color = "#CD3E00"},	-- Exterior Walls
				[2] = {id = 2,	color = "#DAA520"},	-- Side Doors
				[3] = {id = 3,	color = "#333333"},	-- Upper Stripe
				[4] = {id = 4,	color = "#333333"},	-- Middle Stripe
				[5] = {id = 5,	color = "#CD3E00"},	-- Lower Stripe
				[6] = {id = 6,	color = "#CD3E00"},	-- Roof
			},
		},
	},
	{
		name = "Generic - Orange Appeal",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Triple Stripe",
			overlays = {
				[1] = {id = 1,	color = "#CD3E00"},	-- Exterior Walls
				[2] = {id = 2,	color = "#DAA520"},	-- Side Doors
				[3] = {id = 3,	color = "#333333"},	-- Upper Stripe
				[4] = {id = 4,	color = "#333333"},	-- Middle Stripe
				[5] = {id = 5,	color = "#CD3E00"},	-- Lower Stripe
				[6] = {id = 6,	color = "#CD3E00"},	-- Roof
			},
		},
	},
	{
		name = "Generic - Fly Away Blue",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Triple Stripe",
			overlays = {
				[1] = {id = 1,	color = "#3737FF"},	-- Exterior Walls
				[2] = {id = 2,	color = "#F2F2F2"},	-- Side Doors
				[3] = {id = 3,	color = "#3737FF"},	-- Upper Stripe
				[4] = {id = 4,	color = "#333333"},	-- Middle Stripe
				[5] = {id = 5,	color = "#3737FF"},	-- Lower Stripe
--				[6] = {id = 6,	color = "#000000"},	-- Roof
			},
		},
	},
	{
		name = "Generic - Fly Away Blue",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Triple Stripe",
			overlays = {
				[1] = {id = 1,	color = "#3737FF"},	-- Exterior Walls
				[2] = {id = 2,	color = "#F2F2F2"},	-- Side Doors
				[3] = {id = 3,	color = "#3737FF"},	-- Upper Stripe
				[4] = {id = 4,	color = "#333333"},	-- Middle Stripe
				[5] = {id = 5,	color = "#3737FF"},	-- Lower Stripe
--				[6] = {id = 6,	color = "#000000"},	-- Roof
			},
		},
	},
	{
		name = "Generic - Nordic Dreams",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Middle Stripe",
			overlays = {
				[1] = {id = 1,	color = "#87CEEB"},	-- Cab End
				[2] = {id = 2,	color = "#4169E1"},	-- Side Doors
--				[3] = {id = 3,	color = "#000000"},	-- Stripe
				[4] = {id = 4,	color = "#87CEEB"},	-- Side Walls
--				[5] = {id = 5,	color = "#000000"},	-- Roof
				[6] = {id = 6,	color = "#4169E1"},	-- Seats
			},
		},
	},
	{
		name = "Generic - Nordic Dreams",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Middle Stripe",
			overlays = {
				[1] = {id = 1,	color = "#4169E1"},	-- Side Doors
--				[2] = {id = 2,	color = "#000000"},	-- Stripe
				[3] = {id = 3,	color = "#87CEEB"},	-- Side Walls
--				[4] = {id = 4,	color = "#000000"},	-- Roof
				[5] = {id = 5,	color = "#4169E1"},	-- Seats
			},
		},
	},
	{
		name = "Generic - Blue Bayou",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Two Color Stripe",
			overlays = {
				[1] = {id = 1,	color = "#007E99"},	-- Cab End
				[2] = {id = 2,	color = "#007E99"},	-- Side Doors
				[3] = {id = 3,	color = "#007E99"},	-- Stripe
				[4] = {id = 4,	color = "#F2F2F2"},	-- Side Walls
--				[5] = {id = 5,	color = "#000000"},	-- Roof
				[6] = {id = 6,	color = "#007E99"},	-- Stripe Inset
			},
		},
	},
	{
		name = "Generic - Blue Bayou",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Two Color Stripe",
			overlays = {
				[1] = {id = 1,	color = "#007E99"},	-- Side Doors
				[2] = {id = 2,	color = "#007E99"},	-- Stripe
				[3] = {id = 3,	color = "#F2F2F2"},	-- Side Walls
--				[4] = {id = 4,	color = "#000000"},	-- Roof
				[5] = {id = 5,	color = "#007E99"},	-- Stripe Inset
			},
		},
	},
	{
		name = "Generic - Union Jack",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Two Color Stripe",
			overlays = {
				[1] = {id = 1,	color = "#F2F2F2"},	-- Cab End
				[2] = {id = 2,	color = "#C8102E"},	-- Side Doors
				[3] = {id = 3,	color = "#C8102E"},	-- Stripe
				[4] = {id = 4,	color = "#012169"},	-- Side Walls
--				[5] = {id = 5,	color = "#000000"},	-- Roof
				[6] = {id = 6,	color = "#F2F2F2"},	-- Stripe Inset
			},
		},
	},
	{
		name = "Generic - Union Jack",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Two Color Stripe",
			overlays = {
				[1] = {id = 1,	color = "#C8102E"},	-- Side Doors
				[2] = {id = 2,	color = "#C8102E"},	-- Stripe
				[3] = {id = 3,	color = "#012169"},	-- Side Walls
--				[4] = {id = 4,	color = "#000000"},	-- Roof
				[5] = {id = 5,	color = "#F2F2F2"},	-- Stripe Inset
			},
		},
	},
	{
		name = "Generic - Falling Leaves",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Upper Lower Split",
			overlays = {
				[1] = {id = 1,	color = "#E73300"},	-- Cab End
				[2] = {id = 2,	color = "#FFD700"},	-- Side Doors
				[3] = {id = 3,	color = "#FF8818"},	-- Upper Walls
				[4] = {id = 4,	color = "#141414"},	-- Stripe
				[5] = {id = 5,	color = "#E73300"},	-- Lower Walls
				[6] = {id = 6,	color = "#A52A2A"},	-- Seats
			},
		},
	},
	{
		name = "Generic - Falling Leaves",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Upper Lower Split",
			overlays = {
				[1] = {id = 1,	color = "#FFD700"},	-- Side Doors
				[2] = {id = 2,	color = "#FF8818"},	-- Upper Walls
				[3] = {id = 3,	color = "#141414"},	-- Stripe
				[4] = {id = 4,	color = "#E73300"},	-- Lower Walls
				[5] = {id = 5,	color = "#A52A2A"},	-- Seats
			},
		},
	},
	{
		name = "Generic - Marooned",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Window Band",
			overlays = {
				[1] = {id = 1,	color = "#800000"},	-- Cab End
				[2] = {id = 2,	color = "#800000"},	-- Side Doors
				[3] = {id = 3,	color = "#646464"},	-- Window Band
				[4] = {id = 4,	color = "#AEAEAE"},	-- Window Band Edges
				[5] = {id = 5,	color = "#F2F2F2"},	-- Side Walls
				[6] = {id = 6,	color = "#800000"},	-- Seats
			},
		},
	},
	{
		name = "Generic - Marooned",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Window Band",
			overlays = {
				[1] = {id = 1,	color = "#800000"},	-- Side Doors
				[2] = {id = 2,	color = "#646464"},	-- Window Band
				[3] = {id = 3,	color = "#AEAEAE"},	-- Window Band Edges
				[4] = {id = 4,	color = "#F2F2F2"},	-- Side Walls
				[5] = {id = 5,	color = "#800000"},	-- Seats
			},
		},
	},
	{
		name = "Generic - That 70's Vibe",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7dm",
			livery_template_name = "Generic - Window Band",
			overlays = {
				[1] = {id = 1,	color = "#8B4513"},	-- Cab End
				[2] = {id = 2,	color = "#FFA500"},	-- Side Doors
				[3] = {id = 3,	color = "#F5DEB3"},	-- Window Band
				[4] = {id = 4,	color = "#FFA500"},	-- Window Band Edges
				[5] = {id = 5,	color = "#8B4513"},	-- Side Walls
				[6] = {id = 6,	color = "#8B4513"},	-- Seats
			},
		},
	},
	{
		name = "Generic - That 70's Vibe",
		notes = "",
		livery_design = {
			wagon_type = "advtrains:under_s7ndm",
			livery_template_name = "Generic - Window Band",
			overlays = {
				[1] = {id = 1,	color = "#FFA500"},	-- Side Doors
				[2] = {id = 2,	color = "#F5DEB3"},	-- Window Band
				[3] = {id = 3,	color = "#FFA500"},	-- Window Band Edges
				[4] = {id = 4,	color = "#8B4513"},	-- Side Walls
				[5] = {id = 5,	color = "#8B4513"},	-- Seats
			},
		},
	},
}

-- This mod needs to register itself with the livery database in order to be
-- allowed to add livery templates and predefined liveries. It does not need
-- to register itself with the livery designer tool, however, since it will
-- not be registering any wagons. 
advtrains_livery_database.register_mod(mod_name)

-- The following is "boilerplate" code for registering the preceding livery
-- template information with the livery database. It is suitable for basic
-- livery templates such as those defined in this mod. Using some of the more
-- advanced features that are possible with livery templates will likely
-- require modifications to this code. Such advanced features include adding
-- support for models that use multiple texture slots or liveries that require
-- callback function in support of more complex visual features.

-- Register this mod's livery templates with the livery database.
for wagon_type, wagon_livery_templates in pairs(livery_templates) do
	for livery_template_id, livery_template in pairs(wagon_livery_templates) do
		local livery_template_name = livery_template_names[livery_template_id].name
		if livery_template_name then
			advtrains_livery_database.add_livery_template(
				wagon_type,
				livery_template_name,
				{livery_template.base_texture},
				mod_name,
				(livery_template.overlays and #livery_template.overlays) or 0,
				livery_template.designer or template_designer,
				livery_template.texture_license or texture_license,
				livery_template.texture_creator or texture_creator,
				livery_template_names[livery_template_id].notes
			)
			if livery_template.overlays then
				for overlay_id, overlay in ipairs(livery_template.overlays) do
					advtrains_livery_database.add_livery_template_overlay(
						wagon_type,
						livery_template_name,
						overlay_id,
						overlay.name,
						1,					-- Texture slot index
						overlay.texture,
						overlay.alpha
					)
				end
			end
		end
	end
end

-- Register this mod's predefined wagon liveries.
for _, predefined_livery in pairs(predefined_liveries) do
	local livery_design = predefined_livery.livery_design
	advtrains_livery_database.add_predefined_livery(
		predefined_livery.name,
		livery_design,
		mod_name,
		predefined_livery.notes
	)
end
