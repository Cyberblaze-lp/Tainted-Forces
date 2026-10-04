import mods.smokeythebandicoot.witcherycompanion.Altar;
import mods.smokeythebandicoot.witcherycompanion.SpinningWheel;
import mods.smokeythebandicoot.witcherycompanion.Distillery;

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;


//Altar
    for item in [
        <minecraft:grass>,
        <minecraft:dirt>,
        <minecraft:carrot>,
        <minecraft:potato>,
        <minecraft:farmland>,
        <minecraft:wheat_seeds>,
        <minecraft:wheat>,
        <minecraft:reeds>,
        <minecraft:cactus>,
        <minecraft:red_flower>,
        <minecraft:yellow_flower>

    ] as IItemStack[]{
        Altar.unregisterPowerSource(item);
    }

    Altar.registerPowerSource(<ore:grass> as IOreDictEntry, 1, 200);
    Altar.registerPowerSource(<ore:seed> as IOreDictEntry, 4, 60);
    Altar.registerPowerSource(<ore:logWood> as IOreDictEntry, 1, 100);
    Altar.registerPowerSource(<ore:treeLeaves> as IOreDictEntry, 2, 100);
    Altar.registerPowerSource(<botania:specialflower> as IItemStack, 20, 10);
    Altar.registerPowerSource(<botania:floatingspecialflower> as IItemStack, 20, 10);
    Altar.registerPowerSource(<deeperdepths:candle> as IItemStack, 5, 30);
    Altar.registerPowerSource(<botania:pylon> as IItemStack, 30, 6);


    for plant in [
        <tfc:plants/allium>,
        <tfc:plants/athyrium_fern>,
        <tfc:plants/barrel_cactus>,
        <tfc:plants/basil>,
        <tfc:plants/bay_laurel>,
        <tfc:plants/black_orchid>,
        <tfc:plants/blood_lily>,
        <tfc:plants/blue_orchid>,
        <tfc:plants/butterfly_milkweed>,
        <tfc:plants/calendula>,
        <tfc:plants/canna>,
        <tfc:plants/cardamom>,
        <tfc:plants/cilantro>,
        <tfc:plants/cumin>,
        <tfc:plants/dandelion>,
        <tfc:plants/duckweed>,
        <tfc:plants/field_horsetail>,
        <tfc:plants/fountain_grass>,
        <tfc:plants/foxglove>,
        <tfc:plants/goldenrod>,
        <tfc:plants/grape_hyacinth>,
        <tfc:plants/guzmania>,
        <tfc:plants/houstonia>,
        <tfc:plants/labrador_tea>,
        <tfc:plants/lady_fern>,
        <tfc:plants/licorice_fern>,
        <tfc:plants/lotus>,
        <tfc:plants/meads_milkweed>,
        <tfc:plants/morning_glory>,
        <tfc:plants/moss>,
        <tfc:plants/nasturtium>,
        <tfc:plants/orchard_grass>,
        <tfc:plants/oregano>,
        <tfc:plants/ostrich_fern>,
        <tfc:plants/oxeye_daisy>,
        <tfc:plants/pampas_grass>,
        <tfc:plants/perovskia>,
        <tfc:plants/pimento>,
        <tfc:plants/pistia>,
        <tfc:plants/poppy>,
        <tfc:plants/porcini>,
        <tfc:plants/primrose>,
        <tfc:plants/pulsatilla>,
        <tfc:plants/reindeer_lichen>,
        <tfc:plants/rose>,
        <tfc:plants/rough_horsetail>,
        <tfc:plants/ryegrass>,
        <tfc:plants/sacred_datura>,
        <tfc:plants/sagebrush>,
        <tfc:plants/sapphire_tower>,
        <tfc:plants/sargassum>,
        <tfc:plants/scutch_grass>,
        <tfc:plants/snapdragon_pink>,
        <tfc:plants/snapdragon_red>,
        <tfc:plants/snapdragon_white>,
        <tfc:plants/snapdragon_yellow>,
        <tfc:plants/spanish_moss>,
        <tfc:plants/strelitzia>,
        <tfc:plants/switchgrass>,
        <tfc:plants/sword_fern>,
        <tfc:plants/tall_fescue_grass>,
        <tfc:plants/timothy_grass>,
        <tfc:plants/toquilla_palm>,
        <tfc:plants/tree_fern>,
        <tfc:plants/trillium>,
        <tfc:plants/tropical_milkweed>,
        <tfc:plants/tulip_orange>,
        <tfc:plants/tulip_pink>,
        <tfc:plants/tulip_red>,
        <tfc:plants/tulip_white>,
        <tfc:plants/vanilla>,
        <tfc:plants/vriesea>,
        <tfc:plants/water_canna>,
        <tfc:plants/water_lily>,
        <tfc:plants/yucca>
        ]{
            Altar.registerPowerSource(plant as IItemStack, 8, 10);
        }



//Spinning Wheel
    SpinningWheel.removeRecipe("witchery:spinning_wheel/golden_thread");

    SpinningWheel.registerRecipe(<witchery:golden_thread>*4, <ore:straw>, 12, <witchery:magic_whiff>, <witchery:vitriol_oil>, null);
    mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<witchery:golden_thread>, <thaumcraft:nugget:5> % 25);
    mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<witchery:golden_thread>, <tfc:metal/nugget/gold> % 15);


//Distillery
    Distillery.removeRecipe("witchery:distillery/gypsum");
    Distillery.removeRecipe("witchery:distillery/goddess_tear");
    Distillery.removeRecipe("witchery:distillery/diamong_vapor");

    Distillery.registerRecipe(<witchery:goddess_breath>,<witchery:artichoke_globe>, 3,<witchery:goddess_tear>,<witchery:magic_whiff>,<minecraft:slime_ball>,<witchery:foul_fume>);
    Distillery.registerRecipe(<ore:gemCoal>,<witchery:foul_fume>, 3,<immersiveengineering:material:6>,<witchery:wood_ash>,<witchery:vitriol_oil>*2,<witchery:horned_one_exhale>);
    Distillery.registerRecipe(<ore:charcoal>,<witchery:foul_fume>, 2,<witchery:wood_ash>,<witchery:vitriol_oil>,<witchery:horned_one_exhale>, null);
    Distillery.registerRecipe(<witchery:attuned_stone>,<witchery:vitriol_oil>, 3,<witchery:diamond_vapor>,<witchery:diamond_vapor>,<witchery:purity_odor>, null);

//Fluid Crafting shenanigans

    mods.inworldcrafting.FluidToItem.transform(<witchery:ritual_circle_glyph>, <liquid:hot_water>, [ <witchery:icy_needle>*2,<ore:dustFlux>*4,<witchery:wood_ash>], false);
    mods.inworldcrafting.FluidToItem.transform(<witchery:heart_circle_glyph>, <liquid:hot_water>, [ <witchery:icy_needle>*2,<ore:dustFlux>*4,<ore:dyeYellow>], false);
    mods.inworldcrafting.FluidToItem.transform(<witchery:infernal_circle_glyph>, <liquid:hot_water>, [ <witchery:icy_needle>*2,<ore:dustFlux>*4,<witchery:refined_evil>], false);
    mods.inworldcrafting.FluidToItem.transform(<witchery:otherwhere_circle_glyph>, <liquid:hot_water>, [ <witchery:icy_needle>*2,<ore:dustFlux>*4,<witchery:ender_dew>], false);
    
    
    mods.inworldcrafting.FluidToItem.transform(<minecraft:clay_ball>, <liquid:hot_water>, [<botania:dye:8>*3], false);
    mods.inworldcrafting.FluidToItem.transform(<witchery:attuned_stone>, <liquid:lava>, [ <ore:gemAmethyst>*6, <witchery:icy_needle>*2], true);

