import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
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
import mods.astralsorcery.Grindstone;
import native.net.dries007.tfc.api.recipes.heat.HeatRecipeSimple;
import native.net.dries007.tfc.api.registries.TFCRegistries;
mods.immersiveintelligence.ChemicalBath.addRecipe(<ore:stoneMarble>, <astralsorcery:blockmarble>, <liquid:hydrofluoric_acid>*50, 3000, 30);


<ore:seed>.addItems(itemUtils.getItemsByRegexRegistryName(".*crop/seeds.*"));
<ore:fabricHemp>.add(<tfc:crop/product/burlap_cloth>);
<ore:logWoodTannin>.add(<botania:livingwood>);
<ore:logWoodTannin>.add(<thaumcraft:log_greatwood>);



<ore:blockGlass>.add(<betternether:quartz_glass>);
<ore:blockGlassColorless>.add(<betternether:quartz_glass>);

mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:plantoil>*120,<ore:seed>, 2500);

<ore:categoryMeat>.addAll(<ore:fish>);
<ore:categoryCookedMeat>.addAll(<ore:listAllmeatcooked>);

<ore:pressurePlateStone>.add(
	<thaumicaugmentation:pressure_plate_arcane_stone>,
	<thaumicaugmentation:warded_pressure_plate_arcane_stone>,
	<thebetweenlands:betweenstone_pressure_plate>
);

//ItemRegistry.registerArmor(IIngredient input, float crushingModifier, float piercingModifier, float slashingModifier);
//ItemRegistry.registerFood(IIngredient input, int hunger, float water, float saturation, float decay, float grain, float veg, float fruit, float meat, float dairy);

val glassRecipe = HeatRecipeSimple( native.net.dries007.tfc.objects.inventory.ingredient.IIngredient.of("sand"), <minecraft:glass>.native, 500.0f ).setRegistryName("glass");
TFCRegistries.HEAT.register(glassRecipe);

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




for item in <ore:hammer>.items
{
	item.definition.setHarvestLevel("IE_HAMMER", 1); 
}
<immersiveengineering:drill>.definition.setHarvestLevel("pickaxe", 3); 
<immersiveengineering:drill>.definition.setHarvestLevel("shovel", 3); 


ItemRegistry.registerItemMetal(<thaumcraft:mind>,"brass",288,true);
ItemRegistry.registerItemMetal(<immersiveengineering:drillhead:1>,"wrought_iron",288,true);
ItemRegistry.registerItemMetal(<immersiveengineering:drillhead>,"steel",288,true);
ItemRegistry.registerItemMetal(<betternether:cincinnasite>,"brass",32,true);
ItemRegistry.registerItemMetal(<thaumcraft:mind:1>,"brass",288,true);

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

ItemRegistry.registerFuel(<thaumcraft:alumentum>, 7200, 1400.0,true, true);
<thaumcraft:alumentum>.addTooltip(format.white("Burns at 1400°C (White**) for 6min"));
ItemRegistry.registerFuel(<ic2:nuclear:9>,12000 , 3300.0,true, true);
<ic2:nuclear:9>.addTooltip(format.blue("Burns at 3300°C (>>Brilliant White) for 10min"));
ItemRegistry.registerFuel(<contenttweaker:ignatius_fuel>,12000 , 3300.0,true, true);
<contenttweaker:ignatius_fuel>.addTooltip(format.blue("Burns at 3300°C (>>Brilliant White) for 10min"));

ItemRegistry.registerFuel(<advancedrocketry:thermite>,12000 , 2000.0,true, true);
<advancedrocketry:thermite>.addTooltip(format.blue("Burns at 2000°C (>Brilliant White) for 10min"));



ItemRegistry.registerItemMetal(<tfcthings:metal_bracing>,"wrought_iron",72,true);
Welding.addRecipe("diapick", <tfcthings:diamond_grit>, <tfc:metal/pick/black_steel>, <minecraft:diamond_pickaxe>, 5);
Welding.addRecipe("diaaxe", <tfcthings:diamond_grit>, <tfc:metal/axe/black_steel>, <minecraft:diamond_axe>, 5);
Welding.addRecipe("diashovel", <tfcthings:diamond_grit>, <tfc:metal/shovel/black_steel>, <minecraft:diamond_shovel>, 5);
Welding.addRecipe("goldpick", <tfc:metal/sheet/gold>, <tfc:metal/pick/bronze>, <minecraft:golden_pickaxe>, 2);
Welding.addRecipe("goldaxe", <tfc:metal/sheet/gold>, <tfc:metal/axe/bronze>, <minecraft:golden_axe>, 2);
Welding.addRecipe("goldshovel",<tfc:metal/sheet/gold>, <tfc:metal/shovel/bronze>, <minecraft:golden_shovel>, 2);
Welding.addRecipe("goldhoe",<tfc:metal/sheet/gold>, <tfc:metal/hoe/bronze>, <minecraft:golden_hoe>, 2);
Welding.addRecipe("robosurgeon",<ore:ingotBismuth>, <thaumcraft:mind>, <cyberware:surgery>, 3);
Welding.addRecipe("minersring",<ore:sleeveTin>, <ore:ingotRedAlloy>, <baubles:ring>, 0);
//drills

ItemRegistry.registerItemMetal(<immersiveintelligence:drillhead:1>,"wrought_iron",288,true);
ItemRegistry.registerItemMetal(<immersiveintelligence:drillhead>,"steel",288,true);
Welding.addRecipe("irondrill",<ore:sheetDoubleIron>, <tfc:metal/mace_head/wrought_iron>, <immersiveengineering:drillhead:1>, 2);
Welding.addRecipe("steeldrill",<ore:sheetDoubleSteel>, <tfc:metal/mace_head/steel>, <immersiveengineering:drillhead>, 3);
Welding.addRecipe("diairondrill",<immersiveengineering:drillhead:1>, <tfcthings:diamond_grit>, <immersiveintelligence:drillhead:1>, 3);
Welding.addRecipe("diasteeldrill",<immersiveengineering:drillhead>, <tfcthings:diamond_grit>, <immersiveintelligence:drillhead:2>, 4);
Welding.addRecipe("engineershammer",<tfcthings:prospectors_hammer/wrought_iron>, <ore:ingotNickel>, <immersiveengineering:tool>, 3);


Grindstone.addRecipe(<tfc:ore/saltpeter>, <tfc:powder/saltpeter>*3, 0.5f);
Grindstone.addRecipe(<tfc:ore/cinnabar>, <minecraft:redstone>*4, 0.5f);
Grindstone.addRecipe(<tfc:ore/cryolite>, <minecraft:redstone>*4, 0.5f);

Grindstone.addRecipe(<tfc:ore/halite>, <tfc:powder/salt>*2, 0.5f);
Grindstone.addRecipe(<tfc:rock/rocksalt>, <tfc:powder/salt>, 0.5f);
Grindstone.addRecipe(<tfc:ore/kimberlite>, <tfc:gem/diamond:2>, 0.5f);


Grindstone.addRecipe(<tfc:ore/lapis_lazuli>, <tfc:powder/lapis_lazuli>, 0.0f);
Grindstone.addRecipe(<tfc:ore/graphite>, <tfc:powder/graphite>*3, 0.5f);

Grindstone.addRecipe(<minecraft:coal:1>, <tfc:powder/charcoal>, 0.0f);

Grindstone.addRecipe(<tfc:food/barley_grain>, <tfc:food/barley_flour>, 0.5f);
Grindstone.addRecipe(<tfc:food/maize_grain>, <tfc:food/cornmeal_flour>, 0.5f);
Grindstone.addRecipe(<tfc:food/oat_grain>, <tfc:food/oat_flour>, 0.5f);
Grindstone.addRecipe(<tfc:food/rice_grain>, <tfc:food/rice_flour>, 0.5f);
Grindstone.addRecipe(<tfc:food/rye_grain>, <tfc:food/rye_flour>, 0.5f);
Grindstone.addRecipe(<tfc:food/wheat_grain>, <tfc:food/wheat_flour>, 0.5f);



Grindstone.addRecipe(<tfc:brick/quartzite>, <tfcthings:whetstone>, 0.0f);










recipes.replaceAllOccurences(<magneticraft:crafting:3>, <ore:wireCopper>);
recipes.replaceAllOccurences(<ore:plateBronze>, <ore:sheetAnyBronze>);
recipes.replaceAllOccurences(<ore:ingotBronze>, <ore:ingetAnyBronze>);


Anvil.addRecipe("ironBucket", <ore:plateIron>, <minecraft:bucket>, 3,"general","BEND_ANY","BEND_ANY","BEND_ANY");

//hoppers and hopping accessories
//ItemRegistry.registerItemMetal(<bithop:pullhop>,"wrought_iron",72,true);
ItemRegistry.registerItemMetal(<minecraft:hopper>,"wrought_iron",144,true);
//ItemRegistry.registerItemMetal(<bithop:screwhop>,"wrought_iron",72,true);
//ItemRegistry.registerItemMetal(<bithop:bithop>,"wrought_iron",72,true);
//ItemRegistry.registerItemMetal(<bithop:fluxhop>,"wrought_iron",72,true);
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


mods.terrafirmacraft.Barrel.addRecipe("eye_fermentation", <minecraft:spider_eye>, <liquid:vinegar> * 100, <minecraft:fermented_spider_eye>, null, 12);
mods.terrafirmacraft.Barrel.addRecipe("salt_conversion", <minecraft:magma>, <liquid:salt_water> * 10000,<tfc:powder/salt>*8,null, 8);
mods.terrafirmacraft.Barrel.addRecipe("malachite", <ore:nuggetCopper>, <liquid:salt_water> * 50,<tfc:powder/malachite>*2,null, 72);
mods.terrafirmacraft.Barrel.addRecipe("rustyplate", <quark:iron_plate>, <liquid:salt_water> * 50,<quark:iron_plate:1>,null, 24);

mods.terrafirmacraft.Barrel.addRecipe("hidefromflesh", <minecraft:rotten_flesh>*4, <liquid:limewater> * 400,<tfc:hide/soaked/medium>,null, 6);

mods.terrafirmacraft.Barrel.addRecipe("parchment_from_small", <tfc:hide/prepared/small>, <liquid:white_dye> * 300,<minecraft:paper>,null, 6);
mods.terrafirmacraft.Barrel.addRecipe("parchment_from_medium", <tfc:hide/prepared/medium>, <liquid:white_dye> * 400,<minecraft:paper>*2,null, 6);
mods.terrafirmacraft.Barrel.addRecipe("parchment_from_large", <tfc:hide/prepared/large>, <liquid:white_dye> * 500,<minecraft:paper>*3,null, 6);


mods.terrafirmacraft.Barrel.addRecipe("flux_manual", <thebetweenlands:items_misc:27>, <liquid:flux_goo> * 500,<tfc:powder/flux>*3,null, 3);
mods.terrafirmacraft.Barrel.addRecipe("flux_automation_0", <ore:sand>, <liquid:flux_goo> * 500,<tfc:powder/flux>*2,null, 4);

mods.terrafirmacraft.Barrel.addRecipe("flux_automation_1", <embers:dust_metallurgic>, <liquid:flux_goo> * 500,<tfc:powder/flux>*10,null, 1);
mods.terrafirmacraft.Barrel.addRecipe("flux_automation_2", <embers:alchemic_waste>, <liquid:flux_goo> * 500,<tfc:powder/flux>*4,null, 2);
mods.terrafirmacraft.Barrel.addRecipe("wood replacement", <betternether:nether_reed>*4, <liquid:olive_oil> * 5,<betternether:reeds_block>,null, 2);

mods.terrafirmacraft.Barrel.addRecipe("aquamarine", <tfc:gem/beryl:3>, <liquid:salt_water> * 500,<astralsorcery:itemcraftingcomponent>*3,null, 6);
//use cobalt and ardite for red and blue steel

Alloy.addAlloy("weak_red_steel").addMetal("steel", 0.5, 0.65).addMetal("red_alloy", 0.1, 0.2).addMetal("ardite", 0.2, 0.3).build();
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


//prevent mob drop-type foods from expiring as they're poisonous already and will refuse to stack otherwise, clogging up your storage
ItemRegistry.registerFood(<thaumcraft:brain>, 2, 20.0, 0.0, 10000000.0, 0.0, 0.0, 0.0, 3.0, 0.0);
ItemRegistry.registerFood(<minecraft:spider_eye>, 2, 20.0, 0.0, 10000000.0, 0.0, 0.0, 0.0, 3.0, 0.0);



//in case the att charcoal forge bugs out and the server won't allow you shift-clicking it, this is another way to get it. this is so you can automate fueling it

SalisMundus.addSingleConversion(<tfc:charcoal_forge>, <att:charcoalforge>);
SalisMundus.addSingleConversion(<tfc:firepit>, <att:firepit>);







