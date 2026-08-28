#priority 254

//Remove alls
	mods.rustichromia.Assembler.removeAll();
	mods.rustichromia.Quern.removeAll();
	mods.rustichromia.Gin.removeAll();
	mods.advancedrocketry.ArcFurnace.clear();
	mods.immersiveengineering.Excavator.removeAllMinerals();
//Done!


//Crafting table

	for mod in [
		"advrocketry",
		"appliedenergistics2",
		"buildinggadgets",
		"embers",
		"magneticraft",
		"metalchests",
		"mekanism",
		"modularmachinery",
		"mystgears",
		"signals",
		"thermalexpansion",
		"rustichromia",
		"sync",
		"weather2"
	]{
		recipes.removeByMod(mod);
	}

	for output in [		
		<advancedrocketry:arcfurnace>,
		<advancedrocketry:concrete>,
		<advancedrocketry:ic:*>,
		<advancedrocketry:jackhammer>,
		<advancedrocketry:solargenerator>,
		<advancedrocketry:solarpanel>,
		<advancedrocketry:thermite>,
		<astralsorcery:blockblackmarble>,
		<bloodmagic:altar>,
		<bloodmagic:soul_forge>,
		<bloodmagic:soul_snare>,
		<botania:corporeacrystalcube>,
		<botania:corporeafunnel>,
		<botania:corporeaindex>,
		<botania:corporeainterceptor>,
		<botania:corporearetainer>,
		<botania:corporeaspark:1>,
		<botania:corporeaspark>,
		<botania:fertilizer>,
		<botania:forestdrum:1>,
		<botania:forestdrum:2>,
		<botania:grasshorn:1>,
		<botania:grasshorn:2>,
		<botania:miniisland:*>,
		<botania:opencrate:1>,
		<botania:pylon>,
		<botania:spreader>,
		<botania:twigwand>,
		<camping:campfire_cook>,
		<camping:campfire_wood_off>,
		<chisel:factory>,
		<clothesline:clothesline_anchor>,
		<clothesline:clothesline>,
		<clothesline:crank>,
		<clothesline:spinner>,
		<conarm:travel_sack>, //limits opportunities to bypass backpack restriction
		<cyberware:beacon_large>,
		<cyberware:engineering_table>,
		<cyberware:radio_post>,
		<cyberware:scanner>,
		<cyberware:surgery_chamber>,
		<extrautils2:analogcrafter>,
		<extrautils2:angelring:*>,
		<extrautils2:crafter>,
		<extrautils2:drum>,
		<extrautils2:filter>,
		<extrautils2:filterfluids>,
		<extrautils2:grocket:1>,
		<extrautils2:grocket:2>,
		<extrautils2:grocket:5>,
		<extrautils2:grocket:6>,
		<extrautils2:grocket>,
		<extrautils2:indexer>,
		<extrautils2:indexerremote>,
		<extrautils2:luxsaber:*>,
		<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
		<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
		<extrautils2:miner>,
		<extrautils2:pipe>,
		<extrautils2:redstoneclock>,
		<extrautils2:redstonelantern>,
		<extrautils2:spike_diamond>,
		<extrautils2:spike_gold>,
		<extrautils2:spike_iron>,
		<extrautils2:spike_stone>,
		<extrautils2:spike_wood>,
		<extrautils2:user>,
		<firmalife:climate_station_1>,
		<firmalife:climate_station_2>,
		<firmalife:climate_station_3>,
		<firmalife:climate_station_4>,
		<firmalife:climate_station_5>,
		<firmalife:climate_station>,
		<firmalife:large_planter>,
		<firmalife:quad_planter>,
		<firmalife:spout>,
		<firmalife:sprinkler>,
		<firmalife:sprinkler>,
		<ic2:casing:1>,
		<ic2:casing:2>,
		<ic2:casing:3>,
		<ic2:casing:4>,
		<ic2:casing:5>,
		<ic2:casing:6>,
		<ic2:casing>,
		<ic2:cover>,
		<ic2:crafting:1>,
		<ic2:crafting:2>,
		<ic2:cutter>,
		<ic2:dual_mox_fuel_rod>,
		<ic2:dual_uranium_fuel_rod>,
		<ic2:dust:6>,
		<ic2:forge_hammer>,
		<ic2:glass>,
		<ic2:ingot>,
		<ic2:jetpack_electric>,
		<ic2:quad_mox_fuel_rod>,
		<ic2:quad_uranium_fuel_rod>,
		<ic2:resource:12>,
		<ic2:te:39>,
		<ic2:te:50>,
		<ic2:te:63>,
		<immersiveengineering:axe_steel>,
		<immersiveengineering:chemthrower>,
		<immersiveengineering:connector:12>,
		<immersiveengineering:connector:13>,
		<immersiveengineering:conveyor>,
		<immersiveengineering:drill>,
		<immersiveengineering:drillhead:1>,
		<immersiveengineering:drillhead>,
		<immersiveengineering:faraday_suit_chest>,
		<immersiveengineering:faraday_suit_feet>,
		<immersiveengineering:faraday_suit_head>,
		<immersiveengineering:faraday_suit_legs>,
		<immersiveengineering:material:1>,
		<immersiveengineering:material:2>,
		<immersiveengineering:material:3>,
		<immersiveengineering:material:5>,
		<immersiveengineering:metal_decoration0:3>,
		<immersiveengineering:metal_decoration0:4>,
		<immersiveengineering:metal_decoration0:5>,
		<immersiveengineering:metal_device0:5>,
		<immersiveengineering:metal_device1:13>,
		<immersiveengineering:metal_device1:13>,
		<immersiveengineering:metal_device1:2>,
		<immersiveengineering:metal_device1:3>,
		<immersiveengineering:metal_device1:6>,
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
		<immersiveengineering:pickaxe_steel>,
		<immersiveengineering:shovel_steel>,
		<immersiveengineering:skyhook>,
		<immersiveengineering:steel_armor_chest>,
		<immersiveengineering:steel_armor_feet>,
		<immersiveengineering:steel_armor_head>,
		<immersiveengineering:steel_armor_legs>,
		<immersiveengineering:stone_decoration:1>,
		<immersiveengineering:stone_decoration:10>,
		<immersiveengineering:stone_decoration:2>,
		<immersiveengineering:stone_decoration:4>,
		<immersiveengineering:stone_decoration:5>,
		<immersiveengineering:stone_decoration>,
		<immersiveengineering:sword_steel>,
		<immersiveengineering:tool:1>,
		<immersiveengineering:tool>,
		<immersiveengineering:wirecoil:5>,
		<immersiveengineering:wooden_device0:2>,
		<immersiveintelligence:data_connector:8>, //World corruption problems
		<immersiveintelligence:drillhead:*>, //5x5 mining is reserved for the terra shatterer and primal crusher
		<immersiveintelligence:gearbox>,
		<immersiveintelligence:material_dust>,
		<immersiveintelligence:mechanical_connector>,
		<immersiveintelligence:mechanical_device>,
		<immersiveintelligence:mechanical_device1>,
		<immersiveintelligence:metal_decoration:1>,
		<immersiveintelligence:sawblade:1>,
		<immersiveintelligence:sawblade:2>,
		<immersiveintelligence:sawblade>,
		<immersiveintelligence:small_wirecoil>,
		<mekanismgenerators:generator:1>,
		<mekanismgenerators:generator:3>,
		<mekanismgenerators:generator:4>,
		<mekanismgenerators:generator:5>,
		<mekanismgenerators:generator:6>,
		<mekanismgenerators:generator>,
		<mekanismgenerators:solarpanel>,
		<minecraft:anvil>,
		<minecraft:beacon>,
		<minecraft:bucket>,
		<minecraft:cauldron>,
		<minecraft:chest_minecart>,
		<minecraft:compass>,
		<minecraft:crafting_table>,
		<minecraft:detector_rail>,
		<minecraft:diamond_axe>,
		<minecraft:diamond_boots>,
		<minecraft:diamond_chestplate>,
		<minecraft:diamond_helmet>,
		<minecraft:diamond_hoe>,
		<minecraft:diamond_leggings>,
		<minecraft:diamond_pickaxe>,
		<minecraft:diamond_shovel>,
		<minecraft:diamond_sword>,
		<minecraft:enchanting_table>,
		<minecraft:ender_eye>,
		<minecraft:fire_charge>,
		<minecraft:fishing_rod>,
		<minecraft:furnace>,
		<minecraft:glass_bottle>,
		<minecraft:golden_axe>,
		<minecraft:golden_hoe>,
		<minecraft:golden_pickaxe>,
		<minecraft:golden_rail>,
		<minecraft:golden_shovel>,
		<minecraft:golden_sword>,
		<minecraft:hopper>,
		<minecraft:iron_axe>,
		<minecraft:iron_boots>,
		<minecraft:iron_chestplate>,
		<minecraft:iron_helmet>,
		<minecraft:iron_hoe>,
		<minecraft:iron_leggings>,
		<minecraft:iron_pickaxe>,
		<minecraft:iron_shovel>,
		<minecraft:iron_sword>,
		<minecraft:minecart>,
		<minecraft:piston>,
		<minecraft:rail>,
		<minecraft:shield>, // shields are a bit cheap for the 100% protection they give.
		<minecraft:stone_axe>,
		<minecraft:stone_hoe>,
		<minecraft:stone_pickaxe>,
		<minecraft:stone_shovel>,
		<minecraft:stone_sword>,
		<minecraft:tnt_minecart>,
		<minecraft:wooden_axe>,
		<minecraft:wooden_hoe>,
		<minecraft:wooden_pickaxe>,
		<minecraft:wooden_shovel>,
		<minecraft:wooden_sword>,
		<minecraft:wool>,
		<mysticalmechanics:gear_gold_off>,
		<mysticalmechanics:gear_gold_on>,
		<mysticalmechanics:gearbox_frame>,
		<mysticalmechanics:mergebox_frame>,
		<ore:blockBronze>,
		<ore:dustSteel>,
		<ore:dustVoid>,
		<ore:gearBrass>,
		<ore:gearGold>,
		<ore:gearIron>,
		<ore:gearSteel>,
		<ore:nuggetBronze>,
		<ore:plateBronze>,
		<ore:stickIron>,
		<pneumaticcraft:advanced_pcb>,
		<pneumaticcraft:assembly_controller>,
		<pneumaticcraft:assembly_drill>,
		<pneumaticcraft:assembly_io_unit>,
		<pneumaticcraft:assembly_laser>,
		<pneumaticcraft:assembly_platform>,
		<pneumaticcraft:minigun:*>,
		<pneumaticcraft:network_component:3>,
		<pneumaticcraft:network_component:5>,
		<pneumaticcraft:pressure_gauge_module>,
		<pneumaticcraft:printed_circuit_board>,
		<pneumaticcraft:remote>,
		<pneumaticcraft:sentry_turret>,
		<projectred-illumination:cage_lamp:*>,
		<projectred-illumination:fallout_lamp:*>,
		<projectred-illumination:feedback_light_button:*>,
		<projectred-illumination:fixture_light:*>,
		<projectred-illumination:inverted_cage_lamp:*>,
		<projectred-illumination:inverted_fallout_lamp:*>,
		<projectred-illumination:inverted_fixture_light:*>,
		<projectred-illumination:inverted_lantern:*>,
		<projectred-illumination:lamp:*>,
		<projectred-illumination:lantern:*>,
		<projectred-illumination:light_button:*>,
		<projectred-integration:gate:*>,
		<projectred-transmission:wire:*>,
		<quark:gravisand>,
		<quark:paper_wall_big>,
		<quark:paper_wall_sakura>
		<questionablyimmersive:metal_device>,
		<railcraft:boiler_firebox_fluid>,
		<railcraft:boiler_firebox_solid>,
		<railcraft:bore>,
		<railcraft:borehead_bronze>,
		<railcraft:borehead_diamond>,
		<railcraft:borehead_iron>,
		<railcraft:borehead_steel>,
		<railcraft:charge:5>,
		<railcraft:mow_track_layer>,
		<railcraft:mow_track_relayer>,
		<railcraft:mow_track_remover>,
		<railcraft:mow_undercutter>,
		<railcraft:track_kit:*>,
		<railcraft:worldspike:*>,
		<tconstruct:casting:1>,
		<tconstruct:casting>,
		<tconstruct:channel>,
		<tconstruct:fancy_frame:*>,
		<tconstruct:faucet>,
		<tconstruct:materials:14>,
		<tconstruct:materials:18>,
		<tconstruct:seared_glass>,
		<tconstruct:seared_slab:3>,
		<tconstruct:seared_tank:1>,
		<tconstruct:seared_tank:2>,
		<tconstruct:seared_tank>,
		<tconstruct:seared:1>,
		<tconstruct:seared:3>,
		<tconstruct:seared>,
		<tconstruct:smeltery_controller>,
		<tconstruct:smeltery_io>,
		<tconstruct:soil>,
		<tconstruct:stone_torch>,
		<tconstruct:tooltables>,
		<tconstruct:wooden_hopper>,
		<tetra:duplex_tool_modular>,
		<tetra:toolbelt_modular>,
		<tfc:bellows>,
		<tfc:brass_mechanisms>,
		<tfc:ceramics/fired/fire_brick>,
		<tfc:crucible>,
		<tfc:metal/bucket/blue_steel>,
		<tfc:metal/bucket/red_steel>,
		<tfc:metal/sheet/brass>,
		<tfc:powder/flux>,
		<tfc:sluice>,
		<tfctech:latex/vulcanizing_agents>,
		<tfctech:powder/potash>,
		<tfctech:smeltery_cauldron>,
		<tfctech:smeltery_firebox>,
		<thaumcraft:metal_alchemical>,
		<thaumcraft:mind>,
		<thaumcraft:plate:2>,
		<thaumcraft:plate:3>,
		<thaumcraft:thaumium_boots>,
		<thaumcraft:thaumium_chest>,
		<thaumcraft:thaumium_helm>,
		<thaumcraft:thaumium_legs>,
		<thaumcraft:tube_filter>,
		<thaumcraft:tube_oneway>,
		<thaumcraft:tube_restrict>,
		<thaumcraft:tube_valve>,
		<thaumcraft:tube>,
		<thaumcraft:void_boots>,
		<thaumcraft:void_chest>,
		<thaumcraft:void_helm>,
		<thaumcraft:void_legs>,
		<thaumicaugmentation:glass_tube>,
		<thebetweenlands:items_misc:47>,
		<thermaldynamics:duct_16:*>,
		<thermaldynamics:duct_32:*>,
		<thermaldynamics:relay>,
		<thermalfoundation:material:513>,
		<thermalfoundation:material:514>,
		<thermalfoundation:material:515>,
	]{
		recipes.remove(output);
	}

	for name in [
		"minecraft:bowl",
		"minecraft:furnace",
		"minecraft:leather",
		"minecraft:sign",
		"minecraft:stick",
		"minecraft:stone_button",
		"minecraft:stone_pressure_plate",
		"railcraft:dust#7$1",
		"railcraft:locomotive_steam_solid#0$1",
		"railcraft:charge#2$1",
		"railcraft:charge#4$1",

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
	recipes.removeShaped(<betternether:reeds_block>, [[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>], [<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>], [<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]]);
	recipes.removeShaped(<camping:knife>, [[<minecraft:dye:1>, <minecraft:iron_ingot>, <minecraft:dye:1>], [<minecraft:dye:1>, <minecraft:iron_ingot>, <minecraft:dye:1>], [<minecraft:dye:1>, <minecraft:iron_ingot>, <minecraft:dye:1>]]);
	recipes.removeShaped(<ic2:neutron_reflector>, [[<ore:dustTin>, <ore:dustCoal>, <ore:dustTin>],[<ore:dustCoal>, <ore:plateCopper>, <ore:dustCoal>], [<ore:dustTin>, <ore:dustCoal>, <ore:dustTin>]]);
	recipes.removeShaped(<ic2:thick_neutron_reflector>, [[<ore:plateCopper>, <ic2:neutron_reflector>, <ore:plateCopper>],[<ic2:neutron_reflector>, <ore:plateCopper>, <ic2:neutron_reflector>], [<ore:plateCopper>, <ic2:neutron_reflector>, <ore:plateCopper>]]);
	recipes.removeShaped(<ic2:wrench_new>, [[null, <ore:ingotBronze>, null], [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], [<ore:ingotBronze>, null, <ore:ingotBronze>]]);
	recipes.removeShaped(<immersiveengineering:jerrycan>, [[null, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <minecraft:bucket>, <minecraft:bucket>], [<ore:plateIron>, <minecraft:bucket>, <minecraft:bucket>]]);
	recipes.removeShaped(<immersiveengineering:metal_device0:6>, [[<ore:plateIron>, <ore:barsIron>, <ore:plateIron>], [<ore:barsIron>, null, <ore:barsIron>], [<ore:plateIron>, <ore:barsIron>, <ore:plateIron>]]);
	recipes.removeShaped(<immersiveintelligence:mechanical_device>, [[<ore:plateBrass>, <immersiveengineering:material:8>, <ore:plateBrass>], [<ore:stickIron>, <ore:scaffoldingTreatedWood>, <ore:stickIron>], [<ore:plateBrass>, null, <ore:plateBrass>]]);
	recipes.removeShaped(<integrateddynamics:squeezer>, [[<ore:stickWood>, <ore:blockIron>, <ore:stickWood>], [<ore:stickWood>, null, <ore:stickWood>], [<ore:plankWood>, <ore:ingotIron>, <ore:plankWood>]]);
	recipes.removeShaped(<minecraft:chest> * 4, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ore:logWood>, null, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
	recipes.removeShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
	recipes.removeShaped(<minecraft:heavy_weighted_pressure_plate>, [[<ore:ingotIron>, <ore:ingotIron>]]);
	recipes.removeShaped(<minecraft:paper> * 3, [[<betternether:nether_reed>, <betternether:nether_reed>, <betternether:nether_reed>]]);
	recipes.removeShaped(<minecraft:paper> * 3, [[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]]);
	recipes.removeShaped(<minecraft:rotten_flesh> * 9, [[<thaumcraft:flesh_block>]]);
	recipes.removeShaped(<mysticalmechanics:axle_iron> * 8, [[<ore:ingotIron>], [<ore:nuggetWroughtIron>], [<ore:ingotIron>]]);
	recipes.removeShaped(<pneumaticcraft:gas_lift>, [[null, <pneumaticcraft:pressure_tube>, null], [<pneumaticcraft:pressure_tube>, <ore:blockGlass>, <pneumaticcraft:pressure_tube>], [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]]);
	recipes.removeShaped(<quark:candle> * 2, [[<ore:string>], [<ore:tallow>], [<ore:tallow>]]);
	recipes.removeShaped(<quark:chain> * 3, [[<ore:nuggetIron>, <ore:nuggetIron>, null], [<ore:nuggetIron>, <ore:ingotIron>, null], [null, null, <ore:ingotIron>]]);
	recipes.removeShaped(<railcraft:cart_cargo>, [[<minecraft:trapped_chest>], [<minecraft:minecart>]]);
	recipes.removeShaped(<railcraft:tool_spike_maul_iron>, [[<ore:ingotIron>, <ore:blockIron>, <ore:ingotIron>], [null, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);
	recipes.removeShaped(<railcraft:tool_spike_maul_steel>, [[<ore:ingotSteel>, <ore:blockSteel>, <ore:ingotSteel>], [null, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);
	recipes.removeShaped(<tfc:blast_furnace>, [[<ore:sheetDoubleWroughtIron>, <ore:sheetDoubleWroughtIron>, <ore:sheetDoubleWroughtIron>], [<ore:sheetDoubleWroughtIron>, <tfc:crucible>, <ore:sheetDoubleWroughtIron>], [<ore:sheetDoubleWroughtIron>, <ore:sheetDoubleWroughtIron>, <ore:sheetDoubleWroughtIron>]]);
	recipes.removeShaped(<tfc:bloomery>, [[<ore:sheetDoubleAnyBronze>, <ore:sheetDoubleAnyBronze>, <ore:sheetDoubleAnyBronze>], [<ore:sheetDoubleAnyBronze>, null, <ore:sheetDoubleAnyBronze>], [<ore:sheetDoubleAnyBronze>, <ore:sheetDoubleAnyBronze>, <ore:sheetDoubleAnyBronze>]]);
	recipes.removeShaped(<tfc:metal/sheet/brass> * 3, [[<ore:ingotBrass>, <ore:ingotBrass>, <ore:ingotBrass>]]);
	recipes.removeShaped(<tfc:metal/sheet/wrought_iron> * 3, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
	recipes.removeShaped(<tfctech:wire_draw_bench>, [[<tfctech:wiredraw/winch>, <tfctech:wiredraw/leather_belt>, <ore:tongsWroughtIron>], [<ore:sheetWroughtIron>, <ore:sheetWroughtIron>, <ore:sheetWroughtIron>], [<ore:sheetWroughtIron>, null, <ore:sheetWroughtIron>]]);
	recipes.removeShaped(<thaumcraft:baubles:4>, [[null, <ore:string>, null], [<ore:string>, <ore:gemDiamond>, <ore:string>], [null, <ore:ingotGold>, null]]);
	recipes.removeShaped(<thaumcraft:baubles:6>, [[null, <ore:leather>, null], [<ore:leather>, <ore:gemDiamond>, <ore:leather>], [null, <ore:ingotGold>, null]]);
	recipes.removeShaped(<thaumcraft:flesh_block>, [[<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>]]);
	recipes.removeShaped(<thaumcraft:plank_greatwood> * 4, [[<thaumcraft:log_greatwood>]]);
	recipes.removeShaped(<thaumcraft:plank_silverwood> * 4, [[<thaumcraft:log_silverwood>]]);
	recipes.removeShaped(<thaumcraft:plate:1> * 3, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
	recipes.removeShaped(<thaumcraft:plate:2> * 3, [[<ore:ingotThaumium>, <ore:ingotThaumium>, <ore:ingotThaumium>]]);
	recipes.removeShaped(<thaumcraft:plate:3> * 3, [[<ore:ingotVoid>, <ore:ingotVoid>, <ore:ingotVoid>]]);recipes.removeShaped(<minecraft:stone_pressure_plate>, [[<ore:concrete>, <ore:concrete>]]);
	recipes.removeShaped(<thaumcraft:plate> * 3, [[<ore:ingotBrass>, <ore:ingotBrass>, <ore:ingotBrass>]]);
	recipes.removeShaped(<thaumcraft:table_stone>, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>], [<ore:stone>, null, <ore:stone>]]);



	recipes.removeShapeless(<advancedrocketry:thermitetorch> * 4, [<minecraft:stick>, <advancedrocketry:thermite>]);
	recipes.removeShapeless(<betternether:reeds_block>, [<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]);
	recipes.removeShapeless(<minecraft:clay_ball> * 2, [<tfc:ceramics/unfired/mold/ingot>]);
	recipes.removeShapeless(<minecraft:flint_and_steel>, [<ore:ingotIron>, <ore:flint>]);
	recipes.removeShapeless(<minecraft:paper> * 3, [<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]);
	recipes.removeShapeless(<minecraft:rotten_flesh> * 9, [<thaumcraft:flesh_block>]);
	recipes.removeShapeless(<minecraft:stone_pressure_plate>, [<ore:concrete>, <ore:concrete>]);
	recipes.removeShapeless(<minecraft:wheat> * 9, [<minecraft:hay_block>]);
	recipes.removeShapeless(<railcraft:cart_cargo>, [<minecraft:trapped_chest>, <minecraft:minecart>]);
	recipes.removeShapeless(<thaumcraft:plank_greatwood> * 4, [<thaumcraft:log_greatwood>]);
	recipes.removeShapeless(<thaumcraft:plank_silverwood> * 4, [<thaumcraft:log_silverwood>]);
	

	recipes.removeByRegex("^railcraft:gear.*");
	recipes.removeByRegex("^thermalfoundation:material_[6-8][0-9]");
//Done!


//Furnace
	for output in [
		<embers:brick_caminite>,
		<embers:plate_caminite>,
		<ic2:crafting>,
		<immersiveengineering:material:19>,
		<immersiveengineering:metal:0>,
		<immersiveengineering:metal:1>,
		<immersiveengineering:metal:2>,
		<immersiveengineering:metal:3>,
		<immersiveengineering:metal:4>,
		<immersiveengineering:metal:5>,
		<immersiveengineering:metal:6>,
		<immersiveengineering:metal:7>,
		<immersiveengineering:metal:8>,
		<minecraft:coal:1>,
		<projectred-core:resource_item>
	]{
		furnace.remove(output);
	}
//Done!


//Botania
	mods.botania.ManaInfusion.removeRecipe(<botania:manacookie>);
	mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);

	mods.botania.Apothecary.removeRecipe("agricarnation");
	mods.botania.Apothecary.removeRecipe("daffomill");
	mods.botania.Apothecary.removeRecipe("jadedAmaranthus");
	mods.botania.Apothecary.removeRecipe("rannuncarpus");
//Done!


//Blood Magic
	mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:1>);
	mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:2>);
	mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:3>);
	mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate>);
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);

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



//Done! 


//JEI
	for item in [
		<advancedrocketry:concrete>,
		<camping:campfire_cook>,
		<camping:campfire_wood_off>,
		<extrautils2:angelring:*>,
		<ic2:crafting:2>,
		<ic2:cutter>,
		<ic2:forge_hammer>,
		<ic2:te:50>,
		<immersivecables:coil_block:3>,
		<immersivecables:wire_coil:3>,
		<immersiveengineering:metal_device1:13>,
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
		<magneticraft:crushing_table>,
		<magneticraft:iron_hammer>,
		<magneticraft:sluice_box>,
		<magneticraft:steel_hammer>,
		<magneticraft:stone_hammer>,
		<mekanism:filterupgrade>,
		<minecraft:chest_minecart>,
		<minecraft:tnt_minecart>,
		<mystgears:windup_box>,
		<tconstruct:fancy_frame:*>,
		<tfc:metal/bucket/blue_steel>,
		<tfc:metal/bucket/red_steel>,
		<tfctech:latex/vulcanizing_agents>,
		<thermalexpansion:augment:352>,
		<tfc:bellows>,
		<tfc:metal/anvil/copper>,
		<extrautils2:interactionproxy>,
		<railcraft:charge>,
		<railcraft:charge:1>,
		<railcraft:charge:2>,
	]{
		mods.jei.JEI.removeAndHide(item);
	}
//Done!


//Magneticraft
	mods.magneticraft.FluidFuel.removeFuel(<liquid:biodiesel>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:creosote>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:diesel>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:fuel>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:gasoline>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:kerosene>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:natural_gas>);
	mods.magneticraft.FluidFuel.removeFuel(<liquid:wood_gas>);

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

	mods.pneumaticcraft.assembly.removeLaserRecipe(<pneumaticcraft:unassembled_pcb>);
//Done!


//Tcon
	mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared>);
	mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared:1>);
	mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared_glass>);
	mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);



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


	mods.terrafirmacraft.Barrel.removeRecipe(<tfctech:latex/rubber_mix>*6);
	mods.terrafirmacraft.Barrel.removeRecipe(<minecraft:clay_ball>);
	mods.terrafirmacraft.Barrel.removeRecipe(<liquid:olive_oil_water>);


	mods.immersiveengineering.Squeezer.removeFluidRecipe(<liquid:plantoil>);

	mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/rod/gold>);
	mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/rod/steel>);
	mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/rod/wrought_iron>);
	mods.terrafirmacraft.Anvil.removeRecipe(<firmalife:spout>);
	mods.terrafirmacraft.Welding.removeRecipe(<tfc:metal/double_ingot/bismuth_bronze>);
	mods.terrafirmacraft.Welding.removeRecipe(<tfc:metal/double_ingot/bronze>);
	mods.terrafirmacraft.Welding.removeRecipe(<tfc:metal/double_ingot/black_bronze>);

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


/* 
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
*/
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
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:pattern_crafter>);
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<mystgears:crafter_mechanical>);


//Done!

