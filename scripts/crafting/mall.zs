import crafttweaker.item.IItemStack;

// Facilitate creation of a "Mall" like in factorio where all your essentials (conveyors, machines, redstone stuff) can be passive-produced
//This means that some intermediate products will be replaced or cut so automation of this equipment is easier.


mods.chisel.Carving.addGroup("prCircuits");
val circuits as IItemStack[] =[<immersiveengineering:connector:12>,<immersiveengineering:connector:13>,<thermaldynamics:relay>,<extrautils2:redstonelantern>,<extrautils2:redstoneclock>];
for item in circuits
{
    mods.chisel.Carving.addVariation("prCircuits", item);
}

for gate in <projectred-integration:gate>.definition.subItems {
    mods.chisel.Carving.addVariation("prCircuits", gate);
}


mods.chisel.Carving.addGroup("prWires");
mods.chisel.Carving.addVariation("prWires", <immersiveengineering:wirecoil:5>);
mods.chisel.Carving.addVariation("prWires", <immersiveintelligence:small_wirecoil>);

for wire in <projectred-transmission:wire>.definition.subItems {
    mods.chisel.Carving.addVariation("prWires", wire);
}
for wire in <projectred-transmission:framed_wire>.definition.subItems {
    mods.chisel.Carving.addVariation("prWires", wire);
}


mods.chisel.Carving.addGroup("prLamps");
mods.chisel.Carving.addVariation("prLamps",<minecraft:redstone_lamp>);
for lamp in <projectred-illumination:lamp>.definition.subItems {
    mods.chisel.Carving.addVariation("prLamps", lamp);
}

val lamps as IItemStack[]= [<projectred-illumination:light_button>,<projectred-illumination:feedback_light_button>,<projectred-illumination:lantern>,<projectred-illumination:inverted_lantern>,<projectred-illumination:fixture_light>,<projectred-illumination:inverted_fixture_light>,<projectred-illumination:fallout_lamp>,<projectred-illumination:inverted_fallout_lamp>,<projectred-illumination:cage_lamp>,<projectred-illumination:inverted_cage_lamp>];
for i in 0 to 16
{
    for item in lamps
    {
        mods.chisel.Carving.addVariation("prLamps",item.definition.makeStack(i));
    }
}


mods.chisel.Carving.addGroup("ieConveyors");
val belts as IItemStack[] = [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"})];
for item in belts
{
    mods.chisel.Carving.addVariation("ieConveyors", item);
}


mods.chisel.Carving.addGroup("basicCorporea");
val corporea as IItemStack[] =[<botania:corporeaspark>,<botania:corporeaspark:1>,<botania:corporeaindex>,<botania:corporeainterceptor>];
for item in corporea
{
    mods.chisel.Carving.addVariation("basicCorporea", item);
}

mods.chisel.Carving.addGroup("signals");
val signals as IItemStack[] =[<signals:block_signal>,<signals:chain_signal>,<signals:station_marker>,<signals:rail_link>,<signals:ticket>];
for item in signals
{
    mods.chisel.Carving.addVariation("signals", item);
}

mods.chisel.Carving.addGroup("track_kits");
for item in <railcraft:track_kit>.definition.subItems{

    mods.chisel.Carving.addVariation("track_kits", item);
}

mods.chisel.Carving.addGroup("e_tubes");
val e_tubes as IItemStack[] =[<thaumcraft:tube>,<thaumcraft:tube_valve>,<thaumcraft:tube_oneway>,<thaumcraft:tube_restrict>,<thaumcraft:tube_filter>,<thaumicaugmentation:glass_tube>];
for item in e_tubes
{
    mods.chisel.Carving.addVariation("e_tubes", item);
}

mods.chisel.Carving.addGroup("emberadv");
val emberadv as IItemStack[] =[<embers:reactor>,<embers:combustor>,<embers:catalyzer>,<embers:ember_injector>,<embers:inferno_forge>,<embers:stirling>];
for item in emberadv
{
    mods.chisel.Carving.addVariation("emberadv", item);
}


mods.chisel.Carving.addGroup("gearboxes");
val gearboxes as IItemStack[] =[<mysticalmechanics:gearbox_frame>, <mysticalmechanics:mergebox_frame>,<immersiveintelligence:gearbox>,<immersiveintelligence:mechanical_device>,<immersiveintelligence:mechanical_connector>];
for item in gearboxes
{
    mods.chisel.Carving.addVariation("gearboxes", item);
}

mods.chisel.Carving.addGroup("gauges");
val gauges as IItemStack[] =[<tfc:brass_mechanisms>, <embers:ember_gauge>,<embers:fluid_gauge>,<embers:item_gauge>,<mystgears:mechanical_dial>,<embers:clockwork_attenuator>,<pneumaticcraft:pressure_gauge_module>,<questionablyimmersive:metal_device>];
for item in gauges
{
    mods.chisel.Carving.addVariation("gauges", item);
}

mods.chisel.Carving.addGroup("fluidlogistics");
val fluidlogi as IItemStack[] =[<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16>,<embers:pump>,<embers:fluid_transfer>, <firmalife:sprinkler>];
for item in fluidlogi
{
    mods.chisel.Carving.addVariation("fluidlogistics", item);
}

mods.chisel.Carving.addGroup("fluidlogisticssimple");
val fluidlogisimple as IItemStack[] =[<tfc:ceramics/fired/fire_brick>,<tconstruct:faucet>,<tconstruct:channel>,<firmalife:spout>];
for item in fluidlogisimple
{
    mods.chisel.Carving.addVariation("fluidlogisticssimple", item);
}

mods.chisel.Carving.addGroup("casting");
val casting as IItemStack[] =[<tfc:crucible>, <tconstruct:casting>,<tconstruct:casting:1>];
for item in casting
{
    mods.chisel.Carving.addVariation("casting", item);
}


mods.chisel.Carving.addGroup("mechStuff");
val mechStuff as IItemStack[] =[<immersiveengineering:metal_decoration0:4>, <embers:mech_core>,<mystgears:drill>,<modularmachinery:burnerdrill_t1_controller>,<modularmachinery:blockcasing:2>,<modularmachinery:blockcasing:4>, <modularmachinery:blockinputbus:1>,<modularmachinery:blockoutputbus:1>,<modularmachinery:blockfluidinputhatch:2>,<modularmachinery:blockfluidoutputhatch:2>];
for item in mechStuff
{
    mods.chisel.Carving.addVariation("mechStuff", item);
}

mods.chisel.Carving.addGroup("alchStuff");
val alchStuff as IItemStack[] =[<thaumcraft:metal_alchemical>, <modularmachinery:blockaspectproviderinput>,<modularmachinery:blockaspectprovideroutput>];
for item in alchStuff
{
    mods.chisel.Carving.addVariation("alchStuff", item);
}

mods.chisel.Carving.addGroup("clockwork");
val clockwork as IItemStack[] =[<thaumcraft:mind>,<mysticalmechanics:gear_gold_off>,<mysticalmechanics:gear_gold_on>,<rustichromia:mech_torch>,<rustichromia:mech_torch_toggle>];
for item in clockwork
{
    mods.chisel.Carving.addVariation("clockwork", item);
}

mods.chisel.Carving.addGroup("lamiDucts");
mods.chisel.Carving.addVariation("lamiDucts", <thermaldynamics:duct_16:6>);
mods.chisel.Carving.addVariation("lamiDucts", <thermaldynamics:duct_16:7>);

mods.chisel.Carving.addGroup("strongGlass");

for i in 0 to 16
{
    mods.chisel.Carving.addVariation("lamiDucts", <railcraft:glass>.definition.makeStack(i));

}










