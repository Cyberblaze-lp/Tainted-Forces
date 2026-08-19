import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Blueprint;
import mods.chisel.Carving;


// Facilitate creation of a "Mall" like in factorio where all your essentials (conveyors, machines, redstone stuff) can be passive-produced
//This means that some intermediate products will be replaced or cut so automation of this equipment is easier.

//Chisel Groups

    Carving.addGroup("prCircuits");
    val circuits as IItemStack[] =[<immersiveengineering:connector:12>,<immersiveengineering:connector:13>,<thermaldynamics:relay>,<extrautils2:redstonelantern>,<extrautils2:redstoneclock>];
    for item in circuits
    {
        Carving.addVariation("prCircuits", item);
    }

    for gate in <projectred-integration:gate>.definition.subItems {
        Carving.addVariation("prCircuits", gate);
    }


    Carving.addGroup("prWires");
    Carving.addVariation("prWires", <immersiveengineering:wirecoil:5>);
    Carving.addVariation("prWires", <immersiveintelligence:small_wirecoil>);

    for wire in <projectred-transmission:wire>.definition.subItems {
        Carving.addVariation("prWires", wire);
    }
    for wire in <projectred-transmission:framed_wire>.definition.subItems {
        Carving.addVariation("prWires", wire);
    }


    Carving.addGroup("prLamps");
    Carving.addVariation("prLamps",<minecraft:redstone_lamp>);
    for lamp in <projectred-illumination:lamp>.definition.subItems {
        Carving.addVariation("prLamps", lamp);
    }

    val lamps as IItemStack[]= [<projectred-illumination:light_button>,<projectred-illumination:feedback_light_button>,<projectred-illumination:lantern>,<projectred-illumination:inverted_lantern>,<projectred-illumination:fixture_light>,<projectred-illumination:inverted_fixture_light>,<projectred-illumination:fallout_lamp>,<projectred-illumination:inverted_fallout_lamp>,<projectred-illumination:cage_lamp>,<projectred-illumination:inverted_cage_lamp>];
    for i in 0 to 16
    {
        for item in lamps
        {
            Carving.addVariation("prLamps",item.definition.makeStack(i));
        }
    }


    Carving.addGroup("ieConveyors");
    val belts as IItemStack[] = [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"})];
    for item in belts
    {
        Carving.addVariation("ieConveyors", item);
    }


    Carving.addGroup("basicCorporea");
    val corporea as IItemStack[] =[<botania:corporeaspark>,<botania:corporeaspark:1>,<botania:corporeaindex>,<botania:corporeainterceptor>];
    for item in corporea
    {
        Carving.addVariation("basicCorporea", item);
    }

    Carving.addGroup("signals");
    val signals as IItemStack[] =[<signals:block_signal>,<signals:chain_signal>,<signals:station_marker>,<signals:rail_link>,<signals:ticket>];
    for item in signals
    {
        Carving.addVariation("signals", item);
    }

    Carving.addGroup("track_kits");
    for item in <railcraft:track_kit>.definition.subItems{

        Carving.addVariation("track_kits", item);
    }

    Carving.addGroup("e_tubes");
    val e_tubes as IItemStack[] =[<thaumcraft:tube>,<thaumcraft:tube_valve>,<thaumcraft:tube_oneway>,<thaumcraft:tube_restrict>,<thaumcraft:tube_filter>,<thaumicaugmentation:glass_tube>];
    for item in e_tubes
    {
        Carving.addVariation("e_tubes", item);
    }

    Carving.addGroup("emberadv");
    val emberadv as IItemStack[] =[<embers:reactor>,<embers:combustor>,<embers:catalyzer>,<embers:ember_injector>,<embers:inferno_forge>,<embers:stirling>];
    for item in emberadv
    {
        Carving.addVariation("emberadv", item);
    }


    Carving.addGroup("gearboxes");
    val gearboxes as IItemStack[] =[<mysticalmechanics:gearbox_frame>, <mysticalmechanics:mergebox_frame>,<immersiveintelligence:gearbox>,<immersiveintelligence:mechanical_device>,<immersiveintelligence:mechanical_connector>];
    for item in gearboxes
    {
        Carving.addVariation("gearboxes", item);
    }

    Carving.addGroup("gauges");
    val gauges as IItemStack[] =[<tfc:brass_mechanisms>, <embers:ember_gauge>,<embers:fluid_gauge>,<embers:item_gauge>,<mystgears:mechanical_dial>,<embers:clockwork_attenuator>,<pneumaticcraft:pressure_gauge_module>,<questionablyimmersive:metal_device>];
    for item in gauges
    {
        Carving.addVariation("gauges", item);
    }

    Carving.addGroup("fluidlogistics");
    val fluidlogi as IItemStack[] =[<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16>,<embers:pump>,<embers:fluid_transfer>, <firmalife:sprinkler>];
    for item in fluidlogi
    {
        Carving.addVariation("fluidlogistics", item);
    }

    Carving.addGroup("fluidlogisticssimple");
    val fluidlogisimple as IItemStack[] =[<tfc:ceramics/fired/fire_brick>,<tconstruct:faucet>,<tconstruct:channel>,<firmalife:spout>];
    for item in fluidlogisimple
    {
        Carving.addVariation("fluidlogisticssimple", item);
    }

    Carving.addGroup("casting");
    val casting as IItemStack[] =[<tfc:crucible>, <tconstruct:casting>,<tconstruct:casting:1>];
    for item in casting
    {
        Carving.addVariation("casting", item);
    }


    Carving.addGroup("mechStuff");
    val mechStuff as IItemStack[] =[<immersiveengineering:metal_decoration0:4>, <embers:mech_core>,<mystgears:drill>,<modularmachinery:burnerdrill_t1_controller>,<modularmachinery:blockcasing:2>,<modularmachinery:blockcasing:4>, <modularmachinery:blockinputbus:1>,<modularmachinery:blockoutputbus:1>,<modularmachinery:blockfluidinputhatch:2>,<modularmachinery:blockfluidoutputhatch:2>];
    for item in mechStuff
    {
        Carving.addVariation("mechStuff", item);
    }

    Carving.addGroup("alchStuff");
    val alchStuff as IItemStack[] =[<thaumcraft:metal_alchemical>, <modularmachinery:blockaspectproviderinput>,<modularmachinery:blockaspectprovideroutput>];
    for item in alchStuff
    {
        Carving.addVariation("alchStuff", item);
    }

    Carving.addGroup("clockwork");
    val clockwork as IItemStack[] =[<thaumcraft:mind>,<mysticalmechanics:gear_gold_off>,<mysticalmechanics:gear_gold_on>,<rustichromia:mech_torch>,<rustichromia:mech_torch_toggle>];
    for item in clockwork
    {
        Carving.addVariation("clockwork", item);
    }

    Carving.addGroup("lamiDucts");
    Carving.addVariation("lamiDucts", <thermaldynamics:duct_16:6>);
    Carving.addVariation("lamiDucts", <thermaldynamics:duct_16:7>);

    Carving.addGroup("strongGlass");

    for i in 0 to 16
    {
        Carving.addVariation("lamiDucts", <railcraft:glass>.definition.makeStack(i));

    }

    for stone in rocktypes
    {
        Carving.addGroup("smooth"+stone);
        Carving.addVariation("smooth"+stone, itemUtils.getItem("tfc:raw/"+stone) );
        Carving.addVariation("smooth"+stone, itemUtils.getItem("tfc:smooth/"+stone) );
    }


    val seared as IItemStack[] =[<tfc:fire_bricks>,<tconstruct:seared_ladder>,<tconstruct:seared_tank>,<tconstruct:seared_tank:1>,<tconstruct:seared_tank:2>,<tconstruct:smeltery_io>,<tconstruct:tinker_tank_controller>,<tconstruct:seared_furnace_controller>];
    for item in seared
    {
        Carving.addVariation("seared_block", item);
    }

    Carving.addGroup("paperwall");
    Carving.addVariation("paperwall", <quark:paper_wall>);
    Carving.addVariation("paperwall", <quark:paper_wall_big>);
    Carving.addVariation("paperwall", <quark:paper_wall_sakura>);

    Carving.addGroup("bthorns");
    Carving.addVariation("bthorns", <botania:grasshorn>);
    Carving.addVariation("bthorns", <botania:grasshorn:1>);
    Carving.addVariation("bthorns", <botania:grasshorn:2>);



//Engineers Workbench

    Blueprint.addRecipe("Equipment", <thaumcraft:caster_basic>, [<thaumcraft:focus_1>*3, <ore:ingotIron>*5, <ore:leather>*5]);
    Blueprint.addRecipe("Equipment", <pneumaticcraft:minigun:30000>, [<ore:stickIron>*16, <ore:plateSteel>*10, <embers:blasting_core>*5]);
    Blueprint.addRecipe("Equipment", <pneumaticcraft:sentry_turret>, [<ore:stickIron>*16, <ore:plateSteel>*10, <embers:blasting_core>*5]);
    Blueprint.addRecipe("Equipment", <immersiveengineering:drill>, [<thaumcraft:mechanism_simple>*5, <ore:plateIron>*10, <embers:blasting_core>*2]);
    Blueprint.addRecipe("Equipment", <immersiveengineering:chemthrower>, [<thaumcraft:mechanism_simple>*5,<ore:plateIron>*5, <ore:plateLead>*10]);


    Blueprint.addRecipe("Simple Redstone Components", <minecraft:repeater>, [<ore:dustRedstone>*2,<ore:rock>*2]);
    Blueprint.addRecipe("Simple Redstone Components", <minecraft:comparator>, [<ore:dustRedstone>*3,<ore:rock>*2]);
    Blueprint.addRecipe("Simple Redstone Components", <minecraft:redstone_torch>, [<ore:dustRedstone>]);
    Blueprint.addRecipe("Simple Redstone Components", <minecraft:dropper>, [<ore:dustRedstone>,<ore:rock>*10]);
    Blueprint.addRecipe("Simple Redstone Components", <minecraft:dispenser>, [<ore:dustRedstone>,<ore:rock>*10, <ore:string>*2]);
    Blueprint.addRecipe("Simple Redstone Components", <minecraft:observer>, [<ore:dustRedstone>*10,<ore:rock>*10]);
    Blueprint.addRecipe("Simple Redstone Components", <minecraft:piston>, [<ore:dustRedstone>,<ore:rock>*10, <ore:ingotCopper>]);
    Blueprint.addRecipe("Simple Redstone Components", <tconstruct:wooden_hopper>, [<ore:stickWood>*10]);
    Blueprint.addRecipe("Simple Redstone Components", <tconstruct:wooden_hopper>, [<ore:lumber>*3]);






