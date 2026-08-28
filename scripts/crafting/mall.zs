#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import mods.immersiveengineering.Blueprint;
import mods.chisel.Carving;


// Facilitate creation of a "Mall" like in factorio where all your essentials (conveyors, machines, redstone stuff) can be passive-produced
//This means that some intermediate products will be replaced or cut so automation of this equipment is easier.

//Chisel Groups
    function addChiselGroup(group as string, items as IItemStack[]){
        for item in items {
            Carving.addVariationAndGroup(group, item);
        }
    }

    function addChiselGroupDef(group as string, items as IItemDefinition[]){
        for item in items {
            for stack in item.subItems {
                Carving.addVariationAndGroup(group, stack);
            }
        }
    }


    addChiselGroup("prCircuits", [
        <immersiveengineering:connector:12>,
        <immersiveengineering:connector:13>,
        <thermaldynamics:relay>,
        <extrautils2:redstonelantern>,
        <extrautils2:redstoneclock>
    ]);
    addChiselGroupDef("prCircuits", [<projectred-integration:gate>.definition]);

    addChiselGroup("prWires", [<immersiveengineering:wirecoil:5>, <immersiveintelligence:small_wirecoil>]);
    addChiselGroupDef("prWires", [<projectred-transmission:wire>.definition, <projectred-transmission:framed_wire>.definition]);

    addChiselGroup("prLamps", [<minecraft:redstone_lamp>]);
    addChiselGroupDef("prLamps", [
        <projectred-illumination:lamp>.definition,
        <projectred-illumination:light_button>.definition,
        <projectred-illumination:feedback_light_button>.definition,
        <projectred-illumination:lantern>.definition,
        <projectred-illumination:inverted_lantern>.definition,
        <projectred-illumination:fixture_light>.definition,
        <projectred-illumination:inverted_fixture_light>.definition,
        <projectred-illumination:fallout_lamp>.definition,
        <projectred-illumination:inverted_fallout_lamp>.definition,
        <projectred-illumination:cage_lamp>.definition,
        <projectred-illumination:inverted_cage_lamp>.definition
    ]);

    addChiselGroupDef("ieConveyors", [<immersiveengineering:conveyor>.definition]);

    addChiselGroup("basicCorporea", [<botania:corporeaspark>,<botania:corporeaspark:1>,<botania:corporeaindex>,<botania:corporeainterceptor>]);

    addChiselGroup("signals", [<signals:block_signal>,<signals:chain_signal>,<signals:station_marker>,<signals:rail_link>,<signals:ticket>]);

    addChiselGroupDef("track_kits", [<railcraft:track_kit>.definition]);

    addChiselGroup("e_tubes", [
        <thaumcraft:tube>,
        <thaumcraft:tube_valve>,
        <thaumcraft:tube_oneway>,
        <thaumcraft:tube_restrict>,
        <thaumcraft:tube_filter>,
        <thaumicaugmentation:glass_tube>
    ]);

    addChiselGroup("emberadv", [<embers:reactor>,<embers:combustor>,<embers:catalyzer>,<embers:ember_injector>,<embers:inferno_forge>,<embers:stirling>]);

    addChiselGroup("gearboxes", [
        <mysticalmechanics:gearbox_frame>, 
        <mysticalmechanics:mergebox_frame>,
        <immersiveintelligence:gearbox>,
        <immersiveintelligence:mechanical_device>,
        <immersiveintelligence:mechanical_connector>
    ]);

    addChiselGroup("gauges",  [
        <tfc:brass_mechanisms>,
        <embers:ember_gauge>, 
        <embers:fluid_gauge>,
        <embers:item_gauge>,
        <mystgears:mechanical_dial>,
        <embers:clockwork_attenuator>,
        <pneumaticcraft:pressure_gauge_module>,
        <questionablyimmersive:metal_device>
    ]);

    addChiselGroup("fluidlogistics", [<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16>,<embers:pump>,<embers:fluid_transfer>, <firmalife:sprinkler>]);

    addChiselGroup("fluidlogisticssimple", [<tfc:ceramics/fired/fire_brick>,<tconstruct:faucet>,<tconstruct:channel>,<firmalife:spout>]);

    addChiselGroup("casting", [<tfc:crucible>, <tconstruct:casting>,<tconstruct:casting:1>]);

    addChiselGroup("mechStuff", [
        <immersiveengineering:metal_decoration0:4>, 
        <embers:mech_core>,
        <mystgears:drill>,
        <modularmachinery:burnerdrill_t1_controller>,
        <modularmachinery:blockcasing:2>,
        <modularmachinery:blockcasing:4>, 
        <modularmachinery:blockinputbus:1>,
        <modularmachinery:blockoutputbus:1>,
        <modularmachinery:blockfluidinputhatch:2>,
        <modularmachinery:blockfluidoutputhatch:2>
    ]);

    addChiselGroup("alchStuff", [
        <thaumcraft:metal_alchemical>, 
        <modularmachinery:blockaspectproviderinput>,
        <modularmachinery:blockaspectprovideroutput>
    ]);

    addChiselGroup("clockwork", [
        <thaumcraft:mind>,
        <mysticalmechanics:gear_gold_off>,
        <mysticalmechanics:gear_gold_on>,
        <rustichromia:mech_torch>,
        <rustichromia:mech_torch_toggle>
    ]);

    addChiselGroup("lamiDucts", [<thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:7>]);
    addChiselGroupDef("lamiDucts", [<railcraft:glass>.definition]);


    for stone in rocktypes
    {
        addChiselGroup("smooth"+stone, [
            itemUtils.getItem("tfc:raw/"+stone), 
            itemUtils.getItem("tfc:smooth/"+stone)
        ]);
    }

    addChiselGroup("seared_block", [
        <tfc:fire_bricks>,
        <tconstruct:seared_ladder>,
        <tconstruct:seared_tank>,
        <tconstruct:seared_tank:1>,
        <tconstruct:seared_tank:2>,
        <tconstruct:smeltery_io>,
        <tconstruct:tinker_tank_controller>,
        <tconstruct:seared_furnace_controller>
    ]);

    addChiselGroup("paperwall", [<quark:paper_wall>, <quark:paper_wall_big>, <quark:paper_wall_sakura>]);

    addChiselGroupDef("bthorns", [<botania:grasshorn>.definition]);




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






