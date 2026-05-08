import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.advancedrocketry.ArcFurnace;
//=======================================================================================================================================================================
//Basic Recipes
	//Remove
	furnace.remove(<immersiveengineering:metal:0>);
	furnace.remove(<immersiveengineering:metal:1>);
	furnace.remove(<immersiveengineering:metal:2>);
	furnace.remove(<immersiveengineering:metal:3>);
	furnace.remove(<immersiveengineering:metal:4>);
	furnace.remove(<immersiveengineering:metal:5>);
	furnace.remove(<immersiveengineering:metal:6>);
	furnace.remove(<immersiveengineering:metal:7>);
	furnace.remove(<immersiveengineering:metal:8>);
	furnace.remove(<immersiveengineering:material:19>);
	recipes.remove(<immersiveengineering:material:5>);
	recipes.remove(<immersiveengineering:pickaxe_steel>);
	recipes.remove(<immersiveengineering:shovel_steel>);
	recipes.remove(<immersiveengineering:axe_steel>);
	recipes.remove(<immersiveengineering:sword_steel>);
	recipes.remove(<immersiveengineering:tool>);
	recipes.remove(<immersiveengineering:tool:1>);
	recipes.remove(<immersiveengineering:material:1>);
	recipes.remove(<immersiveengineering:material:2>);
	recipes.remove(<immersiveengineering:material:3>);
	recipes.remove(<immersiveengineering:stone_decoration>);
	recipes.remove(<immersiveengineering:stone_decoration:1>);
	recipes.remove(<immersiveengineering:stone_decoration:2>);
	recipes.remove(<immersiveengineering:stone_decoration:10>);
	recipes.remove(<immersiveengineering:steel_armor_head>);
	recipes.remove(<immersiveengineering:steel_armor_chest>);
	recipes.remove(<immersiveengineering:steel_armor_legs>);
	recipes.remove(<immersiveengineering:steel_armor_feet>);
	recipes.remove(<immersiveengineering:faraday_suit_head>);
	recipes.remove(<immersiveengineering:faraday_suit_chest>);
	recipes.remove(<immersiveengineering:faraday_suit_legs>);
	recipes.remove(<immersiveengineering:faraday_suit_feet>);

	recipes.remove(<immersiveengineering:metal:8>);
	recipes.remove(<immersiveengineering:metal:30>);
	recipes.remove(<immersiveengineering:metal:31>);
	recipes.remove(<immersiveengineering:metal:32>);
	recipes.remove(<immersiveengineering:metal:33>);
	recipes.remove(<immersiveengineering:metal:34>);
	recipes.remove(<immersiveengineering:metal:35>);
	recipes.remove(<immersiveengineering:metal:36>);
	recipes.remove(<immersiveengineering:metal:37>);
	recipes.remove(<immersiveengineering:metal:38>);
	recipes.remove(<immersiveengineering:metal:39>);
	recipes.remove(<immersiveengineering:metal:40>);
	recipes.remove(<immersiveengineering:metal_device1:13>);
	recipes.remove(<immersiveengineering:metal:20>);
	recipes.remove(<immersiveengineering:metal:21>);
	recipes.remove(<immersiveengineering:metal:22>);
	recipes.remove(<immersiveengineering:metal:23>);
	recipes.remove(<immersiveengineering:metal:24>);
	recipes.remove(<immersiveengineering:metal:25>);
	recipes.remove(<immersiveengineering:metal:26>);
	recipes.remove(<immersiveengineering:metal:27>);
	recipes.remove(<immersiveengineering:metal:28>);
	recipes.remove(<immersiveengineering:metal:29>);


	//Add
	recipes.addShaped(<tfc:metal/ingot/steel>, [[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>], [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>]]);
	recipes.addShapeless(<immersiveengineering:material:23>, [<ore:plateSteel>, <ore:shears>]);
	recipes.addShapeless(<immersiveengineering:material:22>, [<ore:plateAluminum>, <ore:shears>]);
	recipes.addShapeless(<immersiveengineering:material:21>, [<ore:plateElectrum>, <ore:shears>]);
	recipes.addShapeless(<immersiveengineering:material:20>, [<ore:plateCopper>, <ore:shears>]);
	recipes.addShapeless(<tfc:metal/sheet/copper>, [<immersiveengineering:sheetmetal>]);
	recipes.addShapeless(<tfc:metal/sheet/aluminium>, [<immersiveengineering:sheetmetal:1>]);
	recipes.addShapeless(<tfc:metal/sheet/lead>, [<immersiveengineering:sheetmetal:2>]);
	recipes.addShapeless(<tfc:metal/sheet/silver>, [<immersiveengineering:sheetmetal:3>]);
	recipes.addShapeless(<tfc:metal/sheet/nickel>, [<immersiveengineering:sheetmetal:4>]);
	recipes.addShapeless(<tfc:metal/sheet/constantan>, [<immersiveengineering:sheetmetal:6>]);
	recipes.addShapeless(<tfc:metal/sheet/electrum>, [<immersiveengineering:sheetmetal:7>]);
	recipes.addShapeless(<tfc:metal/sheet/steel>, [<immersiveengineering:sheetmetal:8>]);
	recipes.addShapeless(<tfc:metal/sheet/wrought_iron>, [<immersiveengineering:sheetmetal:9>]);
	recipes.addShapeless(<tfc:metal/sheet/gold>, [<immersiveengineering:sheetmetal:10>]);
	recipes.addShapeless(<immersiveengineering:material> * 2, [<ore:saw>.transformDamage(1), <ore:plankTreatedWood>]);

//=======================================================================================================================================================================
//Immersive Engineering Machine Recipes

//Remove Crusher Recipes


	mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:material:24>);
	mods.immersiveengineering.Crusher.removeRecipe(<tfc:ore/cinnabar>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<tfc:ore/sulfur>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:diamond_ore>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<tfc:ore/graphite>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<tfc:ore/kaolinite>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<tfc:ore/saltpeter>);

//Crusher



	//Minerals
	
	mods.immersiveengineering.Crusher.addRecipe(<tfc:powder/graphite> * 8, <ore:gemGraphite>, 8000);
	mods.immersiveengineering.Crusher.addRecipe(<tfc:gem/diamond:2> * 2, <ore:gemKimberlite>, 8000);
	mods.immersiveengineering.Crusher.addRecipe(<minecraft:redstone> * 12, <ore:gemCinnabar>, 8000, <thaumcraft:nugget:5> * 4, 0.5);
	mods.immersiveengineering.Crusher.addRecipe(<minecraft:redstone> * 12, <ore:gemCryolite>, 8000);
	mods.immersiveengineering.Crusher.addRecipe(<tfc:powder/saltpeter> * 12, <ore:gemSaltpeter>, 8000);
	mods.immersiveengineering.Crusher.addRecipe(<tfc:powder/fertilizer> * 12, <ore:gemSylvite>, 8000);
	
	
	mods.immersiveengineering.Crusher.addRecipe(<tfc:powder/salt> * 8, <ore:rockRocksalt>, 8000);


	//quartz
	mods.immersiveengineering.Crusher.addRecipe(<immersiveintelligence:material_dust:8>*2, <minecraft:quartz>, 4000);

//=======================================================================================================================================================================
//Squeezer



	//Plant Oil
	mods.immersiveengineering.Squeezer.addRecipe(<tfc:powder/fertilizer>, <liquid:plantoil> * 100, <ore:seed>, 512);
	mods.immersiveengineering.Squeezer.addRecipe(<tfc:powder/fertilizer>, <liquid:plantoil> * 160, <tfc:food/soybean>, 512);

	//Scraped Hide
	mods.immersiveengineering.Squeezer.addRecipe(<tfc:hide/scraped/small>, <liquid:limewater> * 30, <tfc:hide/soaked/small>, 512);
	mods.immersiveengineering.Squeezer.addRecipe(<tfc:hide/scraped/medium>, <liquid:limewater> * 40, <tfc:hide/soaked/medium>, 512);
	mods.immersiveengineering.Squeezer.addRecipe(<tfc:hide/scraped/large>, <liquid:limewater> * 50, <tfc:hide/soaked/large>, 512);

	//Peat
	mods.immersiveengineering.Squeezer.addRecipe(<tfc:peat>, <liquid:plantoil>*10, <tfc:powder/fertilizer>*9, 512);


//=======================================================================================================================================================================
//Distillation

	//Salt
	mods.immersivepetroleum.Distillation.addRecipe([<liquid:water> * 1000], [<tfc:powder/salt> * 1], <liquid:salt_water> * 1000, 128, 150, [1, 1]);
	

//=======================================================================================================================================================================
//Refinery

	//Brine
	mods.immersiveengineering.Refinery.addRecipe(<liquid:brine> * 10, <liquid:vinegar>, <liquid:salt_water>*9, 512);
	//methanol
	mods.immersiveengineering.Refinery.addRecipe(<liquid:methanol> , <liquid:carbon_monoxide>, <liquid:hydrogen>*2, 50);
	
	

	

//=======================================================================================================================================================================
//Fermenter

    mods.immersiveengineering.Fermenter.removeFluidRecipe(<liquid:ethanol>);

	//Alcohol
	mods.immersiveengineering.Fermenter.addRecipe(<tfc:powder/fertilizer>, <liquid:beer>*250, <tfc:food/barley_flour>, 1024);
	mods.immersiveengineering.Fermenter.addRecipe(<tfc:powder/fertilizer>, <liquid:cider>*250, <ore:apple>, 1024);
	mods.immersiveengineering.Fermenter.addRecipe(<tfc:powder/fertilizer>, <liquid:rum>*250, <minecraft:sugar>, 1024);
	mods.immersiveengineering.Fermenter.addRecipe(<tfc:powder/fertilizer>, <liquid:sake>*250, <tfc:food/rice_flour>, 1024);
	mods.immersiveengineering.Fermenter.addRecipe(<tfc:powder/fertilizer>, <liquid:vodka>*250, <tfc:food/potato>, 1024);
	mods.immersiveengineering.Fermenter.addRecipe(<tfc:powder/fertilizer>, <liquid:whiskey>*250, <tfc:food/wheat_flour>, 1024);
	mods.immersiveengineering.Fermenter.addRecipe(<tfc:powder/fertilizer>, <liquid:corn_whiskey>*250, <tfc:food/cornmeal_flour>, 1024);
	mods.immersiveengineering.Fermenter.addRecipe(<tfc:powder/fertilizer>, <liquid:rye_whiskey>*250, <tfc:food/rye_flour>, 1024);
	
//=======================================================================================================================================================================
//Mixer

	//Vinegar
	mods.immersiveengineering.Mixer.addRecipe(<liquid:vinegar> * 1000, <liquid:beer> * 1000, [<ore:categoryFruit> * 10], 1024);
	mods.immersiveengineering.Mixer.addRecipe(<liquid:vinegar> * 1000, <liquid:cider> * 1000, [<ore:categoryFruit> * 10], 1024);
	mods.immersiveengineering.Mixer.addRecipe(<liquid:vinegar> * 1000, <liquid:rum> * 1000, [<ore:categoryFruit> * 10], 1024);
	mods.immersiveengineering.Mixer.addRecipe(<liquid:vinegar> * 1000, <liquid:sake> * 1000, [<ore:categoryFruit> * 10], 1024);
	mods.immersiveengineering.Mixer.addRecipe(<liquid:vinegar> * 1000, <liquid:vodka> * 1000, [<ore:categoryFruit> * 10], 1024);
	mods.immersiveengineering.Mixer.addRecipe(<liquid:vinegar> * 1000, <liquid:whiskey> * 1000, [<ore:categoryFruit> * 10], 1024);
	mods.immersiveengineering.Mixer.addRecipe(<liquid:vinegar> * 1000, <liquid:corn_whiskey> * 1000, [<ore:categoryFruit> * 10], 1024);
	mods.immersiveengineering.Mixer.addRecipe(<liquid:vinegar> * 1000, <liquid:rye_whiskey> * 1000, [<ore:categoryFruit> * 10], 1024);
	
	//Limewater
	mods.immersiveengineering.Mixer.addRecipe(<liquid:limewater> * 1000, <liquid:water> * 1000, [<ore:dustFlux> * 2], 512);
	
	//Tannin
	mods.immersiveengineering.Mixer.addRecipe(<liquid:tannin> * 1000, <liquid:water> * 1000, [<ore:logWoodTannin>], 1024);

//=======================================================================================================================================================================
//Distiller
 mods.immersivetechnology.Distiller.addRecipe(<liquid:water>*80, <liquid:salt_water>*100, <tfc:powder/salt>, 1024, 20, 0.1);	

//=======================================================================================================================================================================
//Bottling Machine

	//Raw Hide to Soaked Hide
	mods.immersiveengineering.BottlingMachine.addRecipe(<tfc:hide/soaked/small>, <tfc:hide/raw/small>, <liquid:limewater> * 300);
	mods.immersiveengineering.BottlingMachine.addRecipe(<tfc:hide/soaked/medium>, <tfc:hide/raw/medium>, <liquid:limewater> * 400);
	mods.immersiveengineering.BottlingMachine.addRecipe(<tfc:hide/soaked/large>, <tfc:hide/raw/large>, <liquid:limewater> * 500);

	//Scraped Hide to Prepared Hide
	mods.immersiveengineering.BottlingMachine.addRecipe(<tfc:hide/prepared/small>, <tfc:hide/scraped/small>, <liquid:water> * 300);
	mods.immersiveengineering.BottlingMachine.addRecipe(<tfc:hide/prepared/medium>, <tfc:hide/scraped/medium>, <liquid:water> * 400);
	mods.immersiveengineering.BottlingMachine.addRecipe(<tfc:hide/prepared/large>, <tfc:hide/scraped/large>, <liquid:water> * 500);

	//Prepared Hide to Leather
	mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:leather> * 1, <tfc:hide/scraped/small>, <liquid:tannin> * 300);
	mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:leather> * 2, <tfc:hide/scraped/medium>, <liquid:tannin> * 400);
	mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:leather> * 3, <tfc:hide/scraped/large>, <liquid:tannin> * 500);

	//Jute Fibre Processing
	mods.immersiveengineering.BottlingMachine.addRecipe(<tfc:crop/product/jute_fiber>, <tfc:crop/product/jute>, <liquid:water> * 500);

//=======================================================================================================================================================================
//Coke Oven

	//Add
	mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:material:6> * 3, 500, <tfc:ore/bituminous_coal>*4, 1000);
	mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:material:6> * 2, 500, <tfc:ore/lignite>*4, 1200);
	mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:material:6> * 1, 500, <tfc:peat>*4, 1500);
	

//=======================================================================================================================================================================
//Alloy Kiln
	
	//Remove

	mods.immersiveengineering.AlloySmelter.removeRecipe(<thaumcraft:ingot:2>);
	mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
	mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
	
	
	//Brass
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/brass> * 4, <ore:ingotCopper> * 3, <ore:ingotZinc>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/brass> * 4, <ore:dustCopper> * 3, <ore:dustZinc>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/brass> * 4, <ore:ingotCopper> * 3, <ore:dustZinc>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/brass> * 4, <ore:dustCopper> * 3, <ore:ingotZinc>, 1200);
	
	//Constantan
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/constantan> * 2, <ore:ingotCopper> * 3, <ore:ingotNickel>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/constantan> * 2, <ore:dustCopper> * 3, <ore:dustNickel>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/constantan> * 2, <ore:ingotCopper> * 3, <ore:dustNickel>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/constantan> * 2, <ore:dustCopper> * 3, <ore:ingotNickel>, 1200);
	
	//Electrum
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/electrum> * 2, <ore:ingotGold> * 3, <ore:ingotSilver>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/electrum> * 2, <ore:dustGold> * 3, <ore:dustSilver>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/electrum> * 2, <ore:ingotGold> * 3, <ore:dustSilver>, 1200);
	mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/electrum> * 2, <ore:dustGold> * 3, <ore:ingotSilver>, 1200);


//=======================================================================================================================================================================
//Blast Furnace
	
	//Remove

	mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
	mods.advancedrocketry.ArcFurnace.clear();



//=======================================================================================================================================================================
//Metal Press

	//Remove Recipes
	mods.immersiveengineering.MetalPress.removeRecipe(<thaumcraft:plate>);
	mods.immersiveengineering.MetalPress.removeRecipe(<thaumcraft:plate:1>);
	mods.immersiveengineering.MetalPress.removeRecipe(<thaumcraft:plate:2>);
	mods.immersiveengineering.MetalPress.removeRecipe(<thaumcraft:plate:3>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:1>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:2>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:3>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:4>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:5>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:6>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:7>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:8>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:30>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:31>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:32>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:33>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:34>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:35>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:36>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:37>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:38>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:39>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:40>);
	mods.immersiveengineering.MetalPress.removeRecipe(<immersiveintelligence:material_plate:6>);

	//Add Recipes
	


	


	mods.immersiveengineering.MetalPress.addRecipe(<immersiveintelligence:material_plate:6>, <thebetweenlands:items_misc:23>, <immersiveengineering:mold>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<immersiveintelligence:material_plate:6>, <ic2:misc_resource:4>, <immersiveengineering:mold>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<thebetweenlands:items_misc:23>*4,<immersiveintelligence:material:28>, <immersiveengineering:mold:7>, 5000);
	furnace.remove(<ic2:crafting>);
	mods.immersiveengineering.MetalPress.addRecipe(<immersiveintelligence:material_plate:6>*6, <immersiveintelligence:material:28>, <immersiveengineering:mold>, 5000);
	
	
	
		
	
	

	//HOP
	mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:19>, <immersiveengineering:material:18>, <tfc:ceramics/fired/mold/ingot>, 500);




	// Steel Ingot
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/pig_iron>, <tfc:metal/hammer_head/wrought_iron>, 50000);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/pig_iron>, <tfc:metal/hammer_head/steel>, 50000);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/pig_iron>, <tfc:metal/hammer_head/black_steel>, 50000);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/pig_iron>, <tfc:metal/hammer_head/blue_steel>, 50000);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/pig_iron>, <tfc:metal/hammer_head/red_steel>, 50000);
	
	

//Clay Molds
/*
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/ingot>, <minecraft:clay_ball>, <tfc:metal/ingot/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/pick_head>, <minecraft:clay_ball>, <tfc:metal/pick_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/shovel_head>, <minecraft:clay_ball>, <tfc:metal/shovel_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/axe_head>, <minecraft:clay_ball>, <tfc:metal/axe_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/hoe_head>, <minecraft:clay_ball>, <tfc:metal/hoe_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/chisel_head>, <minecraft:clay_ball>, <tfc:metal/chisel_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/sword_blade>, <minecraft:clay_ball>, <tfc:metal/sword_blade/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/mace_head>, <minecraft:clay_ball>, <tfc:metal/mace_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/saw_blade>, <minecraft:clay_ball>, <tfc:metal/saw_blade/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/javelin_head>, <minecraft:clay_ball>, <tfc:metal/javelin_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/hammer_head>, <minecraft:clay_ball>, <tfc:metal/hammer_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/propick_head>, <minecraft:clay_ball>, <tfc:metal/propick_head/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/knife_blade>, <minecraft:clay_ball>, <tfc:metal/knife_blade/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:ceramics/unfired/mold/scythe_blade>, <minecraft:clay_ball>, <tfc:metal/scythe_blade/steel>, 500, 3);
	*/
	mods.immersiveengineering.MetalPress.addRecipe(<tfctech:ceramics/unfired/glass_block>, <minecraft:clay_ball>, <immersiveengineering:sheetmetal:8>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfctech:ceramics/unfired/glass_pane>, <minecraft:clay_ball>, <tfc:metal/sheet/steel>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfctech:ceramics/unfired/rackwheel_piece>, <minecraft:clay_ball>, <tfctech:metal/steel_rackwheel_piece>, 500, 3);
	mods.immersiveengineering.MetalPress.addRecipe(<tfctech:ceramics/unfired/sleeve>, <minecraft:clay_ball>, <tfctech:metal/steel_sleeve>, 500, 3);
//Double Ingots

	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/copper>, <tfc:metal/ingot/copper>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/steel>, <tfc:metal/ingot/steel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/red_steel>, <tfc:metal/ingot/red_steel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/blue_steel>, <tfc:metal/ingot/blue_steel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/black_steel>, <tfc:metal/ingot/black_steel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/gold>, <tfc:metal/ingot/gold>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/silver>, <tfc:metal/ingot/silver>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/bronze>, <tfc:metal/ingot/bronze>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/bismuth>, <tfc:metal/ingot/bismuth>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/pig_iron>, <tfc:metal/ingot/pig_iron>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/bismuth_bronze>, <tfc:metal/ingot/bismuth_bronze>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/zinc>, <tfc:metal/ingot/zinc>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/rose_gold>, <tfc:metal/ingot/rose_gold>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/brass>, <tfc:metal/ingot/brass>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/tin>, <tfc:metal/ingot/tin>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/sterling_silver>, <tfc:metal/ingot/sterling_silver>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/platinum>, <tfc:metal/ingot/platinum>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/nickel>, <tfc:metal/ingot/nickel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/lead>, <tfc:metal/ingot/lead>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/wrought_iron>, <tfc:metal/ingot/wrought_iron>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/black_bronze>, <tfc:metal/ingot/black_bronze>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/aluminium>, <tfc:metal/ingot/aluminium>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/ardite>, <tfc:metal/ingot/ardite>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/cobalt>, <tfc:metal/ingot/cobalt>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/constantan>, <tfc:metal/ingot/constantan>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/electrum>, <tfc:metal/ingot/electrum>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/manyullyn>, <tfc:metal/ingot/manyullyn>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/invar>, <tfc:metal/ingot/invar>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/mithril>, <tfc:metal/ingot/mithril>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/aluminium_brass>, <tfc:metal/ingot/aluminium_brass>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/antimony>, <tfc:metal/ingot/antimony>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/osmium>, <tfc:metal/ingot/osmium>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/titanium>, <tfc:metal/ingot/titanium>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/tungsten>, <tfc:metal/ingot/tungsten>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_ingot/tungsten_steel>, <tfc:metal/ingot/tungsten_steel>, <tfc:metal/hammer_head/steel>, 500, 2);	
	


//Metal Sheets

	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/copper>*2, <tfc:metal/double_ingot/copper>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/steel>*2, <tfc:metal/double_ingot/steel>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/red_steel>*2, <tfc:metal/double_ingot/red_steel>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/blue_steel>*2, <tfc:metal/double_ingot/blue_steel>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/black_steel>*2, <tfc:metal/double_ingot/black_steel>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/gold>*2, <tfc:metal/double_ingot/gold>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/silver>*2, <tfc:metal/double_ingot/silver>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/bronze>*2, <tfc:metal/double_ingot/bronze>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/bismuth>*2, <tfc:metal/double_ingot/bismuth>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/pig_iron>*2, <tfc:metal/double_ingot/pig_iron>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/bismuth_bronze>*2, <tfc:metal/double_ingot/bismuth_bronze>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/zinc>*2, <tfc:metal/double_ingot/zinc>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/rose_gold>*2, <tfc:metal/double_ingot/rose_gold>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/brass>*2, <tfc:metal/double_ingot/brass>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/tin>*2, <tfc:metal/double_ingot/tin>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/sterling_silver>*2, <tfc:metal/double_ingot/sterling_silver>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/platinum>*2, <tfc:metal/double_ingot/platinum>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/nickel>*2, <tfc:metal/double_ingot/nickel>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/lead>*2, <tfc:metal/double_ingot/lead>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/wrought_iron>*2, <tfc:metal/double_ingot/wrought_iron>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/black_bronze>*2, <tfc:metal/double_ingot/black_bronze>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/aluminium>*2, <tfc:metal/double_ingot/aluminium>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/ardite>*2, <tfc:metal/double_ingot/ardite>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/cobalt>*2, <tfc:metal/double_ingot/cobalt>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/constantan>*2, <tfc:metal/double_ingot/constantan>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/electrum>*2, <tfc:metal/double_ingot/electrum>, <tfc:metal/hammer_head/steel>, 500);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/manyullyn>*2, <tfc:metal/double_ingot/manyullyn>, <tfc:metal/hammer_head/steel>, 500);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/invar>*2, <tfc:metal/double_ingot/invar>, <tfc:metal/hammer_head/steel>, 500);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/mithril>*2, <tfc:metal/double_ingot/mithril>, <tfc:metal/hammer_head/steel>, 500);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/aluminium_brass>*2, <tfc:metal/double_ingot/aluminium_brass>, <tfc:metal/hammer_head/steel>, 500);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/antimony>*2, <tfc:metal/double_ingot/antimony>, <tfc:metal/hammer_head/steel>, 500);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/osmium>*2, <tfc:metal/double_ingot/osmium>, <tfc:metal/hammer_head/steel>, 500);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/titanium>*2, <tfc:metal/double_ingot/titanium>, <tfc:metal/hammer_head/steel>, 500);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/tungsten>*2, <tfc:metal/double_ingot/tungsten>, <tfc:metal/hammer_head/steel>, 500);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/sheet/tungsten_steel>*2, <tfc:metal/double_ingot/tungsten_steel>, <tfc:metal/hammer_head/steel>, 500);	



//Metal Double Sheets

	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/copper>, <tfc:metal/sheet/copper>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/steel>, <tfc:metal/sheet/steel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/red_steel>, <tfc:metal/sheet/red_steel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/blue_steel>, <tfc:metal/sheet/blue_steel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/black_steel>, <tfc:metal/sheet/black_steel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/gold>, <tfc:metal/sheet/gold>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/silver>, <tfc:metal/sheet/silver>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/bronze>, <tfc:metal/sheet/bronze>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/bismuth>, <tfc:metal/sheet/bismuth>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/pig_iron>, <tfc:metal/sheet/pig_iron>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/bismuth_bronze>, <tfc:metal/sheet/bismuth_bronze>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/zinc>, <tfc:metal/sheet/zinc>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/rose_gold>, <tfc:metal/sheet/rose_gold>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/brass>, <tfc:metal/sheet/brass>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/tin>, <tfc:metal/sheet/tin>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/sterling_silver>, <tfc:metal/sheet/sterling_silver>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/platinum>, <tfc:metal/sheet/platinum>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/nickel>, <tfc:metal/sheet/nickel>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/lead>, <tfc:metal/sheet/lead>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/wrought_iron>, <tfc:metal/sheet/wrought_iron>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/black_bronze>, <tfc:metal/sheet/black_bronze>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/aluminium>, <tfc:metal/sheet/aluminium>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/ardite>, <tfc:metal/sheet/ardite>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/cobalt>, <tfc:metal/sheet/cobalt>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/constantan>, <tfc:metal/sheet/constantan>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/electrum>, <tfc:metal/sheet/electrum>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/manyullyn>, <tfc:metal/sheet/manyullyn>, <tfc:metal/hammer_head/steel>, 500, 2);
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/invar>, <tfc:metal/sheet/invar>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/mithril>, <tfc:metal/sheet/mithril>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/aluminium_brass>, <tfc:metal/sheet/aluminium_brass>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/antimony>, <tfc:metal/sheet/antimony>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/osmium>, <tfc:metal/sheet/osmium>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/titanium>, <tfc:metal/sheet/titanium>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/tungsten>, <tfc:metal/sheet/tungsten>, <tfc:metal/hammer_head/steel>, 500, 2);	
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/double_sheet/tungsten_steel>, <tfc:metal/sheet/tungsten_steel>, <tfc:metal/hammer_head/steel>, 500, 2);	
	
	//rod compat
	mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/rod/wrought_iron>, <ore:stickIron>, <tfcthings:mold/prospectors_hammer_head>, 5000);	
		mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/rod/steel>, <ore:stickSteel>, <tfcthings:mold/prospectors_hammer_head>, 5000);
			mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/rod/gold>, <ore:stickGold>, <tfcthings:mold/prospectors_hammer_head>, 5000);
	


//=======================================================================================================================================================================
//Arc Furnace
	
	//Remove

	mods.immersiveengineering.ArcFurnace.removeRecipe(<thaumcraft:ingot:2>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:iron_ingot>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:gold_ingot>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:0>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:6>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:7>);
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);

//Ores

	
	//Copper
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/copper>, <ore:oreCopperRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreCopperRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/copper>, <ore:oreCopperNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreCopperNormal>, <ore:oreCopperNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/copper>, <ore:oreCopperPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreCopperPoor>, <ore:oreCopperPoor>, <ore:oreCopperPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/copper>, <ore:oreCopperSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreCopperSmall>, <ore:oreCopperSmall>, <ore:oreCopperSmall>, <ore:oreCopperSmall>], "Ores");

	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/copper>, <ore:oreMalachiteRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreMalachiteRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/copper>, <ore:oreMalachiteNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreMalachiteNormal>, <ore:oreMalachiteNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/copper>, <ore:oreMalachitePoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreMalachitePoor>, <ore:oreMalachitePoor>, <ore:oreMalachitePoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/copper>, <ore:oreMalachiteSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreMalachiteSmall>, <ore:oreMalachiteSmall>, <ore:oreMalachiteSmall>, <ore:oreMalachiteSmall>], "Ores");

	//Gold
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/gold>, <ore:oreGoldRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreGoldRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/gold>, <ore:oreGoldNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreGoldNormal>, <ore:oreGoldNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/gold>, <ore:oreGoldPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreGoldPoor>, <ore:oreGoldPoor>, <ore:oreGoldPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/gold>, <ore:oreGoldSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreGoldSmall>, <ore:oreGoldSmall>, <ore:oreGoldSmall>, <ore:oreGoldSmall>], "Ores");

	//Platinum
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/platinum>, <ore:orePlatinumRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:orePlatinumRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/platinum>, <ore:orePlatinumNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:orePlatinumNormal>, <ore:orePlatinumNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/platinum>, <ore:orePlatinumPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:orePlatinumPoor>, <ore:orePlatinumPoor>, <ore:orePlatinumPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/platinum>, <ore:orePlatinumSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:orePlatinumSmall>, <ore:orePlatinumSmall>, <ore:orePlatinumSmall>, <ore:orePlatinumSmall>], "Ores");

	//Tin
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/tin>, <ore:oreTinRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreTinRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/tin>, <ore:oreTinNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreTinNormal>, <ore:oreTinNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/tin>, <ore:oreTinPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreTinPoor>, <ore:oreTinPoor>, <ore:oreTinPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/tin>, <ore:oreTinSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreTinSmall>, <ore:oreTinSmall>, <ore:oreTinSmall>, <ore:oreTinSmall>], "Ores");

	//Lead
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/lead>, <ore:oreLeadRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreLeadRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/lead>, <ore:oreLeadNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreLeadNormal>, <ore:oreLeadNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/lead>, <ore:oreLeadPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreLeadPoor>, <ore:oreLeadPoor>, <ore:oreLeadPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/lead>, <ore:oreLeadSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreLeadSmall>, <ore:oreLeadSmall>, <ore:oreLeadSmall>, <ore:oreLeadSmall>], "Ores");

	//Bismuth
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/bismuth>, <ore:oreBismuthRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreBismuthRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/bismuth>, <ore:oreBismuthNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreBismuthNormal>, <ore:oreBismuthNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/bismuth>, <ore:oreBismuthPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreBismuthPoor>, <ore:oreBismuthPoor>, <ore:oreBismuthPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/bismuth>, <ore:oreBismuthSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreBismuthSmall>, <ore:oreBismuthSmall>, <ore:oreBismuthSmall>, <ore:oreBismuthSmall>], "Ores");

	//Nickel
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/nickel>, <ore:oreNickelRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreNickelRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/nickel>, <ore:oreNickelNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreNickelNormal>, <ore:oreNickelNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/nickel>, <ore:oreNickelPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreNickelPoor>, <ore:oreNickelPoor>, <ore:oreNickelPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/nickel>, <ore:oreNickelSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreNickelSmall>, <ore:oreNickelSmall>, <ore:oreNickelSmall>, <ore:oreNickelSmall>], "Ores");

	//Zinc
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/zinc>, <ore:oreZincRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreZincRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/zinc>, <ore:oreZincNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreZincNormal>, <ore:oreZincNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/zinc>, <ore:oreZincPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreZincPoor>, <ore:oreZincPoor>, <ore:oreZincPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/zinc>, <ore:oreZincSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreZincSmall>, <ore:oreZincSmall>, <ore:oreZincSmall>, <ore:oreZincSmall>], "Ores");


	//Aluminium
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/aluminium>, <ore:oreAluminiumRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreAluminiumRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/aluminium>, <ore:oreAluminiumNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreAluminiumNormal>, <ore:oreAluminiumNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/aluminium>, <ore:oreAluminiumPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreAluminiumPoor>, <ore:oreAluminiumPoor>, <ore:oreAluminiumPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/aluminium>, <ore:oreAluminiumSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreAluminiumSmall>, <ore:oreAluminiumSmall>, <ore:oreAluminiumSmall>, <ore:oreAluminiumSmall>], "Ores");

	//Ardite
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/ardite>, <ore:oreArditeRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreArditeRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/ardite>, <ore:oreArditeNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreArditeNormal>, <ore:oreArditeNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/ardite>, <ore:oreArditePoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreArditePoor>, <ore:oreArditePoor>, <ore:oreArditePoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/ardite>, <ore:oreArditeSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreArditeSmall>, <ore:oreArditeSmall>, <ore:oreArditeSmall>, <ore:oreArditeSmall>], "Ores");

	//Cobalt
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/cobalt>, <ore:oreCobaltRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreCobaltRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/cobalt>, <ore:oreCobaltNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreCobaltNormal>, <ore:oreCobaltNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/cobalt>, <ore:oreCobaltPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreCobaltPoor>, <ore:oreCobaltPoor>, <ore:oreCobaltPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/cobalt>, <ore:oreCobaltSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreCobaltSmall>, <ore:oreCobaltSmall>, <ore:oreCobaltSmall>, <ore:oreCobaltSmall>], "Ores");

	//Tungsten
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/tungsten>, <ore:oreTungstenRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreTungstenRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/tungsten>, <ore:oreTungstenNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreTungstenNormal>, <ore:oreTungstenNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/tungsten>, <ore:oreTungstenPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreTungstenPoor>, <ore:oreTungstenPoor>, <ore:oreTungstenPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/tungsten>, <ore:oreTungstenSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreTungstenSmall>, <ore:oreTungstenSmall>, <ore:oreTungstenSmall>, <ore:oreTungstenSmall>], "Ores");

	//Osmium
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/osmium>, <ore:oreOsmiumRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreOsmiumRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/osmium>, <ore:oreOsmiumNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreOsmiumNormal>, <ore:oreOsmiumNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/osmium>, <ore:oreOsmiumPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreOsmiumPoor>, <ore:oreOsmiumPoor>, <ore:oreOsmiumPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/osmium>, <ore:oreOsmiumSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreOsmiumSmall>, <ore:oreOsmiumSmall>, <ore:oreOsmiumSmall>, <ore:oreOsmiumSmall>], "Ores");

	//Titanium
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/titanium>, <ore:oreTitaniumRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreTitaniumRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/titanium>, <ore:oreTitaniumNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreTitaniumNormal>, <ore:oreTitaniumNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/titanium>, <ore:oreTitaniumPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreTitaniumPoor>, <ore:oreTitaniumPoor>, <ore:oreTitaniumPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/titanium>, <ore:oreTitaniumSmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreTitaniumSmall>, <ore:oreTitaniumSmall>, <ore:oreTitaniumSmall>, <ore:oreTitaniumSmall>], "Ores");

	//Antimony
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/antimony>, <ore:oreAntimonyRich>, <immersiveengineering:material:7> * 2, 512, 200, [<ore:oreAntimonyRich>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/antimony>, <ore:oreAntimonyNormal>, <immersiveengineering:material:7> * 3, 512, 300, [<ore:oreAntimonyNormal>, <ore:oreAntimonyNormal>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/antimony>, <ore:oreAntimonyPoor>, <immersiveengineering:material:7> * 6, 512, 400, [<ore:oreAntimonyPoor>, <ore:oreAntimonyPoor>, <ore:oreAntimonyPoor>], "Ores");
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/antimony>, <ore:oreAntimonySmall>, <immersiveengineering:material:7> * 8, 512, 400, [<ore:oreAntimonySmall>, <ore:oreAntimonySmall>, <ore:oreAntimonySmall>, <ore:oreAntimonySmall>], "Ores");


//Metal Alloys

//Ingots
	//Bismuth Bronze
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/bismuth_bronze> * 4, <ore:ingotBismuth>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotZinc>, <ore:ingotCopper>, <ore:ingotCopper>], "Alloying");

	//Black Bronze
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/black_bronze> * 4, <ore:ingotGold>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotSilver>, <ore:ingotCopper>, <ore:ingotCopper>], "Alloying");

	//Brass
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/brass> * 4, <ore:ingotZinc>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], "Alloying");

	//Bronze
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/bronze> * 4, <ore:ingotTin>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], "Alloying");

	//Rose Gold
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/rose_gold> * 4, <ore:ingotCopper>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], "Alloying");

	//Sterling Silver
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/sterling_silver> * 4, <ore:ingotCopper>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], "Alloying");

	//Weak Steel
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/weak_steel> * 4, <ore:ingotSteel>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotSteel>, <ore:ingotBlackBronze>, <ore:ingotNickel>], "Alloying");

	//Black High Carbon Steel
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/high_carbon_black_steel> * 2, <ore:ingotWeakSteel>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotPigIron>], "Alloying");

	//Weak Red Steel
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/weak_red_steel> * 5, <ore:ingotSteel>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:ingotRedAlloy>, <ore:ingotArdite>, <ore:ingotSteel>, <ore:ingotSteel>], "Alloying");

	//Weak Blue Steel
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/weak_blue_steel> * 5, <ore:ingotSteel>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:ingotBismuth>, <ore:ingotCobalt>, <ore:ingotSteel>, <ore:ingotSteel>], "Alloying");

	//High Carbon Red Steel
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/high_carbon_red_steel> * 2, <ore:ingotWeakRedSteel>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:ingotBlackSteel>], "Alloying");

	//High Carbon Blue Steel
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/high_carbon_blue_steel> * 2, <ore:ingotWeakBlueSteel>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:ingotBlackSteel>], "Alloying");

	//Constantan
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/constantan> * 2, <ore:ingotCopper>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotNickel>], "Alloying");

	//Electrum
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/electrum> * 2, <ore:ingotGold>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:ingotSilver>], "Alloying");

	//Mithril
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/mithril> * 5, <ore:ingotCopper>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotAntimony>], "Alloying");

	//Invar
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/invar> * 5, <ore:ingotNickel>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:ingotIron>, <ore:ingotIron>], "Alloying");

	//Aluminium Brass
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/aluminium_brass> * 5, <ore:ingotAluminium>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:ingotAluminium>, <ore:ingotAluminium>, <ore:ingotCopper>], "Alloying");

	//Manyullyn
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/ingot/manyullyn> * 2, <ore:ingotCobalt>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:ingotArdite>], "Alloying");

//Dusts
	//Bismuth Bronze
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/bismuth_bronze> * 4, <ore:dustBismuth>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:dustZinc>, <ore:dustCopper>, <ore:dustCopper>], "Alloying");

	//Black Bronze
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/black_bronze> * 4, <ore:dustGold>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:dustSilver>, <ore:dustCopper>, <ore:dustCopper>], "Alloying");

	//Brass
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/brass> * 4, <ore:dustZinc>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>], "Alloying");

	//Bronze
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/bronze> * 4, <ore:dustTin>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>], "Alloying");

	//Rose Gold
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/rose_gold> * 4, <ore:dustCopper>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:dustGold>, <ore:dustGold>, <ore:dustGold>], "Alloying");

	//Sterling Silver
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/sterling_silver> * 4, <ore:dustCopper>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:dustSilver>, <ore:dustSilver>, <ore:dustSilver>], "Alloying");

	//Constantan
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/constantan> * 2, <ore:dustCopper>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:dustNickel>], "Alloying");

	//Electrum
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/electrum> * 2, <ore:dustGold>, <immersiveengineering:material:7> * 1, 512, 200, [<ore:dustFlux>, <ore:dustSilver>], "Alloying");

	//Mithril
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/mithril> * 5, <ore:dustCopper>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustAntimony>], "Alloying");

	//Invar
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/invar> * 5, <ore:dustNickel>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:dustIron>, <ore:dustIron>], "Alloying");

	//Aluminium Brass
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/aluminium_brass> * 5, <ore:dustAluminium>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:dustAluminium>, <ore:dustAluminium>, <ore:dustCopper>], "Alloying");

	//Manyullyn
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:metal/dust/manyullyn> * 2, <ore:dustCobalt>, <immersiveengineering:material:7> * 1, 512, 300, [<ore:dustFlux>, <ore:dustArdite>], "Alloying");


//Cobblestone to Raw Rock

	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/granite>, <tfc:cobble/granite>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/granite>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/diorite>, <tfc:cobble/diorite>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/diorite>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/gabbro>, <tfc:cobble/gabbro>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/gabbro>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/shale>, <tfc:cobble/shale>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/shale>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/claystone>, <tfc:cobble/claystone>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/claystone>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/rocksalt>, <tfc:cobble/rocksalt>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/rocksalt>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/limestone>, <tfc:cobble/limestone>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/limestone>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/conglomerate>, <tfc:cobble/conglomerate>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/conglomerate>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/dolomite>, <tfc:cobble/dolomite>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/dolomite>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/chert>, <tfc:cobble/chert>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/chert>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/chalk>, <tfc:cobble/chalk>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/chalk>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/rhyolite>, <tfc:cobble/rhyolite>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/rhyolite>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/basalt>, <tfc:cobble/basalt>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/basalt>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/andesite>, <tfc:cobble/andesite>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/andesite>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/dacite>, <tfc:cobble/dacite>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/dacite>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/quartzite>, <tfc:cobble/quartzite>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/quartzite>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/slate>, <tfc:cobble/slate>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/slate>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/phyllite>, <tfc:cobble/phyllite>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/phyllite>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/schist>, <tfc:cobble/schist>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/schist>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/gneiss>, <tfc:cobble/gneiss>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/gneiss>]);
	mods.immersiveengineering.ArcFurnace.addRecipe(<tfc:raw/marble>, <tfc:cobble/marble>, <immersiveengineering:material:7> * 2, 1200, 300, [<ore:dustFlux>, <tfc:cobble/marble>]);


//Glass

	mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:glass> * 2, <ore:blockSand>, <immersiveengineering:material:7>, 1100, 100);


//=======================================================================================================================================================================
//Heat Registry
	mods.terrafirmacraft.ItemRegistry.registerItemHeat(<immersiveengineering:faraday_suit_head>, 0.35, 660, true);
	mods.terrafirmacraft.ItemRegistry.registerItemHeat(<immersiveengineering:faraday_suit_chest>, 0.35, 660, true);
	mods.terrafirmacraft.ItemRegistry.registerItemHeat(<immersiveengineering:faraday_suit_legs>, 0.35, 660, true);
	mods.terrafirmacraft.ItemRegistry.registerItemHeat(<immersiveengineering:faraday_suit_feet>, 0.35, 660, true);

//Metal Registry
	//mods.terrafirmacraft.ItemRegistry.registerItemMetal(<immersiveengineering:faraday_suit_head>, "ALUMINUM", 400, true);
	//mods.terrafirmacraft.ItemRegistry.registerItemMetal(<immersiveengineering:faraday_suit_chest>, "ALUMINUM", 400, true);
	//mods.terrafirmacraft.ItemRegistry.registerItemMetal(<immersiveengineering:faraday_suit_legs>, "ALUMINUM", 400, true);
	//mods.terrafirmacraft.ItemRegistry.registerItemMetal(<immersiveengineering:faraday_suit_feet>, "ALUMINUM", 400, true);

//Armor Registry

	//Faraday
	mods.terrafirmacraft.ItemRegistry.registerArmor(<immersiveengineering:faraday_suit_head>, 500, 330, 500);
	mods.terrafirmacraft.ItemRegistry.registerArmor(<immersiveengineering:faraday_suit_chest>, 500, 330, 500);
	mods.terrafirmacraft.ItemRegistry.registerArmor(<immersiveengineering:faraday_suit_legs>, 500, 330, 500);
	mods.terrafirmacraft.ItemRegistry.registerArmor(<immersiveengineering:faraday_suit_feet>, 500, 330, 500);

//Add Armor Forging

	//Faraday
	mods.terrafirmacraft.Anvil.addRecipe("tfcr:ie_faraday_helmet", <ore:sheetDoubleAluminium>, <immersiveengineering:faraday_suit_head>, 2, "armor", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
	mods.terrafirmacraft.Anvil.addRecipe("tfcr:ie_faraday_chestplate", <ore:sheetDoubleAluminium>, <immersiveengineering:faraday_suit_chest>, 2, "armor", "HIT_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
	mods.terrafirmacraft.Anvil.addRecipe("tfcr:ie_faraday_leggings", <ore:sheetDoubleAluminium>, <immersiveengineering:faraday_suit_legs>, 2, "armor", "BEND_ANY", "DRAW_ANY", "HIT_ANY");
	mods.terrafirmacraft.Anvil.addRecipe("tfcr:ie_faraday_boots", <ore:sheetDoubleAluminium>, <immersiveengineering:faraday_suit_feet>, 2, "armor", "BEND_LAST", "BEND_SECOND_LAST", "SHRINK_THIRD_LAST");

	mods.terrafirmacraft.Barrel.addRecipe("tfcr:treated_wood_planks", <ore:plankWood>, <liquid:creosote> * 125, <immersiveengineering:treated_wood>, null, 16);
	mods.terrafirmacraft.Barrel.addRecipe("tfcr:treated_wood_stick", <ore:stickWood>, <liquid:creosote> * 65, <immersiveengineering:material>, null, 16);
//steel block recipe removal
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

//II tungsten unification
recipes.replaceAllOccurences(<immersiveintelligence:material_ingot:3>,<tfc:metal/ingot/tungsten>);

