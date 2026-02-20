import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Alloy;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.Barrel;
import mods.thaumcraft.SalisMundus;
import mods.firmalife.Oven;
import mods.immersiveintelligence.ChemicalBath;
mods.immersiveintelligence.ChemicalBath.addRecipe(<ore:stoneMarble>, <astralsorcery:blockmarble>, <liquid:hydrofluoric_acid>*50, 3000, 30);



<ore:seed>.addItems(itemUtils.getItemsByRegexRegistryName(".*/crop/seeds.*"));
<ore:fabricHemp>.add(<tfc:crop/product/burlap_cloth>);
<ore:logWoodTannin>.add(<botania:livingwood>);
<ore:logWoodTannin>.add(<thaumcraft:log_greatwood>);

mods.botania.PureDaisy.addRecipe(<tfc:thatch>,<botania:livingwood>);

<ore:blockGlass>.add(<betternether:quartz_glass>);
<ore:blockGlassColorless>.add(<betternether:quartz_glass>);

mods.immersiveengineering.Squeezer.removeFluidRecipe(<liquid:plantoil>);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:plantoil>*120,<ore:seed>, 2500);

<ore:categoryMeat>.addAll(<ore:fish>);
<ore:categoryCookedMeat>.addAll(<ore:listAllmeatcooked>);

//ItemRegistry.registerArmor(IIngredient input, float crushingModifier, float piercingModifier, float slashingModifier);
//ItemRegistry.registerFood(IIngredient input, int hunger, float water, float saturation, float decay, float grain, float veg, float fruit, float meat, float dairy);

ItemRegistry.registerItemSize(<tfc:sluice>, "VERY_SMALL", "VERY_LIGHT");

ItemRegistry.registerItemSize(<minecraft:minecart>, "VERY_SMALL", "VERY_LIGHT");


ItemRegistry.registerFood(<ore:fish>, 1, 10.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.5, 0.0);
ItemRegistry.registerFood(<ore:listAllmeatcooked>, 1, 3.0, 5.0, 1.0, 0.0, 0.0, 0.0, 1.5, 0.0);
ItemRegistry.registerFood(<minecraft:pumpkin_pie>, 4, 100.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);

<ore:rockMetamorphic>.addAll(<ore:coinIron>);
<ore:rockSedimentary>.addAll(<ore:coinGold>);
<ore:rockIgneousIntrusive>.addAll(<ore:coinCopper>);
<ore:rockIgneousExtrusive>.addAll(<ore:coinTin>);
/*
<ore:ballCrystallinePinkSlime>.remove(<thermalfoundation:coin:65>);
<ore:ballVividAlloy>.remove(<thermalfoundation:coin:64>);
<ore:coinGold>.remove(<thermalfoundation:coin:1>);
<ore:coinIron>.remove(<thermalfoundation:coin>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:coin:*>);
*/



recipes.remove(<minecraft:glass_bottle>);
recipes.remove(<nyx:meteor_dust>);

ItemRegistry.registerItemMetal(<nyx:meteor_shard>,"titanium",144,false);
ItemRegistry.registerItemMetal(<thaumcraft:mind>,"brass",288,true);
ItemRegistry.registerItemMetal(<immersiveengineering:drillhead:1>,"wrought_iron",288,true);
ItemRegistry.registerItemMetal(<immersiveengineering:drillhead>,"steel",288,true);
ItemRegistry.registerItemMetal(<betternether:cincinnasite>,"brass",32,true);
ItemRegistry.registerItemMetal(<thaumcraft:mind:1>,"brass",288,true);
Quern.removeRecipe(<minecraft:redstone>);
Quern.addRecipe("lessredstone", <tfc:ore/cinnabar>, <minecraft:redstone>*4);
Quern.addRecipe("lessredstone2", <tfc:ore/cryolite>, <minecraft:redstone>*4);
recipes.remove(<tfctech:powder/potash>);
recipes.remove(<tfctech:smeltery_firebox>);
recipes.remove(<tfctech:smeltery_cauldron>);
recipes.addShapeless(<tfc:metal/dust/tungsten_steel> * 9, [<ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>, <ore:dustTungsten>]);
recipes.addShapeless(<tfctech:powder/potash> * 8, [<tfctech:pot_potash>]);
recipes.addShapeless(<tfc:metal/ingot/brass>, [<thaumcraft:ingot:2>]);



<minecraft:coal:1>.addTooltip(format.yellow("Burns at 1350°C (Yellow White***) for 1min 30s"));

ItemRegistry.registerFuel(<immersiveengineering:material:6>, 3600, 1350.0,true, true);
<immersiveengineering:material:6>.addTooltip(format.yellow("Burns at 1350°C (Yellow White***) for 3min"));
ItemRegistry.registerFuel(<thermalfoundation:material:802>, 3600, 1350.0,true, true);
<thermalfoundation:material:802>.addTooltip(format.yellow("Burns at 1350°C (Yellow White***) for 3min"));
ItemRegistry.registerFuel(<ic2:coke>, 3600, 1350.0,true, true);
<ic2:coke>.addTooltip(format.yellow("Burns at 1350°C (Yellow White***) for 3min"));

ItemRegistry.registerFuel(<thaumcraft:alumentum>, 5400, 1400.0,true, true);
<thaumcraft:alumentum>.addTooltip(format.white("Burns at 1400°C (White**) for 4min 30s"));
ItemRegistry.registerFuel(<ic2:nuclear:9>,12000 , 3300.0,true, true);
<ic2:nuclear:9>.addTooltip(format.blue("Burns at 3300°C (>>Brilliant White) for 10min"));
ItemRegistry.registerFuel(<metallurgy:ignatius_fuel>,12000 , 3300.0,true, true);
<metallurgy:ignatius_fuel>.addTooltip(format.blue("Burns at 3300°C (>>Brilliant White) for 10min"));

ItemRegistry.registerFuel(<metallurgy:thermite_dust>,12000 , 2000.0,true, true);
<metallurgy:thermite_dust>.addTooltip(format.blue("Burns at 2000°C (>Brilliant White) for 10min"));



furnace.remove(<embers:brick_caminite>);
furnace.remove(<embers:plate_caminite>);



mods.inworldcrafting.FluidToFluid.transform(<liquid:fresh_water>, <liquid:hot_water>, [<cellars:ice_shard> * 4]);
ItemRegistry.registerItemMetal(<tfcthings:metal_bracing>,"wrought_iron",72,true);
Welding.addRecipe("diapick", <tfcthings:diamond_grit>, <tfc:metal/pick/black_steel>, <minecraft:diamond_pickaxe>, 5);
Welding.addRecipe("diaaxe", <tfcthings:diamond_grit>, <tfc:metal/axe/black_steel>, <minecraft:diamond_axe>, 5);
Welding.addRecipe("diashovel", <tfcthings:diamond_grit>, <tfc:metal/shovel/black_steel>, <minecraft:diamond_shovel>, 5);
Welding.addRecipe("goldpick", <tfc:metal/sheet/gold>, <tfc:metal/pick/bronze>, <minecraft:golden_pickaxe>, 2);
Welding.addRecipe("goldaxe", <tfc:metal/sheet/gold>, <tfc:metal/axe/bronze>, <minecraft:golden_axe>, 2);
Welding.addRecipe("goldshovel",<tfc:metal/sheet/gold>, <tfc:metal/shovel/bronze>, <minecraft:golden_shovel>, 2);
Welding.addRecipe("goldhoe",<tfc:metal/sheet/gold>, <tfc:metal/hoe/bronze>, <minecraft:golden_hoe>, 2);
Welding.addRecipe("robosurgeon",<ore:ingotBismuth>, <thaumcraft:mind>, <cyberware:surgery>, 3);
Welding.addRecipe("knuckles",<ore:sleeveBrass>, <ore:sleeveBrass>, <metallurgy:brass_knuckles>, 0);
Welding.addRecipe("minersring",<ore:sleeveTin>, <ore:ingotRedAlloy>, <baubles:ring>, 0);
//drills

recipes.remove(<immersiveengineering:drillhead>);
recipes.remove(<immersiveengineering:drillhead:1>);
recipes.remove(<immersiveintelligence:drillhead:1>);
recipes.remove(<immersiveintelligence:drillhead:2>);
ItemRegistry.registerItemMetal(<immersiveintelligence:drillhead:1>,"wrought_iron",288,true);
ItemRegistry.registerItemMetal(<immersiveintelligence:drillhead>,"steel",288,true);
Welding.addRecipe("irondrill",<ore:sheetDoubleIron>, <tfc:metal/mace_head/wrought_iron>, <immersiveengineering:drillhead:1>, 2);
Welding.addRecipe("steeldrill",<ore:sheetDoubleSteel>, <tfc:metal/mace_head/steel>, <immersiveengineering:drillhead>, 3);
Welding.addRecipe("diairondrill",<immersiveengineering:drillhead:1>, <tfcthings:diamond_grit>, <immersiveintelligence:drillhead:1>, 3);
Welding.addRecipe("diasteeldrill",<immersiveengineering:drillhead>, <tfcthings:diamond_grit>, <immersiveintelligence:drillhead:2>, 4);
Welding.addRecipe("engineershammer",<tfcthings:prospectors_hammer/wrought_iron>, <ore:ingotNickel>, <immersiveengineering:tool>, 3);




recipes.replaceAllOccurences(<magneticraft:crafting:3>, <ore:wireCopper>);
recipes.replaceAllOccurences(<ore:plateBronze>, <ore:sheetAnyBronze>);
recipes.replaceAllOccurences(<ore:ingotBronze>, <ore:ingetAnyBronze>);
recipes.replaceAllOccurences(<magneticraft:light_plates>, <ore:plateIron>);
recipes.replaceAllOccurences(<magneticraft:light_plates:1>, <ore:plateGold>);
recipes.replaceAllOccurences(<magneticraft:light_plates:2>, <ore:plateCopper>);
recipes.replaceAllOccurences(<magneticraft:light_plates:3>, <ore:plateLead>);
recipes.replaceAllOccurences(<magneticraft:light_plates:5>, <ore:plateTungsten>);
recipes.replaceAllOccurences(<magneticraft:light_plates:6>, <ore:plateSteel>);

recipes.remove(<ore:blockBronze>);
recipes.remove(<ore:nuggetBronze>);
recipes.remove(<ore:plateBronze>);



recipes.remove(<magneticraft:sluice_box>);
recipes.remove(<magneticraft:crushing_table>);
recipes.remove(<magneticraft:stone_hammer>);
recipes.remove(<magneticraft:iron_hammer>);
recipes.remove(<magneticraft:steel_hammer>);
recipes.remove(<ic2:forge_hammer>);
recipes.remove(<ic2:cutter>);
recipes.remove(<ic2:te:50>);
recipes.remove(<ic2:casing>);
recipes.remove(<ic2:casing:1>);
recipes.remove(<ic2:casing:2>);
recipes.remove(<ic2:casing:3>);
recipes.remove(<ic2:casing:4>);
recipes.remove(<ic2:casing:5>);
recipes.remove(<ic2:casing:6>);
//buckets...
recipes.remove(<tfc:metal/bucket/blue_steel>);
recipes.remove(<tfc:metal/bucket/red_steel>);

Anvil.removeRecipe(<tfc:metal/rod/gold>);
Anvil.removeRecipe(<tfc:metal/rod/steel>);
Anvil.removeRecipe(<tfc:metal/rod/wrought_iron>);

Anvil.addRecipe("ironBucket", <ore:plateIron>, <minecraft:bucket>, 3,"general","BEND_ANY","BEND_ANY","BEND_ANY");

//hoppers and hopping accessories
//ItemRegistry.registerItemMetal(<bithop:pullhop>,"wrought_iron",72,true);
ItemRegistry.registerItemMetal(<minecraft:hopper>,"wrought_iron",144,true);
//ItemRegistry.registerItemMetal(<bithop:screwhop>,"wrought_iron",72,true);
//ItemRegistry.registerItemMetal(<bithop:bithop>,"wrought_iron",72,true);
//ItemRegistry.registerItemMetal(<bithop:fluxhop>,"wrought_iron",72,true);
recipes.remove(<minecraft:hopper>);
//recipes.remove(<bithop:bithop>);
//recipes.remove(<bithop:pullhop>);
//recipes.remove(<bithop:screwhop>);
//recipes.remove(<bithop:fluxhop>);

Anvil.addRecipe("ironHopper", <ore:sheetDoubleIron>, <minecraft:hopper>, 3,"general","BEND_THIRD_LAST","BEND_SECOND_LAST","DRAW_LAST");
Anvil.addRecipe("steelHopper", <ore:sheetDoubleSteel>, <minecraft:hopper>*2, 4,"general","BEND_THIRD_LAST","BEND_SECOND_LAST","DRAW_LAST");
//Anvil.addRecipe("ironBithop", <ore:plateIron>, <bithop:bithop>, 3,"general","BEND_THIRD_LAST","BEND_SECOND_LAST","SHRINK_LAST");
//Anvil.addRecipe("steelBithop", <ore:plateSteel>, <bithop:bithop>*2, 4,"general","BEND_THIRD_LAST","BEND_SECOND_LAST","SHRINK_LAST");
//Anvil.addRecipe("ironPullhop", <ore:plateIron>, <bithop:pullhop>, 3,"general","BEND_THIRD_LAST","BEND_SECOND_LAST","HIT_LAST");
//Anvil.addRecipe("steelPullhop", <ore:plateSteel>, <bithop:pullhop>*2, 4,"general","BEND_THIRD_LAST","BEND_SECOND_LAST","HIT_LAST");
//Anvil.addRecipe("ironScrewhop", <ore:plateIron>, <bithop:screwhop>, 3,"general","BEND_THIRD_LAST","DRAW_SECOND_LAST","DRAW_LAST");
//Anvil.addRecipe("steelScrewhop", <ore:plateSteel>, <bithop:screwhop>*2, 4,"general","BEND_THIRD_LAST","DRAW_SECOND_LAST","DRAW_LAST");


Anvil.addRecipe("ironAxles", <ore:ingotIron>, <mysticalmechanics:axle_iron>*2, 3,"general","DRAW_LAST","DRAW_NOT_LAST","PUNCH_NOT_LAST");



ItemRegistry.registerItemHeat(<minecraft:quartz>,0.5,1600,false);
Heating.addRecipe("quartzglass", <minecraft:quartz>, <betternether:quartz_glass>, 512.0, 1700.0);
ItemRegistry.registerItemHeat(<ore:sand>,0.5,1600,false);


ItemRegistry.registerItemHeat(<tfc:wooden_bucket>,0.5,1100,false);
Heating.addRecipe("waterpurification", <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), 200.0, 1700.0);



ItemRegistry.registerItemHeat(<thaumcraft:ingot>,0.5,1600,true);
ItemRegistry.registerItemHeat(<thaumcraft:ingot:1>,0.9,1800,true);
ItemRegistry.registerItemHeat(<thaumcraft:plate:3>,0.9,1800,true);
ItemRegistry.registerItemHeat(<thaumcraft:plate:2>,0.5,1800,true);
ItemRegistry.registerItemHeat(<botania:manaresource:4>,0.5,1800,true);

Welding.addRecipe("ultimateTuyere",<tfc:metal/tuyere/black_steel>, <thaumcraft:plate:3>,<tfc:metal/tuyere/black_bronze>.withTag({Unbreakable: 1,"TC.WARP": 3 as byte, display: {Name: "Hephaestus' Vent"}}), 6);
Welding.addRecipe("ultimateTuyereBT",<tfc:metal/tuyere/black_steel>, <ore:ingotTerrasteel>,<tfc:metal/tuyere/bismuth_bronze>.withTag({Unbreakable: 1, display: {Name: "Gaia's Geyser"}}), 6);

Welding.addRecipe("helmetthaumium",<thaumcraft:plate:2>, <tfc:metal/helmet/steel>,<thaumcraft:thaumium_helm>, 3);
Welding.addRecipe("chestthaumium",<thaumcraft:plate:2>, <tfc:metal/chestplate/steel>,<thaumcraft:thaumium_chest>, 3);
Welding.addRecipe("legsthaumium",<thaumcraft:plate:2>, <tfc:metal/greaves/steel>,<thaumcraft:thaumium_legs>, 3);
Welding.addRecipe("bootsthaumium",<thaumcraft:plate:2>, <tfc:metal/boots/steel>,<thaumcraft:thaumium_boots>, 3);

Welding.addRecipe("helmetvoid",<thaumcraft:plate:3>, <tfc:metal/helmet/steel>,<thaumcraft:void_helm>, 3);
Welding.addRecipe("chestvoid",<thaumcraft:plate:3>, <tfc:metal/chestplate/steel>,<thaumcraft:void_chest>, 3);
Welding.addRecipe("legsvoid",<thaumcraft:plate:3>, <tfc:metal/greaves/steel>,<thaumcraft:void_legs>, 3);
Welding.addRecipe("bootsvoid",<thaumcraft:plate:3>, <tfc:metal/boots/steel>,<thaumcraft:void_boots>, 3);

recipes.remove(<thaumcraft:plate:3>);
recipes.remove(<thaumcraft:plate:2>);
Anvil.addRecipe("thaumplate", <ore:ingotThaumium>, <thaumcraft:plate:2>, 3,"general","HIT_ANY","HIT_ANY","HIT_ANY");
Anvil.addRecipe("voidplate", <ore:ingotVoid>, <thaumcraft:plate:3>, 2,"general","HIT_ANY","HIT_ANY","HIT_ANY");

ItemRegistry.registerItemHeat(<projectred-core:resource_item:251>, 0.5, 1700, false);
Heating.addRecipe("redAlloy", <projectred-core:resource_item:251>, <projectred-core:resource_item:103>, 900.0, 1700.0);
ItemRegistry.registerItemHeat(<tfc:ore/chromite>, 0.5, 1700, false);

//equipment registry
<ore:damageTypeCrushing>.add(<tconstruct:battlesign>,<tconstruct:frypan>);
<ore:damageTypeSlashing>.add(<tconstruct:broadsword>,<tconstruct:longsword>,<tconstruct:cleaver>);
<ore:damageTypePiercing>.add(<tconstruct:rapier>);


<ore:stickAluminum>.add(<tfctech:metal/aluminium_rod>);



	recipes.addShapeless(<tfc:gem/diamond:2>, [<tfc:gem/diamond>,<tfc:gem/diamond>,<tfc:gem/diamond>,<tfc:gem/diamond>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	recipes.addShapeless(<tfc:gem/diamond:2>, [<tfc:gem/diamond:1>,<tfc:gem/diamond:1>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	recipes.addShapeless(<minecraft:diamond>, [<tfc:gem/diamond:2>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	recipes.addShapeless(<tfc:gem/diamond:2> * 2, [<tfc:gem/diamond:3>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	recipes.addShapeless(<tfc:gem/diamond:2> * 4, [<tfc:gem/diamond:4>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);

	recipes.addShapeless(<tfc:gem/emerald:2>, [<tfc:gem/emerald>,<tfc:gem/emerald>,<tfc:gem/emerald>,<tfc:gem/emerald>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	recipes.addShapeless(<tfc:gem/emerald:2>, [<tfc:gem/emerald:1>,<tfc:gem/emerald:1>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	recipes.addShapeless(<minecraft:emerald>, [<tfc:gem/emerald:2>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	recipes.addShapeless(<tfc:gem/emerald:2> * 2, [<tfc:gem/emerald:3>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	recipes.addShapeless(<tfc:gem/emerald:2> * 4, [<tfc:gem/emerald:4>, <ore:chisel>.transformDamage(1), <ore:hammer>.transformDamage(1)]);
	

	//make beryllium obtainable through reducing gems in the blast furnace
	
	ItemRegistry.registerItemMetal(<tfc:gem/beryl>, "beryllium", 16, false);
	ItemRegistry.registerItemMetal(<tfc:gem/beryl:1>, "beryllium", 48, false);
	ItemRegistry.registerItemMetal(<tfc:gem/beryl:2>, "beryllium", 144, false);
	ItemRegistry.registerItemMetal(<tfc:gem/beryl:3>, "beryllium", 288, false);
	ItemRegistry.registerItemMetal(<tfc:gem/beryl:4>, "beryllium", 576, false);
	
	ItemRegistry.registerItemMetal(<cyberware:component:2>, "titanium", 48, false);


	//disable charcoal recipes in the furnace (use TFC charcoal pit/IE coke oven instead)
	furnace.remove(<minecraft:coal:1>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:29>);
	
Barrel.removeRecipe(<minecraft:clay_ball>);

mods.terrafirmacraft.Barrel.addRecipe("eye_fermentation", <minecraft:spider_eye>, <liquid:vinegar> * 100, <minecraft:fermented_spider_eye>, null, 12);
mods.terrafirmacraft.Barrel.addRecipe("water_conversion", <ore:nuggetCopper>, <liquid:fresh_water> * 10000,null,<liquid:water>*10000, 1);
mods.terrafirmacraft.Barrel.addRecipe("salt_conversion", <minecraft:magma>, <liquid:salt_water> * 10000,<tfc:powder/salt>*8,null, 8);
mods.terrafirmacraft.Barrel.addRecipe("malachite", <ore:nuggetCopper>, <liquid:salt_water> * 50,<tfc:powder/malachite>*2,null, 72);
mods.terrafirmacraft.Barrel.addRecipe("rustyplate", <quark:iron_plate>, <liquid:salt_water> * 50,<quark:iron_plate:1>,null, 24);

mods.terrafirmacraft.Barrel.addRecipe("hidefromflesh", <minecraft:rotten_flesh>*4, <liquid:limewater> * 400,<tfc:hide/soaked/medium>,null, 6);

mods.terrafirmacraft.Barrel.addRecipe("parchment_from_small", <tfc:hide/prepared/small>, <liquid:white_dye> * 300,<minecraft:paper>,null, 6);
mods.terrafirmacraft.Barrel.addRecipe("parchment_from_medium", <tfc:hide/prepared/medium>, <liquid:white_dye> * 400,<minecraft:paper>*2,null, 6);
mods.terrafirmacraft.Barrel.addRecipe("parchment_from_large", <tfc:hide/prepared/large>, <liquid:white_dye> * 500,<minecraft:paper>*3,null, 6);


mods.terrafirmacraft.Barrel.addRecipe("flux_manual", <thebetweenlands:items_misc:27>, <liquid:flux_goo> * 500,<tfc:powder/flux>*3,null, 1);
mods.terrafirmacraft.Barrel.addRecipe("flux_automation_0", <ore:sand>, <liquid:flux_goo> * 1000,<tfc:powder/flux>*2,null, 1);

mods.terrafirmacraft.Barrel.addRecipe("flux_automation_1", <embers:dust_metallurgic>, <liquid:flux_goo> * 500,<tfc:powder/flux>*10,null, 1);
mods.terrafirmacraft.Barrel.addRecipe("flux_automation_2", <embers:alchemic_waste>, <liquid:flux_goo> * 500,<tfc:powder/flux>*4,null, 2);
mods.terrafirmacraft.Barrel.addRecipe("wood replacement", <betternether:nether_reed>*4, <liquid:olive_oil> * 5,<betternether:reeds_block>,null, 2);

mods.terrafirmacraft.Barrel.addRecipe("aquamarine", <tfc:gem/beryl:3>, <liquid:salt_water> * 500,<astralsorcery:itemcraftingcomponent>*3,null, 6);
//use cobalt and ardite for red and blue steel

Alloy.removeAlloy("weak_red_steel");
Alloy.addAlloy("weak_red_steel").addMetal("steel", 0.5, 0.65).addMetal("red_alloy", 0.1, 0.2).addMetal("ardite", 0.2, 0.3).build();

Alloy.removeAlloy("weak_blue_steel");
Alloy.addAlloy("weak_blue_steel").addMetal("steel", 0.5, 0.65).addMetal("platinum", 0.1, 0.2).addMetal("cobalt", 0.2, 0.3).build();
<ore:ingotAdvancedElectronicAlloy>.add(<tfc:metal/ingot/blue_steel>);
<ore:plateAdvancedElectronicAlloy>.add(<tfc:metal/sheet/blue_steel>);

<ore:dustAdvancedElectronicAlloy>.add(<tfc:metal/dust/blue_steel>);
<ore:nuggetAdvancedElectronicAlloy>.add(<tfc:metal/nugget/blue_steel>);

<ore:ingotAdvancedElectronicAlloy>.remove(<immersiveintelligence:material_ingot>);
<ore:plateAdvancedElectronicAlloy>.remove(<immersiveintelligence:material_plate>);
<ore:dustAdvancedElectronicAlloy>.remove(<immersiveintelligence:material_dust>);
<ore:nuggetAdvancedElectronicAlloy>.remove(<immersiveintelligence:material_nugget>);





Anvil.addRecipe("brassspring", <tfctech:metal/brass_long_rod>, <immersiveintelligence:material_spring>, 1,"general","SHRINK_LAST","BEND_NOT_LAST","BEND_NOT_LAST");
Anvil.addRecipe("ironspring", <tfctech:metal/wrought_iron_long_rod>, <immersiveintelligence:material_spring:1>, 3,"general","SHRINK_LAST","BEND_NOT_LAST","BEND_NOT_LAST");
Anvil.addRecipe("steelspring", <tfctech:metal/steel_long_rod>, <immersiveintelligence:material_spring:2>, 4,"general","SHRINK_LAST","BEND_NOT_LAST","BEND_NOT_LAST");

mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<appliedenergistics2:material:1>, <ore:crystalCertusQuartz>, 10);

mods.inworldcrafting.FluidToItem.transform(<appliedenergistics2:material>, <liquid:lunar_water>, [<ore:gemQuartz>,<tfc:gem/opal:*>], false);

//prevent mob drop-type foods from expiring as they're poisonous already and will refuse to stack otherwise, clogging up your storage
ItemRegistry.registerFood(<thaumcraft:brain>, 2, 20.0, 0.0, 10000000.0, 0.0, 0.0, 0.0, 3.0, 0.0);
ItemRegistry.registerFood(<minecraft:spider_eye>, 2, 20.0, 0.0, 10000000.0, 0.0, 0.0, 0.0, 3.0, 0.0);



//in case the att charcoal forge bugs out and the server won't allow you shift-clicking it, this is another way to get it. this is so you can automate fueling it

SalisMundus.addSingleConversion(<tfc:charcoal_forge>, <att:charcoalforge>);
SalisMundus.addSingleConversion(<tfc:firepit>, <att:firepit>);

recipes.remove(<extrautils2:angelring:*>);
recipes.remove(<camping:campfire_wood_off>);
recipes.remove(<camping:campfire_cook>);




//Gear
recipes.remove(<travelersbackpack:sleeping_bag_bottom>);


val remove_gear = 
[
<minecraft:diamond_sword>,
<minecraft:iron_sword>,
<minecraft:stone_sword>,
<minecraft:wooden_sword>,
<minecraft:golden_sword>,
<minecraft:diamond_pickaxe>,
<minecraft:iron_pickaxe>,
<minecraft:stone_pickaxe>,
<minecraft:wooden_pickaxe>,
<minecraft:golden_pickaxe>,
<minecraft:diamond_axe>,
<minecraft:iron_axe>,
<minecraft:stone_axe>,
<minecraft:wooden_axe>,
<minecraft:golden_axe>,
<minecraft:diamond_shovel>,
<minecraft:iron_shovel>,
<minecraft:stone_shovel>,
<minecraft:wooden_shovel>,
<minecraft:golden_shovel>,
<minecraft:diamond_hoe>,
<minecraft:iron_hoe>,
<minecraft:stone_hoe>,
<minecraft:wooden_hoe>,
<minecraft:golden_hoe>,
<minecraft:diamond_helmet>,
<minecraft:diamond_chestplate>,
<minecraft:diamond_leggings>,
<minecraft:diamond_boots>,
<minecraft:iron_helmet>,
<minecraft:iron_chestplate>,
<minecraft:iron_leggings>,
<minecraft:iron_boots>,
<thaumcraft:thaumium_helm>,
<thaumcraft:thaumium_chest>,
<thaumcraft:thaumium_legs>,
<thaumcraft:thaumium_boots>,
<railcraft:worldspike:*>,
<railcraft:bore>,
<railcraft:borehead_bronze>,
<railcraft:borehead_iron>,
<railcraft:borehead_steel>,
<railcraft:borehead_diamond>,
<railcraft:mow_track_layer>,
<railcraft:mow_track_relayer>,
<railcraft:mow_track_remover>,
<railcraft:mow_undercutter>,
<minecraft:minecart>,
<thaumcraft:void_helm>,
<thaumcraft:void_chest>,
<thaumcraft:void_legs>,
<thaumcraft:void_boots>,
<chisel:factory>,
<embers:block_caminite_brick>,



<firmalife:climate_station>,
<firmalife:climate_station_1>,
<firmalife:climate_station_2>,
<firmalife:climate_station_3>,
<firmalife:climate_station_4>,
<firmalife:climate_station_5>,
<firmalife:sprinkler>,
<embers:item_transfer>,
<embers:item_dropper>,
<embers:vacuum>,
<immersiveintelligence:sawblade>,
<immersiveintelligence:sawblade:1>,
<immersiveintelligence:sawblade:2>,
<minecraft:crafting_table>,
<tconstruct:tooltables>,
<magneticraft:inserter>,
<magneticraft:conveyor_belt>,
<pneumaticcraft:assembly_io_unit>,
<pneumaticcraft:assembly_drill>,
<pneumaticcraft:assembly_laser>,
<pneumaticcraft:assembly_platform>,
<pneumaticcraft:assembly_controller>,
<tconstruct:stone_torch>,
<embers:ember_detector>,
<mekanismgenerators:generator:6>,
<mekanismgenerators:generator:5>,
<mekanismgenerators:generator:4>,
<mekanismgenerators:generator:1>,
<mekanismgenerators:generator:3>,
<mekanismgenerators:generator>,
<immersiveengineering:metal_device1:3>,
<immersiveengineering:metal_device1:2>,
<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
<magneticraft:thermopile>,
<magneticraft:wind_turbine>,
<advancedrocketry:solargenerator>,
<advancedrocketry:solarpanel>,
<railcraft:boiler_firebox_fluid>,
<railcraft:boiler_firebox_solid>,


<mekanismgenerators:solarpanel>

] as IItemStack[];
for gear in remove_gear {
recipes.remove(gear);
}
Anvil.removeRecipe(<firmalife:spout>);









