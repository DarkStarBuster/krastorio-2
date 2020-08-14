---------------------------------------------------------------------------
-- -- -- PRE FINAL FIXES
---------------------------------------------------------------------------
krastorio.stage = "data-final-fixes"
---------------------------------------------------------------------------
-- Apply module limitations
for recipe_name, recipe in pairs(data.raw.recipe) do
	if recipe.mod == "Krastorio2" then 
		if recipe.allow_efficiency == true then
			krastorio.modules.addEfficiencyLimitation(recipe_name, true)
		elseif recipe.allow_speed == true then
			krastorio.modules.addSpeedLimitation(recipe_name, true)
		elseif recipe.allow_productivity == true then
			krastorio.modules.addProductivityLimitation(recipe_name, true)
		elseif recipe.allow_pollution_reduction == true then
			krastorio.modules.addLessPollutionLimitation(recipe_name, true)
		end
	end
end
---------------------------------------------------------------------------
-- -- -- SCIENCE PACK SANITIZING

-- -- Krastorio 2 science pack collection
krastorio.technologies.addSciencePackCollection("Krastorio2",
{
	"basic-tech-card",
	"automation-science-pack",
	"logistic-science-pack",
	"military-science-pack",
	"chemical-science-pack",
	"production-science-pack",
	"utility-science-pack",
	"matter-tech-card",
	"space-science-pack",
	"advanced-tech-card",
	"singularity-tech-card"
})

-- sanitize Krastorio Technologies with other mods
krastorio.technologies.sanitizeUnitsOfAllTechnologiesInPacks("Krastorio2", false)

-- -- Sanitize T2 only (in bottom up on tree for correct result)
local science_pack_incompatibilities = 
{
	"basic-tech-card",
	"automation-science-pack",
	"logistic-science-pack",
	"military-science-pack",
	"chemical-science-pack"
}

-- Sanitize matter tech card from T1 packs
krastorio.technologies.removeSciencePackIncompatibleWith("matter-tech-card", science_pack_incompatibilities)
-- Sanitize space science pack from T1 packs
krastorio.technologies.removeSciencePackIncompatibleWith("space-science-pack", science_pack_incompatibilities)
-- Sanitize advanced tech card from T1 packs
krastorio.technologies.removeSciencePackIncompatibleWith("advanced-tech-card", science_pack_incompatibilities)
-- Sanitize singularity tech card from T1 packs
krastorio.technologies.removeSciencePackIncompatibleWith("singularity-tech-card", science_pack_incompatibilities)

-- -- Sanitize T1 only (in bottom up on tree for correct result)
science_pack_incompatibilities = 
{
	"basic-tech-card"
}

-- Sanitize production science pack from T0 packs
krastorio.technologies.removeSciencePackIncompatibleWith("production-science-pack",	science_pack_incompatibilities)
-- Sanitize utility science pack from T0 packs
krastorio.technologies.removeSciencePackIncompatibleWith("utility-science-pack", science_pack_incompatibilities)

-- -- -- ENFORCE SCIENCE PACK PREREQUISITE COHERENCE 
krastorio.technologies.enforceUsedSciencePacksInPrerequisites()
---------------------------------------------------------------------------
-- OPTION FIXES
---------------------------------------------------------------------------
-- Apply the choosen science pack recipes
require(kr_prototypes_path .. "vanilla-changes/optional/modify-science-packs-recipes")
-- Apply fixes if in peaceful mode
require(kr_prototypes_path .. "vanilla-changes/optional/peaceful-mode")
-- Final fuels fixes
require(kr_prototypes_path .. "vanilla-changes/optional/rebalance-vehicles&fuels-final-fixes")
-- Change the background with the selected one
require(kr_prototypes_path .. "vanilla-changes/optional/change-background")
---------------------------------------------------------------------------
-- -- -- COMPATIBILITY INITIALIZATION (data final fixes stage)
---------------------------------------------------------------------------
local scripts_path = "compatibility-scripts/data-final-fixes/"
-- Angels (multiple scripts)
require(scripts_path .. "angels")
require(scripts_path .. "aai-industry")
require(scripts_path .. "aai-vehicles")
require(scripts_path .. "aai-programmable-vehicles")
require(scripts_path .. "aircraft")
require(scripts_path .. "AsphaltRoads")
-- Bobs (multiple scripts)
require(scripts_path .. "bobs_mod")
require(scripts_path .. "Clockwork")
require(scripts_path .. "Dectorio")
require(scripts_path .. "DeadlockLargerLamp")
require(scripts_path .. "deadlock-beltboxes-loaders")
require(scripts_path .. "ElectricTrain")
require(scripts_path .. "FoodIndustry")
require(scripts_path .. "Hovercrafts")
require(scripts_path .. "LightedPolesPlus")
require(scripts_path .. "Nuclear Fuel")
-- Pyanodons (multiple scripts)
require(scripts_path .. "Pyanodon")
require(scripts_path .. "realistic-electric-trains")
require(scripts_path .. "space-exploration")
require(scripts_path .. "vtk-armor-plating")
require(scripts_path .. "RealisticReactors")
require(scripts_path .. "mod-assertions")
---------------------------------------------------------------------------
-- Add new fuels to entities

data.raw["assembling-machine"]["stone-furnace"].energy_source.fuel_categories = {"chemical", "vehicle-fuel"}
data.raw["assembling-machine"]["steel-furnace"].energy_source.fuel_categories = {"chemical", "vehicle-fuel"}
data.raw["boiler"]["boiler"].energy_source.fuel_categories = {"chemical", "vehicle-fuel"}
data.raw["inserter"]["burner-inserter"].energy_source.fuel_categories = {"chemical", "vehicle-fuel"}
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_categories = {"chemical", "vehicle-fuel"}

---------------------------------------------------------------------------
-- -- -- FIXES
---------------------------------------------------------------------------

if krastorio.general.getSafeSettingValue("kr-fix-laser-artillery-turret") then
data.raw["electric-turret"]["kr-laser-artillery-turret"].starting_attack_sound = nil
end