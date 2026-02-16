import mods.embers.Stamper;
import mods.embers.HeatCoil;
import mods.embers.Alchemy;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.embers.Mixer;
import mods.thaumcraft.Infusion;
import mods.immersivetechnology.GasTurbine;
import mods.immersivetechnology.SteamTurbine;
import mods.embers.Melter;
import mods.thermalexpansion.CompressionDynamo;
import mods.thermalexpansion.Refinery;
import mods.magneticraft.FluidFuel;
import mods.embers.EmberGeneration;
recipes.remove(<embers:tinker_hammer>);
recipes.remove(<embers:ember_bore>);
recipes.remove(<embers:heat_coil>);
recipes.remove(<embers:stamper>);
recipes.remove(<embers:auto_hammer>);
recipes.remove(<embers:stamper_base>);
recipes.remove(<embers:dawnstone_anvil>);
recipes.remove(<embers:mechanical_pump>);
recipes.remove(<embers:ember_activator>);
<embers:mechanical_pump>.addTooltip(format.red("sorry, but this one has a mild chance of corrupting your world. use II's mechanical pump instead"));


recipes.addShaped(<embers:auto_hammer>, [[<minecraft:nether_brick>, null, <tfc:metal/hammer_head/wrought_iron>], [<ore:ingotDoubleCopper>, <ore:rodWroughtIron>, null], [<minecraft:nether_brick>, <tfc:brass_mechanisms>, null]]);
recipes.addShaped(<embers:dawnstone_anvil>, [[<ore:plateDawnstone>, <ore:plateDawnstone>, <ore:plateDawnstone>], [<ore:plateDawnstone>, <ore:anvil>, <ore:plateDawnstone>], [null, <minecraft:nether_brick>, null]]);


mods.embers.Mixer.add(<liquid:lubricant>*2, [<liquid:creosote>*50, <liquid:olive_oil>]);
mods.embers.Mixer.add(<liquid:uranium>, [<liquid:thorium>*2,<liquid:liquid_death>*5]);


//energy generation rebalancing
mods.immersivetechnology.SteamTurbine.removeFuel(<liquid:steam>);
mods.immersivetechnology.SteamTurbine.addFuel(<liquid:exhauststeam>*400, <liquid:steam> * 400, 1);



mods.immersivetechnology.GasTurbine.removeFuel(<liquid:gasoline>);
mods.immersivetechnology.GasTurbine.removeFuel(<liquid:biodiesel>);
mods.immersivetechnology.GasTurbine.removeFuel(<liquid:diesel>);
mods.immersivetechnology.GasTurbine.removeFuel(<liquid:kerosene>);



GasTurbine.addFuel(null, <liquid:shallowbreath> * 10,15 );



mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:fuel>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:creosote>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:crude_oil>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:oil>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:kerosene>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:lpg>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:coal>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:naphtha>);
Refinery.removeRecipe(<liquid:refined_oil>);
Refinery.removeRecipe(<liquid:biocrude>);

Refinery.removeRecipe(<liquid:crude_oil>);
Refinery.removeRecipe(<liquid:coal>);

// for some stupid reason modular diversity doesn't wanna work with me here. will replace it with fitting refinery recipes
/*
val reci = mods.modularmachinery.RecipeBuilder.newBuilder("diesel", "catalyzer", 3, 0);


reci.addFluidInput(<fluid:diesel>*30);
reci.addFluidOutput(<fluid:refined_fuel>*20);
reci.addAuraOutput(0.0,0.2);
reci.build();

val recia = mods.modularmachinery.RecipeBuilder.newBuilder("kerosene", "catalyzer", 3, 0);


recia.addFluidInput(<fluid:kerosene>*30);
recia.addFluidOutput(<fluid:refined_fuel>*30);
reci.addAuraOutput(0.0,0.2);
recia.build();
recia.setPerTick(true);
val recib= mods.modularmachinery.RecipeBuilder.newBuilder("gasolinepneuma", "catalyzer", 3, 0);


recib.addFluidInput(<fluid:fuel>*15);
recib.addFluidOutput(<fluid:refined_fuel>*20);
reci.addAuraOutput(0.0,0.2);
recib.build();

val recic = mods.modularmachinery.RecipeBuilder.newBuilder("gasolineip", "catalyzer", 3, 0);


recic.addFluidInput(<fluid:gasoline>*25);
recic.addFluidOutput(<fluid:refined_fuel>*20);
reci.addAuraOutput(0.0,0.2);
recic.build();

val recid = mods.modularmachinery.RecipeBuilder.newBuilder("lpg", "catalyzer", 3, 0);


recid.addFluidInput(<fluid:lpg>*30);
recid.addFluidOutput(<fluid:refined_fuel>*50);
reci.addAuraOutput(0.0,0.2);
recid.build();

val reciea = mods.modularmachinery.RecipeBuilder.newBuilder("naphthaTE", "catalyzer", 3, 0);


reciea.addFluidInput(<fluid:refined_oil>*30);
reciea.addFluidOutput(<fluid:refined_fuel>*20);
reciea.addAuraOutput(0.0,0.2);
reciea.build();

val recie = mods.modularmachinery.RecipeBuilder.newBuilder("naphtha", "catalyzer", 3, 0);


recie.addFluidInput(<fluid:naphtha>*30);
recie.addFluidOutput(<fluid:refined_fuel>*20);
recie.addAuraOutput(0.0,0.2);
recie.build();

val recif = mods.modularmachinery.RecipeBuilder.newBuilder("biodiesel", "catalyzer", 3, 0);


recif.addFluidInput(<fluid:biodiesel>*32);
recif.addFluidOutput(<fluid:refined_biofuel>*20);
recif.addAuraOutput(0.0,0.1);
recif.build();

val recig = mods.modularmachinery.RecipeBuilder.newBuilder("treeoil", "catalyzer", 3, 0);


recig.addFluidInput(<fluid:tree_oil>*40);
recig.addFluidOutput(<fluid:refined_biofuel>*20);
recif.addAuraOutput(0.0,0.1);
recig.build();

val recih = mods.modularmachinery.RecipeBuilder.newBuilder("creosote", "catalyzer", 3, 0);


recih.addFluidInput(<fluid:creosote>*200);
recih.addFluidOutput(<fluid:refined_biofuel>*10);
recif.addAuraOutput(0.0,0.1);
recih.build();

val recii = mods.modularmachinery.RecipeBuilder.newBuilder("biocrude", "catalyzer", 3, 0);


recii.addFluidInput(<fluid:biocrude>*40);
recii.addFluidOutput(<fluid:refined_biofuel>*20);
recif.addAuraOutput(0.0,0.1);
recii.build();

val recij = mods.modularmachinery.RecipeBuilder.newBuilder("biogas", "catalyzer", 3, 0);


recij.addFluidInput(<fluid:ic2biogas>*160);
recij.addFluidOutput(<fluid:refined_biofuel>*20);
recif.addAuraOutput(0.0,0.1);
recij.build();


*/

//standard fossil fuel for comparing others to kinda high pollution rate
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:diesel>*30, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:diesel>*30, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:diesel>*30, <fluid:shallowbreath>*5, 1024);
//1:1 efficiency, 1.5x less pollution
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*30, <fluid:kerosene>*30, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*30, <fluid:kerosene>*30, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*30, <fluid:kerosene>*30, <fluid:shallowbreath>*5, 1024);
//slightly higher petroleum efficiency
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:gasoline>*25, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:gasoline>*25, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:gasoline>*25, <fluid:shallowbreath>*5, 1024);
//much higher petroleum efficiency
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:fuel>*15, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:fuel>*15, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:fuel>*15, <fluid:shallowbreath>*5, 1024);
//much higher petroleum efficiency, 1.25x less pollution
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*25, <fluid:lpg>*15, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*25, <fluid:lpg>*15, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*25, <fluid:lpg>*15, <fluid:shallowbreath>*5, 1024);
//same as diesel. can be gotten in a 1:1 ratio from oil if desired
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:refined_oil>*30, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:refined_oil>*30, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:refined_oil>*30, <fluid:shallowbreath>*5, 1024);
//just like diesel. more of a waste product than anything
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:naphtha>*30, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:naphtha>*30, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*20, <fluid:naphtha>*30, <fluid:shallowbreath>*5, 1024);
// the cleanest fuel by far: 2x less pollution at the cost of 2x less petroleum efficiency. further, you need 10 mb of LPG to get 3 of this.
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*40, <fluid:natural_gas>*60, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*40, <fluid:natural_gas>*60, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_fuel>*40, <fluid:natural_gas>*60, <fluid:shallowbreath>*5, 1024);
//standard biofuel. biofuel usually produces less RF/mb, so slightly reduced overall efficiency
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:biodiesel>*30, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:biodiesel>*30, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:biodiesel>*30, <fluid:shallowbreath>*5, 1024);
//same as biodiesel
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:wood_gas>*30, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:wood_gas>*30, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:wood_gas>*30, <fluid:shallowbreath>*5, 1024);
//very fuel efficient, but is annoying to get
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:olive_oil>*5, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:olive_oil>*5, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:olive_oil>*5, <fluid:shallowbreath>*5, 1024);
//no recipe for this yet, who knows? maybe you find a vanilla spruce somewhere...
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:tree_oil>*40, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:tree_oil>*40, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:tree_oil>*40, <fluid:shallowbreath>*5, 1024);
//really trashy fuel. pollutes 1.33 times more
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*15, <fluid:creosote>*60, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*15, <fluid:creosote>*60, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*15, <fluid:creosote>*60, <fluid:shallowbreath>*5, 1024);
// standard-ish fuel for all you ic2 lovers out there
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:ic2biogas>*100, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:ic2biogas>*100, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:ic2biogas>*100, <fluid:shallowbreath>*5, 1024);
// re-addition of the TE biofuel recipe. slightly increased fuel efficiency
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:biocrude>*20, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:biocrude>*20, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*20, <fluid:biocrude>*20, <fluid:shallowbreath>*5, 1024);
//most efficient (tho in practice probably not as clean as nat. Gas.
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*40, <fluid:liquidethene>*20, <fluid:flux_goo>*20, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*40, <fluid:liquidethene>*20, <fluid:purifying_fluid>*10, 1024);
mods.immersiveengineering.Refinery.addRecipe(<fluid:refined_biofuel>*40, <fluid:liquidethene>*20, <fluid:shallowbreath>*5, 1024);

mods.magneticraft.FluidFuel.addFuel(<liquid:lava>*250, 2000, 400.0);
mods.magneticraft.FluidFuel.addFuel(<liquid:refined_biofuel>*120, 2000, 400.0);
mods.magneticraft.FluidFuel.addFuel(<liquid:shallowbreath>*100, 2000, 400.0);

mods.magneticraft.FluidFuel.removeFuel(<liquid:wood_gas>);
mods.magneticraft.FluidFuel.removeFuel(<liquid:diesel>);
mods.magneticraft.FluidFuel.removeFuel(<liquid:biodiesel>);
mods.magneticraft.FluidFuel.removeFuel(<liquid:creosote>);
mods.magneticraft.FluidFuel.removeFuel(<liquid:fuel>);
mods.magneticraft.FluidFuel.removeFuel(<liquid:kerosene>);
mods.magneticraft.FluidFuel.removeFuel(<liquid:gasoline>);
mods.magneticraft.FluidFuel.removeFuel(<liquid:natural_gas>);


mods.embers.HeatCoil.add(<tfc:crucible>, <tfc:ceramics/unfired/crucible>);
<tfc:ceramics/unfired/crucible>.addTooltip(format.gold("can be fired using a hearth coil"));
mods.embers.HeatCoil.add(<tfc:ceramics/fired/fire_brick>, <tfc:ceramics/fire_clay>);
<tfc:ceramics/fire_clay>.addTooltip(format.gold("Can be turned directly into bricks via a hearth coil"));





mods.embers.Stamper.add(<thebetweenlands:items_misc:18>, null ,<embers:stamp_flat>,<ore:dustSulfur>*3);


mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/ingot>, null ,<ore:ingotIron>,<minecraft:clay_ball>);

//cobble to gravel

mods.embers.Stamper.add(<tfc:gravel/granite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/granite>);
mods.embers.Stamper.add(<tfc:gravel/diorite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/diorite>);
mods.embers.Stamper.add(<tfc:gravel/gabbro>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/gabbro>);
mods.embers.Stamper.add(<tfc:gravel/shale>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/shale>);
mods.embers.Stamper.add(<tfc:gravel/claystone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/claystone>);
mods.embers.Stamper.add(<tfc:gravel/rocksalt>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/rocksalt>);
mods.embers.Stamper.add(<tfc:gravel/limestone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/limestone>);
mods.embers.Stamper.add(<tfc:gravel/conglomerate>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/conglomerate>);
mods.embers.Stamper.add(<tfc:gravel/dolomite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/dolomite>);
mods.embers.Stamper.add(<tfc:gravel/chert>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/chert>);
mods.embers.Stamper.add(<tfc:gravel/chalk>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/chalk>);
mods.embers.Stamper.add(<tfc:gravel/rhyolite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/rhyolite>);
mods.embers.Stamper.add(<tfc:gravel/basalt>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/basalt>);
mods.embers.Stamper.add(<tfc:gravel/andesite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/andesite>);
mods.embers.Stamper.add(<tfc:gravel/dacite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/dacite>);
mods.embers.Stamper.add(<tfc:gravel/quartzite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/quartzite>);
mods.embers.Stamper.add(<tfc:gravel/slate>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/slate>);
mods.embers.Stamper.add(<tfc:gravel/phyllite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/phyllite>);
mods.embers.Stamper.add(<tfc:gravel/schist>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/schist>);
mods.embers.Stamper.add(<tfc:gravel/gneiss>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/gneiss>);
mods.embers.Stamper.add(<tfc:gravel/marble>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/marble>);
/*
mods.embers.Stamper.add(<tfc:gravel/breccia>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/breccia>);
mods.embers.Stamper.add(<tfc:gravel/porphyry>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/porphyry>);
mods.embers.Stamper.add(<tfc:gravel/peridotite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/peridotite>);
mods.embers.Stamper.add(<tfc:gravel/mudstone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/mudstone>);
mods.embers.Stamper.add(<tfc:gravel/sandstone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/sandstone>);
mods.embers.Stamper.add(<tfc:gravel/siltstone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/siltstone>);
mods.embers.Stamper.add(<tfc:gravel/catlinite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/catlinite>);
mods.embers.Stamper.add(<tfc:gravel/novaculite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/novaculite>);
mods.embers.Stamper.add(<tfc:gravel/soapstone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/soapstone>);
mods.embers.Stamper.add(<tfc:gravel/komatiite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:cobble/komatiite>);
*/
//gravel to sand

mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/ingot>*2, null ,<ore:ingotIron>,<minecraft:clay>);
mods.embers.Stamper.add(<tfc:sand/granite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/granite>);
mods.embers.Stamper.add(<tfc:sand/diorite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/diorite>);
mods.embers.Stamper.add(<tfc:sand/gabbro>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/gabbro>);
mods.embers.Stamper.add(<tfc:sand/shale>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/shale>);
mods.embers.Stamper.add(<tfc:sand/claystone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/claystone>);
mods.embers.Stamper.add(<tfc:sand/rocksalt>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/rocksalt>);
mods.embers.Stamper.add(<tfc:sand/limestone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/limestone>);
mods.embers.Stamper.add(<tfc:sand/conglomerate>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/conglomerate>);
mods.embers.Stamper.add(<tfc:sand/dolomite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/dolomite>);
mods.embers.Stamper.add(<tfc:sand/chert>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/chert>);
mods.embers.Stamper.add(<tfc:sand/chalk>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/chalk>);
mods.embers.Stamper.add(<tfc:sand/rhyolite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/rhyolite>);
mods.embers.Stamper.add(<tfc:sand/basalt>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/basalt>);
mods.embers.Stamper.add(<tfc:sand/andesite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/andesite>);
mods.embers.Stamper.add(<tfc:sand/dacite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/dacite>);
mods.embers.Stamper.add(<tfc:sand/quartzite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/quartzite>);
mods.embers.Stamper.add(<tfc:sand/slate>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/slate>);
mods.embers.Stamper.add(<tfc:sand/phyllite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/phyllite>);
mods.embers.Stamper.add(<tfc:sand/schist>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/schist>);
mods.embers.Stamper.add(<tfc:sand/gneiss>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/gneiss>);
mods.embers.Stamper.add(<tfc:sand/marble>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/marble>);
/*
mods.embers.Stamper.add(<tfc:sand/breccia>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/breccia>);
mods.embers.Stamper.add(<tfc:sand/porphyry>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/porphyry>);
mods.embers.Stamper.add(<tfc:sand/peridotite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/peridotite>);
mods.embers.Stamper.add(<tfc:sand/mudstone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/mudstone>);
mods.embers.Stamper.add(<tfc:sand/sandstone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/sandstone>);
mods.embers.Stamper.add(<tfc:sand/siltstone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/siltstone>);
mods.embers.Stamper.add(<tfc:sand/catlinite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/catlinite>);
mods.embers.Stamper.add(<tfc:sand/novaculite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/novaculite>);
mods.embers.Stamper.add(<tfc:sand/soapstone>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/soapstone>);
mods.embers.Stamper.add(<tfc:sand/komatiite>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:gravel/komatiite>);
*/
//stone duplication
mods.embers.Stamper.add(<tfc:raw/marble>, <liquid:enrichedlava>*50 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/marble>);
mods.embers.Stamper.add(<tfc:raw/chalk>, <liquid:enrichedlava>*50 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/chalk>);
mods.embers.Stamper.add(<tfc:raw/limestone>, <liquid:enrichedlava>*50 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/limestone>);
mods.embers.Stamper.add(<tfc:raw/dolomite>, <liquid:enrichedlava>*50 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/dolomite>);

mods.embers.Stamper.add(<tfc:raw/granite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/granite>);
mods.embers.Stamper.add(<tfc:raw/diorite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/diorite>);
mods.embers.Stamper.add(<tfc:raw/gabbro>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/gabbro>);
mods.embers.Stamper.add(<tfc:raw/shale>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/shale>);
mods.embers.Stamper.add(<tfc:raw/claystone>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/claystone>);
mods.embers.Stamper.add(<tfc:raw/rocksalt>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<ore:dustSalt>*4);
mods.embers.Stamper.add(<tfc:raw/conglomerate>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/conglomerate>);
mods.embers.Stamper.add(<tfc:raw/chert>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/chert>);
mods.embers.Stamper.add(<tfc:raw/rhyolite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/rhyolite>);
mods.embers.Stamper.add(<tfc:raw/basalt>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/basalt>);
mods.embers.Stamper.add(<tfc:raw/andesite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/andesite>);
mods.embers.Stamper.add(<tfc:raw/dacite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/dacite>);
mods.embers.Stamper.add(<tfc:raw/quartzite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/quartzite>);
mods.embers.Stamper.add(<tfc:raw/slate>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/slate>);
mods.embers.Stamper.add(<tfc:raw/phyllite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/phyllite>);
mods.embers.Stamper.add(<tfc:raw/schist>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/schist>);
mods.embers.Stamper.add(<tfc:raw/gneiss>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/gneiss>);
/*
mods.embers.Stamper.add(<tfc:raw/breccia>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/breccia>);
mods.embers.Stamper.add(<tfc:raw/porphyry>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/porphyry>);
mods.embers.Stamper.add(<tfc:raw/peridotite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/peridotite>);
mods.embers.Stamper.add(<tfc:raw/novaculite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/novaculite>);
mods.embers.Stamper.add(<tfc:raw/mudstone>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/mudstone>);
mods.embers.Stamper.add(<tfc:raw/sandstone>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/sandstone>);
mods.embers.Stamper.add(<tfc:raw/siltstone>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/siltstone>);
mods.embers.Stamper.add(<tfc:raw/catlinite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/catlinite>);
mods.embers.Stamper.add(<tfc:raw/soapstone>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/soapstone>);
mods.embers.Stamper.add(<tfc:raw/komatiite>, <liquid:lava>*250 ,<tfctech:ceramics/mold/glass_block>,<tfc:rock/komatiite>);
*/
// mold making
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/pick_head>, null ,<tfc:metal/pick_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/shovel_head>, null ,<tfc:metal/shovel_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/axe_head>, null ,<tfc:metal/axe_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/hoe_head>, null ,<tfc:metal/hoe_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/chisel_head>, null ,<tfc:metal/chisel_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/sword_blade>, null ,<tfc:metal/sword_blade/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/mace_head>, null ,<tfc:metal/mace_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/saw_blade>, null ,<tfc:metal/saw_blade/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/javelin_head>, null ,<tfc:metal/javelin_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/hammer_head>, null ,<tfc:metal/hammer_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/propick_head>, null ,<tfc:metal/propick_head/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/knife_blade>, null ,<tfc:metal/knife_blade/wrought_iron>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/scythe_blade>, null ,<tfc:metal/scythe_blade/wrought_iron>,<minecraft:clay_ball>*3);

mods.embers.Stamper.add(<tfctech:ceramics/unfired/rackwheel_piece>, null ,<tfctech:metal/brass_rackwheel_piece>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfctech:ceramics/unfired/sleeve>, null ,<tfctech:metal/brass_sleeve>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfctech:ceramics/unfired/glass_block>, null ,<immersiveengineering:sheetmetal:9>,<minecraft:clay_ball>*3);
mods.embers.Stamper.add(<tfctech:ceramics/unfired/glass_pane>, null ,<tfc:metal/sheet/wrought_iron>,<minecraft:clay_ball>*3);

//ceramics firing 
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/ingot>, <tfc:ceramics/unfired/mold/ingot>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/pick_head>, <tfc:ceramics/unfired/mold/pick_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/shovel_head>, <tfc:ceramics/unfired/mold/shovel_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/axe_head>, <tfc:ceramics/unfired/mold/axe_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/hoe_head>, <tfc:ceramics/unfired/mold/hoe_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/chisel_head>, <tfc:ceramics/unfired/mold/chisel_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/sword_blade>, <tfc:ceramics/unfired/mold/sword_blade>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/mace_head>, <tfc:ceramics/unfired/mold/mace_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/saw_blade>, <tfc:ceramics/unfired/mold/saw_blade>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/javelin_head>, <tfc:ceramics/unfired/mold/javelin_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/hammer_head>, <tfc:ceramics/unfired/mold/hammer_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/propick_head>, <tfc:ceramics/unfired/mold/propick_head>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/knife_blade>, <tfc:ceramics/unfired/mold/knife_blade>);
mods.embers.HeatCoil.add(<tfc:ceramics/fired/mold/scythe_blade>, <tfc:ceramics/unfired/mold/scythe_blade>);
mods.embers.HeatCoil.add(<tfctech:ceramics/mold/sleeve>, <tfctech:ceramics/unfired/sleeve>);
mods.embers.HeatCoil.add(<tfctech:ceramics/mold/rackwheel_piece>, <tfctech:ceramics/unfired/rackwheel_piece>);
mods.embers.HeatCoil.add(<tfctech:ceramics/mold/glass_pane>, <tfctech:ceramics/unfired/glass_pane>);
mods.embers.HeatCoil.add(<tfctech:ceramics/mold/glass_block>, <tfctech:ceramics/unfired/glass_block>);
<tfc:ceramics/unfired/mold/ingot>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/pick_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/shovel_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/axe_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/hoe_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/chisel_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/sword_blade>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/mace_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/saw_blade>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/javelin_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/hammer_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/propick_head>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/knife_blade>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfc:ceramics/unfired/mold/scythe_blade>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfctech:ceramics/unfired/sleeve>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfctech:ceramics/unfired/rackwheel_piece>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfctech:ceramics/unfired/glass_pane>.addTooltip(format.gold("can be fired using a hearth coil"));
<tfctech:ceramics/unfired/glass_block>.addTooltip(format.gold("can be fired using a hearth coil"));

mods.embers.Stamper.add(<minecraft:glass_bottle>,<liquid:glass>*250 ,<ore:blowpipe>);
mods.embers.Stamper.add(<minecraft:glass_pane>,<liquid:glass>*375 ,<tfctech:ceramics/mold/glass_pane>);
mods.embers.Stamper.add(<minecraft:glass>,<liquid:glass>*1000 ,<tfctech:ceramics/mold/glass_block>);
mods.embers.Stamper.add(<tfc:food/olive_paste>, null ,<tfc:metal/hammer_head/wrought_iron>,<tfc:food/olive>);
mods.embers.Stamper.add(<appliedenergistics2:material:45>, null ,<tfc:metal/hammer_head/blue_steel>,<ore:blockSkyStone>);
mods.embers.Stamper.add(<appliedenergistics2:material:45>, null ,<tfc:metal/hammer_head/red_steel>,<ore:blockSkyStone>);
mods.embers.Stamper.add(<thermalfoundation:material:770>, null ,<tfc:metal/hammer_head/blue_steel>,<ore:obsidian>);
mods.embers.Stamper.add(<thermalfoundation:material:770>, null ,<tfc:metal/hammer_head/red_steel>,<ore:obsidian>);

recipes.remove(<embers:mechanical_pump>);
recipes.remove(<embers:mech_core>);

recipes.remove(<immersiveengineering:metal_device0:5>);

recipes.remove(<embers:pipe>);
recipes.remove(<embers:item_pipe>);
recipes.remove(<embers:pump>);
recipes.remove(<embers:item_pump>);
Welding.addRecipe("fluidpump",<ore:ingotDoubleIron>, <minecraft:iron_bars>, <embers:pump>*12, 2);
Welding.addRecipe("tinkerhammer",<tfc:metal/hammer/wrought_iron>, <ore:plateLead>, <embers:tinker_hammer>, 2);




mods.embers.Melter.add(<liquid:molten_tar>*50,<ore:fish>,<liquid:fish_oil>*10);
mods.embers.Melter.add(<liquid:hsla_steel>*100,<thaumcraft:alumentum>,<liquid:molten_tar>*50);
mods.embers.Melter.add(<liquid:molten_tar>*1000,<thebetweenlands:items_misc:44>,<liquid:oil_soul>*1000);
mods.embers.EmberGeneration.removeBoilerFluid(<liquid:oil_dwarf>);



recipes.remove (<thermalexpansion:satchel:100>);
mods.inworldcrafting.FluidToItem.transform(<thermalexpansion:satchel:100>, <liquid:lava>, [<thermalexpansion:satchel>], true);
mods.inworldcrafting.FluidToItem.transform(<minecraft:fire_charge>, <liquid:lava>, [<ore:gunpowder>], true);
mods.embers.Alchemy.remove(<embers:shifting_scales>);

mods.embers.Alchemy.add(<embers:shifting_scales>*3,[<embers:ashen_cloth>,<thebetweenlands:items_misc:54>,<ore:sheetDoubleLead>,<thebetweenlands:items_misc:54>,<ore:sheetDoubleLead>],{"iron":(16 to 64),"lead":(48 to 128)});
mods.embers.EmberGeneration.addBoilerFluid(<fluid:fish_oil>, <fluid:shallowbreath>,1.0,[1]);


mods.embers.Alchemy.remove(<embers:dust_metallurgic>);
mods.embers.Alchemy.remove(<embers:blasting_core>);

mods.embers.Alchemy.remove(<embers:catalytic_plug>);
mods.embers.Alchemy.add(<embers:dust_metallurgic>*5,[<thaumcraft:salis_mundus>,<thaumcraft:nugget:5>,null,null,null],{"dawnstone":(0 to 16),"iron":(0 to 16),"silver":(0 to 16),"copper":(0 to 16),"lead":(0 to 16)});
mods.embers.Alchemy.add(<embers:dust_metallurgic>*5,[<thaumcraft:salis_mundus>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>],{"dawnstone":(0 to 16),"iron":(0 to 16),"silver":(0 to 16),"copper":(0 to 16),"lead":(0 to 16)});
mods.embers.Alchemy.add(<embers:dust_metallurgic>*5,[<thaumcraft:nugget:5>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>],{"dawnstone":(0 to 16),"iron":(0 to 16),"silver":(0 to 16),"copper":(0 to 16),"lead":(0 to 16)});
mods.embers.Alchemy.add(<embers:blasting_core>,[<ore:tnt>,<ore:plateIron>,<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>],{"copper":(0 to 16)});


mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/high_carbon_steel>,<immersiveengineering:material:7>], <tfc:metal/ingot/pig_iron>,null);
mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/steel>,<tfc:powder/charcoal>], <tfc:metal/ingot/high_carbon_steel>,null);

mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/black_steel>, <tfc:metal/nugget/black_steel>*5],<tfc:metal/ingot/weak_steel>, <tfc:metal/ingot/pig_iron>);
mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/red_steel>, <tfc:metal/nugget/red_steel>*5],<tfc:metal/ingot/weak_red_steel>, <tfc:metal/ingot/black_steel>);
mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/blue_steel>, <tfc:metal/nugget/blue_steel>*5],<tfc:metal/ingot/weak_blue_steel>, <tfc:metal/ingot/black_steel>);



mods.embers.Mixer.remove(<fluid:dawnstone>*8);
mods.embers.Mixer.remove(<fluid:oil_dwarf>*10);
mods.embers.Mixer.remove(<fluid:oil_dwarf>*30);
mods.embers.Mixer.add(<fluid:dawnstone>*8, [<fluid:rose_gold>*8,<fluid:pyrotheum>*4]);

mods.embers.Mixer.add(<fluid:enrichedlava>*2, [<fluid:ic2pahoehoe_lava>,<fluid:purifying_fluid>]);
mods.embers.Melter.add(<fluid:pyrotheum>*100, <ore:dustPyrotheum>);


mods.embers.DawnstoneAnvil.add([<tfc:brass_mechanisms>*3],<ore:ingotBrass>,<tfc:brass_mechanisms>);
mods.embers.DawnstoneAnvil.add([<tfcthings:metal_bracing>*2],<ore:ingotIron>,<tfcthings:metal_bracing>);
mods.embers.DawnstoneAnvil.add([<tfcthings:metal_bracing>*3],<ore:ingotSteel>,<tfcthings:metal_bracing>);



mods.embers.DawnstoneAnvil.add([<tfc:metal/shears/copper>],<tfc:metal/knife_blade/copper>,<tfc:metal/knife_blade/copper>);
mods.embers.DawnstoneAnvil.add([<tfc:metal/shears/bronze>],<tfc:metal/knife_blade/bronze>,<tfc:metal/knife_blade/bronze>);
mods.embers.DawnstoneAnvil.add([<tfc:metal/shears/bismuth_bronze>],<tfc:metal/knife_blade/bismuth_bronze>,<tfc:metal/knife_blade/bismuth_bronze>);
mods.embers.DawnstoneAnvil.add([<tfc:metal/shears/black_bronze>],<tfc:metal/knife_blade/black_bronze>,<tfc:metal/knife_blade/black_bronze>);
mods.embers.DawnstoneAnvil.add([<tfc:metal/shears/mithril>],<tfc:metal/knife_blade/mithril>,<tfc:metal/knife_blade/mithril>);
mods.embers.DawnstoneAnvil.add([<tfc:metal/shears/nickel_silver>],<tfc:metal/knife_blade/nickel_silver>,<tfc:metal/knife_blade/nickel_silver>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/bismuth_gear>],<ore:rackwheelBismuth>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/bismuth_gear>],<ore:sleeveTin>,<ore:rackwheelBismuth>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/bismuth_bronze_gear>],<ore:rackwheelBismuthBronze>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/bismuth_bronze_gear>],<ore:sleeveTin>,<ore:rackwheelBismuthBronze>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/black_bronze_gear>],<ore:rackwheelBlackBronze>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/black_bronze_gear>],<ore:sleeveTin>,<ore:rackwheelBlackBronze>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/brass_gear>],<ore:rackwheelBrass>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/brass_gear>],<ore:sleeveTin>,<ore:rackwheelBrass>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/bronze_gear>],<ore:rackwheelBronze>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/bronze_gear>],<ore:sleeveTin>,<ore:rackwheelBronze>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/copper_gear>],<ore:rackwheelCopper>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/copper_gear>],<ore:sleeveTin>,<ore:rackwheelCopper>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/gold_gear>],<ore:rackwheelGold>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/gold_gear>],<ore:sleeveTin>,<ore:rackwheelGold>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/lead_gear>],<ore:rackwheelLead>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/lead_gear>],<ore:sleeveTin>,<ore:rackwheelLead>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/nickel_gear>],<ore:rackwheelNickel>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/nickel_gear>],<ore:sleeveTin>,<ore:rackwheelNickel>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/rose_gold_gear>],<ore:rackwheelRoseGold>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/rose_gold_gear>],<ore:sleeveTin>,<ore:rackwheelRoseGold>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/silver_gear>],<ore:rackwheelSilver>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/silver_gear>],<ore:sleeveTin>,<ore:rackwheelSilver>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/tin_gear>],<ore:rackwheelTin>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/tin_gear>],<ore:sleeveTin>,<ore:rackwheelTin>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/zinc_gear>],<ore:rackwheelZinc>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/zinc_gear>],<ore:sleeveTin>,<ore:rackwheelZinc>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/sterling_silver_gear>],<ore:rackwheelSterlingSilver>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/sterling_silver_gear>],<ore:sleeveTin>,<ore:rackwheelSterlingSilver>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/wrought_iron_gear>],<ore:rackwheelWroughtIron>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/wrought_iron_gear>],<ore:sleeveBrass>,<ore:rackwheelWroughtIron>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/lithium_gear>],<ore:rackwheelLithium>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/lithium_gear>],<ore:sleeveTin>,<ore:rackwheelLithium>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/pig_iron_gear>],<ore:rackwheelPigIron>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/pig_iron_gear>],<ore:sleeveBrass>,<ore:rackwheelPigIron>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/steel_gear>],<ore:rackwheelSteel>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/steel_gear>],<ore:sleeveBrass>,<ore:rackwheelSteel>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/platinum_gear>],<ore:rackwheelPlatinum>,<ore:sleeveSteel>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/platinum_gear>],<ore:sleeveSteel>,<ore:rackwheelPlatinum>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/blue_steel_gear>],<ore:rackwheelBlueSteel>,<ore:sleeveSteel>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/blue_steel_gear>],<ore:sleeveSteel>,<ore:rackwheelBlueSteel>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/red_steel_gear>],<ore:rackwheelRedSteel>,<ore:sleeveSteel>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/red_steel_gear>],<ore:sleeveSteel>,<ore:rackwheelRedSteel>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/black_steel_gear>],<ore:rackwheelBlackSteel>,<ore:sleeveSteel>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/black_steel_gear>],<ore:sleeveSteel>,<ore:rackwheelBlackSteel>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/constantan_gear>],<ore:rackwheelConstantan>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/constantan_gear>],<ore:sleeveTin>,<ore:rackwheelConstantan>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/electrum_gear>],<ore:rackwheelElectrum>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/electrum_gear>],<ore:sleeveTin>,<ore:rackwheelElectrum>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/nickel_silver_gear>],<ore:rackwheelNickelSilver>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/nickel_silver_gear>],<ore:sleeveTin>,<ore:rackwheelNickelSilver>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/red_alloy_gear>],<ore:rackwheelRedAlloy>,<ore:sleeveTin>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/red_alloy_gear>],<ore:sleeveTin>,<ore:rackwheelRedAlloy>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/invar_gear>],<ore:rackwheelInvar>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/invar_gear>],<ore:sleeveBrass>,<ore:rackwheelInvar>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/thorium_gear>],<ore:rackwheelThorium>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/invar_gear>],<ore:sleeveBrass>,<ore:rackwheelThorium>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/uranium_gear>],<ore:rackwheelUranium>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/uranium_gear>],<ore:sleeveTin>,<ore:rackwheelUranium>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/ardite_gear>],<ore:rackwheelArdite>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/ardite_gear>],<ore:sleeveBrass>,<ore:rackwheelArdite>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/cobalt_gear>],<ore:rackwheelCobalt>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/cobalt_gear>],<ore:sleeveBrass>,<ore:rackwheelCobalt>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/manyullyn_gear>],<ore:rackwheelManyullyn>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/manyullyn_gear>],<ore:sleeveBrass>,<ore:rackwheelManyullyn>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/tungsten_gear>],<ore:rackwheelTungsten>,<ore:sleeveSteel>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/tungsten_gear>],<ore:sleeveSteel>,<ore:rackwheelTungsten>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/tungsten_steel_gear>],<ore:rackwheeTungstenSteell>,<ore:sleeveSteel>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/tungsten_steel_gear>],<ore:sleeveSteel>,<ore:rackwheelTungstenSteel>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/osmium_gear>],<ore:rackwheelOsmium>,<ore:sleeveSteel>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/osmium_gear>],<ore:sleeveSteel>,<ore:rackwheelOsmium>);

mods.embers.DawnstoneAnvil.add([<tfctech:metal/titanium_gear>],<ore:rackwheelTitanium>,<ore:sleeveSteel>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/titanium_gear>],<ore:sleeveSteel>,<ore:rackwheelTitanium>);


mods.embers.DawnstoneAnvil.add([<tfctech:metal/aluminium_gear>],<ore:rackwheelAluminium>,<ore:sleeveBrass>);
mods.embers.DawnstoneAnvil.add([<tfctech:metal/aluminium_gear>],<ore:sleeveBrass>,<ore:rackwheelAluminium>);



mods.embers.Stamper.add(<ore:stickLongBismuth>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotBismuth>);

mods.embers.Stamper.add(<ore:stickLongBismuthBronze>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotBismuthBronze>);

mods.embers.Stamper.add(<ore:stickLongBlackBronze>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotBlackBronze>);
mods.embers.Stamper.add(<ore:stickLongBrass>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotBrass>);
mods.embers.Stamper.add(<ore:stickLongBronze>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotBronze>);
mods.embers.Stamper.add(<ore:stickLongCopper>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotCopper>);
mods.embers.Stamper.add(<ore:stickLongGold>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotGold>);
mods.embers.Stamper.add(<ore:stickLongLead>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotLead>);
mods.embers.Stamper.add(<ore:stickLongNickel>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotNickel>);
mods.embers.Stamper.add(<ore:stickLongTin>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotTin>);
mods.embers.Stamper.add(<ore:stickLongSilver>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotSilver>);
mods.embers.Stamper.add(<ore:stickLongRoseGold>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotRoseGold>);
mods.embers.Stamper.add(<ore:stickLongWroughtIron>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotIron>);
mods.embers.Stamper.add(<ore:stickLongSteel>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotSteel>);
mods.embers.Stamper.add(<ore:stickLongBlackSteel>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotBlackSteel>);
mods.embers.Stamper.add(<ore:stickLongTungsten>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotTungsten>);
mods.embers.Stamper.add(<ore:stickLongTungstenSteel>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotTungstenSteel>);
mods.embers.Stamper.add(<ore:stickLongAluminium>.firstItem, null ,<immersiveengineering:mold:2>,<ore:ingotAluminium>);










