#priority 254

//Remove alls
	mods.rustichromia.Assembler.removeAll();
	mods.rustichromia.Quern.removeAll();
	mods.rustichromia.Gin.removeAll();
	mods.advancedrocketry.ArcFurnace.clear();
//Done!


//Crafting table

	for mod in [
		"advrocketry",
		"appliedenergistics2",
		"embers",
		"magneticraft",
		"metalchests",
		"mekanism",
		"modularmachinery",
		"thermalexpansion"
	]{
		recipes.removeByMod(mod);
	}

	for output in [
		<advancedrocketry:arcfurnace>,
		<advancedrocketry:solargenerator>,
		<advancedrocketry:solarpanel>,
		<astralsorcery:blockblackmarble>,
		<botania:corporeaspark>,
		<botania:corporeaspark:1>,
		<botania:corporeaindex>,
		<botania:corporeainterceptor>,
		<botania:corporearetainer>,
		<botania:corporeacrystalcube>,
		<botania:corporeafunnel>,
		<botania:miniisland:*>,
		<botania:twigwand>,
		<camping:campfire_cook>,
		<camping:campfire_wood_off>,
		<chisel:factory>,
		//limits opportunities to bypass backpack restriction
		<conarm:travel_sack>,
		<cyberware:surgery_chamber>,
		<cyberware:engineering_table>,
		<cyberware:beacon_large>,
		<cyberware:radio_post>,
		<embers:mechanical_pump>,
		<embers:mech_core>,
		<embers:pipe>,
		<embers:item_pipe>,
		<embers:pump>,
		<embers:item_pump>,
		<embers:reactor>,
		<embers:combustor>,
		<embers:catalyzer>,
		<embers:ember_injector>,
		<embers:inferno_forge>,
		<embers:stirling>,
		<embers:ember_gauge>,
		<embers:fluid_gauge>,
		<embers:item_gauge>,
		<embers:clockwork_attenuator>,
		<embers:pump>,
		<embers:fluid_transfer>,
		<embers:mech_core>,
		<embers:block_caminite_brick>,
		<embers:item_transfer>,
		<embers:item_dropper>,
		<embers:vacuum>,
		<embers:ember_detector>,
		<extrautils2:angelring:*>,
		<extrautils2:luxsaber:*>,
		<extrautils2:redstonelantern>,
		<extrautils2:redstoneclock>,
		<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
		<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
		<firmalife:sprinkler>,
		<firmalife:spout>,
		<firmalife:climate_station>,
		<firmalife:climate_station_1>,
		<firmalife:climate_station_2>,
		<firmalife:climate_station_3>,
		<firmalife:climate_station_4>,
		<firmalife:climate_station_5>,
		<firmalife:sprinkler>,
		<ic2:dual_uranium_fuel_rod>,
		<ic2:quad_uranium_fuel_rod>,
		<ic2:dual_mox_fuel_rod>,
		<ic2:quad_mox_fuel_rod>,
		<ic2:jetpack_electric>,
		<ic2:crafting:2>,
		<ic2:resource:12>,
		<ic2:dust:6>,
		<ic2:te:39>,
		<ic2:te:63>,
		<ic2:ingot>,
		<ic2:forge_hammer>,
		<ic2:cutter>,
		<ic2:te:50>,
		<ic2:casing>,
		<ic2:casing:1>,
		<ic2:casing:2>,
		<ic2:casing:3>,
		<ic2:casing:4>,
		<ic2:casing:5>,
		<ic2:casing:6>,
		<immersiveengineering:drillhead>,
		<immersiveengineering:drillhead:1>,
		<immersiveengineering:metal_device0:5>,
		<immersiveengineering:metal_device1:2>,
		<immersiveengineering:metal_device1:3>,
		<immersiveengineering:metal_device1:6>,
		<immersiveengineering:connector:12>,
		<immersiveengineering:connector:13>,
		<immersiveengineering:metal:20>,
		<immersiveengineering:metal:21>,
		<immersiveengineering:metal:22>,
		<immersiveengineering:metal:23>,
		<immersiveengineering:metal:24>,
		<immersiveengineering:metal:25>,
		<immersiveengineering:metal:26>,
		<immersiveengineering:metal:27>,
		<immersiveengineering:metal:28>,
		<immersiveengineering:metal:29>,
		<immersiveengineering:metal:30>,
		<immersiveengineering:metal:31>,
		<immersiveengineering:metal:32>,
		<immersiveengineering:metal:33>,
		<immersiveengineering:metal:34>,
		<immersiveengineering:metal:35>,
		<immersiveengineering:metal:36>,
		<immersiveengineering:metal:37>,
		<immersiveengineering:metal:38>,
		<immersiveengineering:metal:39>,
		<immersiveengineering:metal:40>,
		<immersiveengineering:material:1>,
		<immersiveengineering:material:2>,
		<immersiveengineering:material:3>,
		<immersiveengineering:material:5>,
		<immersiveengineering:pickaxe_steel>,
		<immersiveengineering:shovel_steel>,
		<immersiveengineering:axe_steel>,
		<immersiveengineering:sword_steel>,
		<immersiveengineering:tool>,
		<immersiveengineering:tool:1>,
		<immersiveengineering:stone_decoration>,
		<immersiveengineering:stone_decoration:1>,
		<immersiveengineering:stone_decoration:2>,
		<immersiveengineering:stone_decoration:4>,
		<immersiveengineering:stone_decoration:5>,
		<immersiveengineering:stone_decoration:10>,
		<immersiveengineering:steel_armor_head>,
		<immersiveengineering:steel_armor_chest>,
		<immersiveengineering:steel_armor_legs>,
		<immersiveengineering:steel_armor_feet>,
		<immersiveengineering:faraday_suit_head>,
		<immersiveengineering:faraday_suit_chest>,
		<immersiveengineering:faraday_suit_legs>,
		<immersiveengineering:faraday_suit_feet>,
		<immersiveengineering:metal_device1:13>,
		<immersiveengineering:wirecoil:5>,
		<immersiveengineering:conveyor>.onlyWithTag({}),
		<immersiveengineering:metal_decoration0:4>,
		// corrupts your world. removed for your safety, but might get revoked later as soon as pabilo8 fixes this.
		<immersiveintelligence:data_connector:8>,
		<immersiveintelligence:metal_decoration:1>,
		<immersiveengineering:metal_device1:13>,
		<immersiveintelligence:material_dust>,
		<immersiveintelligence:sawblade>,
		<immersiveintelligence:sawblade:1>,
		<immersiveintelligence:sawblade:2>,
		<immersiveintelligence:small_wirecoil>,
		//5x5 mining is reserved for the terra shatterer and primal crusher
		<immersiveintelligence:drillhead:*>,
		<immersiveintelligence:gearbox>,
		<immersiveintelligence:mechanical_device>,
		<immersiveintelligence:mechanical_connector>,
		<magneticraft:iron_pipe>,
		<magneticraft:multiblock_column>,
		<magneticraft:multiblock_parts:5>,
		<magneticraft:sluice_box>,
		<magneticraft:crushing_table>,
		<magneticraft:stone_hammer>,
		<magneticraft:iron_hammer>,
		<magneticraft:steel_hammer>,
		<magneticraft:inserter>,
		<magneticraft:conveyor_belt>,
		<magneticraft:thermopile>,
		<magneticraft:wind_turbine>,
		<mekanism:basicblock:8>,
		<mekanism:machineblock:8>,
		<mekanism:machineblock3:1>,
		<mekanism:teleportationcore>,
		<mekanism:transmitter>,
		<mekanism:transmitter:1>,
		<mekanism:transmitter:3>,
		<mekanismgenerators:generator>,
		<mekanismgenerators:generator:1>,
		<mekanismgenerators:generator:3>,
		<mekanismgenerators:generator:4>,
		<mekanismgenerators:generator:5>,
		<mekanismgenerators:generator:6>,
		<mekanismgenerators:solarpanel>,
		// shields are a bit cheap for the 100% protection they give. let's fix that.
		<minecraft:shield>,
		<minecraft:crafting_table>,
		<minecraft:glass_bottle>,
		<minecraft:hopper>,
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
		<minecraft:minecart>,
		<minecraft:cauldron>,
		<mysticalmechanics:gearbox_frame>,
		<mysticalmechanics:mergebox_frame>,
		<mysticalmechanics:gear_gold_off>,
		<mysticalmechanics:gear_gold_on>,
		<mystgears:mechanical_dial>,
		<mystgears:drill>,
		<ore:dustSteel>,
		<ore:stickIron>,
		<ore:blockBronze>,
		<ore:nuggetBronze>,
		<ore:plateBronze>,
		<pneumaticcraft:pressure_gauge_module>,
		<pneumaticcraft:printed_circuit_board>,
		<pneumaticcraft:advanced_pcb>,
		<pneumaticcraft:assembly_io_unit>,
		<pneumaticcraft:assembly_drill>,
		<pneumaticcraft:assembly_laser>,
		<pneumaticcraft:assembly_platform>,
		<pneumaticcraft:assembly_controller>,
		<projectred-integration:gate:*>,
		<projectred-transmission:wire:*>,
		<projectred-illumination:lamp:*>,
		<projectred-illumination:light_button:*>,
		<projectred-illumination:feedback_light_button:*>,
		<projectred-illumination:lantern:*>,
		<projectred-illumination:inverted_lantern:*>,
		<projectred-illumination:fixture_light:*>,
		<projectred-illumination:inverted_fixture_light:*>,
		<projectred-illumination:fallout_lamp:*>,
		<projectred-illumination:inverted_fallout_lamp:*>,
		<projectred-illumination:cage_lamp:*>,
		<projectred-illumination:inverted_cage_lamp:*>,
		<questionablyimmersive:metal_device>,
		<railcraft:track_kit:*>,
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
		<railcraft:boiler_firebox_fluid>,
		<railcraft:boiler_firebox_solid>,
		<rustichromia:mech_torch>,
		<rustichromia:mech_torch_toggle>,
		<signals:block_signal>,
		<signals:chain_signal>,
		<signals:station_marker>,
		<signals:rail_link>,
		<signals:ticket>,
		<tconstruct:tooltables>,
		<tconstruct:seared>,
		<tconstruct:seared:1>,
		<tconstruct:seared:3>,
		<tconstruct:smeltery_controller>,
		<tconstruct:seared_tank>,
		<tconstruct:seared_tank:1>,
		<tconstruct:seared_tank:2>,
		<tconstruct:faucet>,
		<tconstruct:channel>,
		<tconstruct:smeltery_io>,
		<tconstruct:casting>,
		<tconstruct:casting:1>,
		<tconstruct:materials:14>,
		<tconstruct:seared_slab:3>,
		<tconstruct:seared_glass>,
		<tconstruct:materials:18>,
		<tconstruct:stone_torch>,
		<tfc:brass_mechanisms>,
		<tfc:ceramics/fired/fire_brick>,
		<tfc:crucible>,
		<tfc:sluice>,
		<tfc:metal/bucket/blue_steel>,
		<tfc:metal/bucket/red_steel>,
		<tfctech:latex/vulcanizing_agents>,
		<tfctech:powder/potash>,
		<tfctech:smeltery_firebox>,
		<tfctech:smeltery_cauldron>,
		<thaumcraft:tube>,
		<thaumcraft:tube_valve>,
		<thaumcraft:tube_oneway>,
		<thaumcraft:tube_restrict>,
		<thaumcraft:tube_filter>,
		<thaumcraft:metal_alchemical>,
		<thaumcraft:mind>,
		<thaumcraft:plate:2>,
		<thaumcraft:plate:3>,
		<thaumcraft:thaumium_helm>,
		<thaumcraft:thaumium_chest>,
		<thaumcraft:thaumium_legs>,
		<thaumcraft:thaumium_boots>,
		<thaumcraft:void_helm>,
		<thaumcraft:void_chest>,
		<thaumcraft:void_legs>,
		<thaumcraft:void_boots>,
		<thaumicaugmentation:glass_tube>,
		<thermaldynamics:relay>,
		<thermaldynamics:duct_16:*>,
		<thermaldynamics:duct_32:*>,
		<weather2:weather_deflector>,
		<weather2:weather_machine>
	]{
		recipes.remove(output);
	}

	for name in [
		"minecraft:stone_pressure_plate",
		"minecraft:stone_button",
		"minecraft:furnace",
		"minecraft:stick",
		"minecraft:sign",
		"minecraft:bowl",

		//Too cheap plate recipes
		"unidict:platebrass_x3_shape.aaa",
		"unidict:plateiron_x3_shape.aaa",
		"unidict:plateiron_x1_size.2",
		"unidict:platezinc_x1_size.2",
		"unidict:platebrass_x1_size.2",
		"unidict:plateplatinum_x1_size.2"
	]{
		recipes.removeByRecipeName(name);
	}
	recipes.removeShaped(<thaumcraft:plate:1> * 3, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
	recipes.removeShaped(<thaumcraft:plate> * 3, [[<ore:ingotBrass>, <ore:ingotBrass>, <ore:ingotBrass>]]);
	recipes.removeShaped(<thaumcraft:plate:2> * 3, [[<ore:ingotThaumium>, <ore:ingotThaumium>, <ore:ingotThaumium>]]);
	recipes.removeShaped(<thaumcraft:plate:3> * 3, [[<ore:ingotVoid>, <ore:ingotVoid>, <ore:ingotVoid>]]);

	recipes.removeByRegex("^thermalfoundation:material_[6-8][0-9]");
	recipes.removeByRegex("^mystgears:recipe_gear.*");
	recipes.removeByRegex("^embers:gear.*");
	recipes.removeByRegex("^railcraft:gear.*");
//Done!


//Furnace
	for output in [
		<embers:brick_caminite>,
		<embers:plate_caminite>,
		<ic2:crafting>,
		<immersiveengineering:metal:0>,
		<immersiveengineering:metal:1>,
		<immersiveengineering:metal:2>,
		<immersiveengineering:metal:3>,
		<immersiveengineering:metal:4>,
		<immersiveengineering:metal:5>,
		<immersiveengineering:metal:6>,
		<immersiveengineering:metal:7>,
		<immersiveengineering:metal:8>,
		<immersiveengineering:material:19>,
		<minecraft:coal:1>,
		<projectred-core:resource_item>
	]{
		furnace.remove(output);
	}
//Done!


//Botania
	mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);

	mods.botania.Apothecary.removeRecipe("jadedAmaranthus");
	mods.botania.Apothecary.removeRecipe("rannuncarpus");
	mods.botania.Apothecary.removeRecipe("daffomill");
	mods.botania.Apothecary.removeRecipe("agricarnation");
//Done!


//Blood Magic
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
	mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate>);
	mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:1>);
	mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:2>);
	mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:3>);

	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:glowstone_dust>, <minecraft:glass>,<minecraft:stone>]);
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:glowstone_dust>, <bloodmagic:item_routing_node>,<minecraft:iron_ingot>]);
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:glowstone_dust>, <bloodmagic:item_routing_node>,<minecraft:gold_ingot>]);
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:diamond>, <bloodmagic:slate:2>]);
//Done!


//Embers
	mods.embers.EmberGeneration.removeBoilerFluid(<liquid:oil_dwarf>);

	mods.embers.Stamper.remove(<embers:dust_ember>);

	mods.embers.Alchemy.remove(<embers:shifting_scales>);
	mods.embers.Alchemy.remove(<embers:dust_metallurgic>);
	mods.embers.Alchemy.remove(<embers:blasting_core>);
	mods.embers.Alchemy.remove(<embers:catalytic_plug>);


	mods.embers.Mixer.remove(<fluid:dawnstone>*8);
	mods.embers.Mixer.remove(<fluid:oil_dwarf>*10);
	mods.embers.Mixer.remove(<fluid:oil_dwarf>*30);
//Done!


//Immersive Engineering
	//Removes all registered minerals
	for mix in mods.immersiveengineering.Excavator.getRegisteredMinerals(){
		mods.immersiveengineering.Excavator.removeMineral(mix as string);
	}

	mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:material:24>);
	mods.immersiveengineering.Crusher.removeRecipe(<tfc:ore/cinnabar>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<tfc:ore/sulfur>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:diamond_ore>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<tfc:ore/graphite>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<tfc:ore/kaolinite>);
	mods.immersiveengineering.Crusher.removeRecipesForInput(<tfc:ore/saltpeter>);

	mods.immersiveengineering.Fermenter.removeFluidRecipe(<liquid:ethanol>);

	mods.immersiveengineering.AlloySmelter.removeRecipe(<thaumcraft:ingot:2>);
	mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
	mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);

	
	mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
	mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

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
	mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:29>);

	mods.immersiveengineering.Mixer.removeRecipe(<liquid:concrete>);

	mods.immersiveengineering.Blueprint.removeRecipe(<immersiveintelligence:material:5>);
	mods.immersiveengineering.Blueprint.removeRecipe(<immersiveintelligence:material:10>);

	
	mods.immersiveengineering.DieselHandler.removeDrillFuel(<liquid:biodiesel>);
	mods.immersiveengineering.DieselHandler.removeDrillFuel(<liquid:diesel>);
	mods.immersiveengineering.DieselHandler.removeDrillFuel(<liquid:fuel>);

	mods.immersiveengineering.DieselHandler.removeFuel(<liquid:diesel>);
	mods.immersiveengineering.DieselHandler.removeFuel(<liquid:biodiesel>);
	mods.immersiveengineering.DieselHandler.removeFuel(<liquid:fuel>);

//Done!


//Immersive Technology
	mods.immersivetechnology.SteamTurbine.removeFuel(<liquid:steam>);

	mods.immersivetechnology.GasTurbine.removeFuel(<liquid:gasoline>);
	mods.immersivetechnology.GasTurbine.removeFuel(<liquid:biodiesel>);
	mods.immersivetechnology.GasTurbine.removeFuel(<liquid:diesel>);
	mods.immersivetechnology.GasTurbine.removeFuel(<liquid:kerosene>);

	mods.immersivetechnology.MeltingCrucible.removeRecipe(<minecraft:cobblestone>);

//Done!


//JEI
	mods.jei.JEI.removeAndHide(<advancedrocketry:concrete>);
	mods.jei.JEI.removeAndHide(<minecraft:chest_minecart>);
	mods.jei.JEI.removeAndHide(<minecraft:tnt_minecart>);
	
	mods.jei.JEI.hide(<thermalexpansion:augment:352>);
	mods.jei.JEI.hide(<ic2:crafting:2>);
	mods.jei.JEI.hide(<tfctech:latex/vulcanizing_agents>);


	//mods.jei.JEI.hide(<props:props:*>);
	//mods.jei.JEI.hide(<techguns:itemshared:65>);
	mods.jei.JEI.removeAndHide(<mekanism:filterupgrade>);
	//mods.jei.JEI.hide(<randomthings:diviningrod:*>);
	mods.jei.JEI.removeAndHide(<tconstruct:fancy_frame:*>);


	mods.jei.JEI.hide(<immersiveengineering:metal_device1:13>);
	mods.jei.JEI.hide(<immersiveengineering:metal:20>);
	mods.jei.JEI.hide(<immersiveengineering:metal:21>);
	mods.jei.JEI.hide(<immersiveengineering:metal:22>);
	mods.jei.JEI.hide(<immersiveengineering:metal:23>);
	mods.jei.JEI.hide(<immersiveengineering:metal:24>);
	mods.jei.JEI.hide(<immersiveengineering:metal:25>);
	mods.jei.JEI.hide(<immersiveengineering:metal:26>);
	mods.jei.JEI.hide(<immersiveengineering:metal:27>);
	mods.jei.JEI.hide(<immersiveengineering:metal:28>);
	mods.jei.JEI.hide(<immersiveengineering:metal:29>);

	mods.jei.JEI.hide(<immersivecables:coil_block:3>);
	mods.jei.JEI.hide(<immersivecables:wire_coil:3>);

	mods.jei.JEI.hide(<magneticraft:sluice_box>);
	mods.jei.JEI.hide(<magneticraft:crushing_table>);
	mods.jei.JEI.hide(<magneticraft:stone_hammer>);
	mods.jei.JEI.hide(<magneticraft:iron_hammer>);
	mods.jei.JEI.hide(<magneticraft:steel_hammer>);
	mods.jei.JEI.hide(<ic2:forge_hammer>);
	mods.jei.JEI.hide(<ic2:cutter>);
	mods.jei.JEI.hide(<ic2:te:50>);

	mods.jei.JEI.hide(<tfc:metal/bucket/blue_steel>);
	mods.jei.JEI.hide(<tfc:metal/bucket/red_steel>);

	mods.jei.JEI.removeAndHide(<extrautils2:angelring:*>);
	mods.jei.JEI.hide(<camping:campfire_wood_off>);
	mods.jei.JEI.hide(<camping:campfire_cook>);
//Done!


//Magneticraft
	mods.magneticraft.FluidFuel.removeFuel(<liquid:wood_gas>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:diesel>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:biodiesel>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:creosote>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:fuel>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:kerosene>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:gasoline>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:natural_gas>);

	mods.magneticraft.OilHeater.removeRecipe(<liquid:oil>);

	mods.magneticraft.Refinery.removeRecipe(<liquid:hot_crude>);
	mods.magneticraft.Refinery.removeRecipe(<liquid:light_oil>);
	mods.magneticraft.Refinery.removeRecipe(<liquid:heavy_oil>);
	mods.magneticraft.Refinery.removeRecipe(<liquid:lpg>);
//Done!


//Mekanism
	mods.mekanism.thermalevaporation.removeRecipe(<liquid:brine>);
//Done!


//Pneumaticcraft
	mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:lpg>);
	mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:fuel>);
	mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:kerosene>);
	mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:lubricant>);
	mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:plastic>);

	mods.immersiveintelligence.ChemicalBath.removeRecipe(<immersiveintelligence:material:6>);

	mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);
	mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);
	mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);
	mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:turbine_blade>]);
	mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
//Done!


//Tcon
	mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared>);
	mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared:1>);
	mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared_glass>);

	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:1>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:2>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:3>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:4>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:5>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:6>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:7>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:8>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:9>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:10>);
	mods.tconstruct.Melting.removeRecipe(<liquid:stone>, <tconstruct:seared:11>);
	mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <magneticraft:light_plates:1>);
	mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <magneticraft:light_plates>);
	mods.tconstruct.Melting.removeRecipe(<liquid:copper>, <magneticraft:light_plates:2>);
	mods.tconstruct.Melting.removeRecipe(<liquid:lead>, <magneticraft:light_plates:3>);
	mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <magneticraft:light_plates:6>);
	mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:minecart>);
	mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:anvil>);

	mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);
//Done!


//Terrafirmacraft

	mods.terrafirmacraft.Alloy.removeAlloy("weak_red_steel");
	mods.terrafirmacraft.Alloy.removeAlloy("weak_blue_steel");
	mods.terrafirmacraft.Alloy.removeAlloy("hsla_steel");


	mods.terrafirmacraft.Barrel.removeRecipe(<tfctech:latex/rubber_mix>*6);
	mods.terrafirmacraft.Barrel.removeRecipe(<minecraft:clay_ball>);

	mods.immersiveengineering.Squeezer.removeFluidRecipe(<liquid:plantoil>);

	mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/rod/gold>);
	mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/rod/steel>);
	mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/rod/wrought_iron>);
	mods.terrafirmacraft.Anvil.removeRecipe(<firmalife:spout>);

	mods.terrafirmacraft.Heating.removeRecipe(<tfc:crucible>);
	mods.terrafirmacraft.Heating.removeRecipe(<tfc:ceramics/fired/fire_brick>);
//Done!


//Thermal Expansion
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:netherrack>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:1>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:2>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:3>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:4>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:5>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:6>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:cobblestone>);
	mods.thermalexpansion.Crucible.removeRecipe(<minecraft:magma>);

	mods.thermalexpansion.Pulverizer.removeRecipe(<tfc:metal/ingot/bismuth_bronze>);

	mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:bucket>, <minecraft:sand>);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:anvil>, <minecraft:sand>);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:minecart>, <minecraft:sand>);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:cauldron>, <minecraft:sand>);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<tfc:metal/ingot/wrought_iron>,<thermalfoundation:material:768>*4);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<tfc:metal/ingot/wrought_iron>,<thermalfoundation:material:769>*4);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<tfc:metal/ingot/wrought_iron>,<thermalfoundation:material:802>);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material>,<thermalfoundation:material:768>*4);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material>,<thermalfoundation:material:769>*4);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material>,<thermalfoundation:material:802>);

	mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:fuel>);
	mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:creosote>);
	mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:crude_oil>);
	mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:coal>);

	mods.thermalexpansion.Refinery.removeRecipe(<liquid:refined_oil>);
	mods.thermalexpansion.Refinery.removeRecipe(<liquid:biocrude>);
	mods.thermalexpansion.Refinery.removeRecipe(<liquid:crude_oil>);
	mods.thermalexpansion.Refinery.removeRecipe(<liquid:coal>);
	mods.thermalexpansion.Refinery.removeRecipe(<liquid:oil>);
//Done!


//Thaumcraft
	mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot>);
	mods.thaumcraft.Crucible.removeRecipe(<minecraft:clay_ball>);
	mods.thaumcraft.Crucible.removeRecipe(<minecraft:glowstone_dust>);
	mods.thaumcraft.Crucible.removeRecipe(<minecraft:web>);
	mods.thaumcraft.Crucible.removeRecipe(<minecraft:gunpowder>);

	mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness>);
	mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_2>);
	mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mind:1>);
	mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:turret:2>);
	mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:7>);

	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_vent>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_valve>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_buffer>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_restrict>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_oneway>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:glass_tube>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:alembic>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:alembic>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:turret>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<mystgears:essentia_motor>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_aux>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:centrifuge>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mind>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<mystgears:vis_motor>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:bellows>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_output>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_input>);

//Done!

