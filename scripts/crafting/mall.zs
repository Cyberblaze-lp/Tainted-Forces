import crafttweaker.item.IItemStack;

// Facilitate creation of a "Mall" like in factorio where all your essentials (conveyors, machines, redstone stuff) can be passive-produced
//This means that some intermediate products will be replaced or cut so automation of this equipment is easier.



<ore:stone>.add(<immersiveengineering:stone_decoration:5>);



mods.chisel.Carving.addGroup("prCircuits");
val circuits as IItemStack[] =[<immersiveengineering:connector:12>,<immersiveengineering:connector:13>,<thermaldynamics:relay>,<extrautils2:redstonelantern>,<extrautils2:redstoneclock>];
for item in circuits
{
mods.chisel.Carving.addVariation("prCircuits", item);
recipes.remove(item);

}


for i in 0 to 34
{

    mods.chisel.Carving.addVariation("prCircuits", <projectred-integration:gate>.definition.makeStack(i));
    recipes.remove(<projectred-integration:gate>.definition.makeStack(i));
}

mods.chisel.Carving.addGroup("prWires");
mods.chisel.Carving.addVariation("prWires", <immersiveengineering:wirecoil:5>);
recipes.remove( <immersiveengineering:wirecoil:5>);
mods.chisel.Carving.addVariation("prWires", <immersiveengineering:wirecoil:5>);
recipes.remove( <immersiveintelligence:small_wirecoil>);


for i in 0 to 34
{
    
   
 
    mods.chisel.Carving.addVariation("prWires",<projectred-transmission:wire>.definition.makeStack(i));
    recipes.remove(<projectred-transmission:wire>.definition.makeStack(i));
}
for i in 0 to 18
{
    mods.chisel.Carving.addVariation("prWires", <projectred-transmission:framed_wire>.definition.makeStack(i));
    recipes.remove( <projectred-transmission:framed_wire>.definition.makeStack(i));
    
}
mods.chisel.Carving.addGroup("prLamps");
mods.chisel.Carving.addVariation("prLamps",<minecraft:redstone_lamp>);
for i in 0 to 32
{
    
   
 
    mods.chisel.Carving.addVariation("prLamps",<projectred-illumination:lamp>.definition.makeStack(i));
    recipes.remove(<projectred-transmission:wire>.definition.makeStack(i));

}

val lamps as IItemStack[]= [<projectred-illumination:light_button>,<projectred-illumination:feedback_light_button>,<projectred-illumination:lantern>,<projectred-illumination:inverted_lantern>,<projectred-illumination:fixture_light>,<projectred-illumination:inverted_fixture_light>,<projectred-illumination:fallout_lamp>,<projectred-illumination:inverted_fallout_lamp>,<projectred-illumination:cage_lamp>,<projectred-illumination:inverted_cage_lamp>];
for i in 0 to 16
{
    
    for item in lamps
    {
        mods.chisel.Carving.addVariation("prLamps",item.definition.makeStack(i));
        recipes.remove(item.definition.makeStack(i));
    }
}
furnace.remove(<projectred-core:resource_item>);


mods.chisel.Carving.addGroup("ieConveyors");
val belts as IItemStack[] =[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"})];
for item in belts
{
    mods.chisel.Carving.addVariation("ieConveyors", item);
    recipes.remove(item);

}


mods.chisel.Carving.addGroup("basicCorporea");
val corporea as IItemStack[] =[<botania:corporeaspark>,<botania:corporeaspark:1>,<botania:corporeaindex>,<botania:corporeainterceptor>];
for item in corporea
{
    mods.chisel.Carving.addVariation("basicCorporea", item);
    recipes.remove(item);

}




