import mods.immersiveintelligence.ChemicalBath;
import mods.immersivetechnology.MeltingCrucible;
import mods.terrafirmacraft.Barrel;
import mods.integrateddynamics.Squeezer;
mods.pneumaticcraft.liquidfuel.addFuel(<liquid:steam>, 5000);

mods.immersiveintelligence.ChemicalBath.removeRecipe(<immersiveintelligence:material:6>);

mods.immersiveintelligence.ChemicalBath.addRecipe(<pneumaticcraft:empty_pcb>, <immersiveintelligence:material:6>, <liquid:etching_acid>*300, 24000, 200);
mods.immersiveintelligence.ChemicalBath.addRecipe(<pneumaticcraft:unassembled_pcb>, <immersiveintelligence:material:6>, <liquid:etching_acid>*300, 24000, 200);

mods.immersiveengineering.Blueprint.removeRecipe(<immersiveintelligence:material:5>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveintelligence:material:10>);

recipes.remove(<pneumaticcraft:printed_circuit_board>);

mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:turbine_blade>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);

mods.pneumaticcraft.pressurechamber.addRecipe([<ore:knifeBlade>,<ore:stickRedAlloy>], 1.5, [<pneumaticcraft:turbine_blade>]);
recipes.replaceAllOccurences(<pneumaticcraft:printed_circuit_board>, <ore:circuitBasic>);

mods.pneumaticcraft.pressurechamber.addRecipe([<ore:plasticGreen>,<ore:plateAdvancedElectronicAlloy>], 3.5, [<pneumaticcraft:empty_pcb:100>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<immersiveengineering:stone_decoration:8>,<ore:plateAdvancedElectronicAlloy>], 3.5, [<pneumaticcraft:empty_pcb:100>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:plasticRed>,<pneumaticcraft:empty_pcb>*2], 3.5, [<immersiveintelligence:material:10>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:plasticRed>,<pneumaticcraft:unassembled_pcb>*2], 3.5, [<immersiveintelligence:material:10>]);
MeltingCrucible.removeRecipe(<minecraft:cobblestone>);
mods.pneumaticcraft.pressurechamber.addRecipe([<tetra:magmatic_cell>], -0.2, [<minecraft:magma>,<embers:dust_ember>*3,<tetra:magmatic_cell:128>]);
Squeezer.addRecipe(<tetra:magmatic_cell>,
  <tetra:magmatic_cell:128>,1.0,
  <embers:dust_ember>*3,1.0,
  <minecraft:magma>,0.5);

furnace.setFuel(<embers:dust_ember>, 0);
furnace.setFuel(<minecraft:coal>, 0);
furnace.setFuel(<minecraft:coal:1>, 0);

furnace.setFuel(<thaumcraft:alumentum>, 6400 );

  Squeezer.addRecipe(<thaumcraft:tallow>,
  null, 0.0,
  <liquid:lubricant>*50);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:ingotIron>, <ore:dustBedrock>], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);
mods.pneumaticcraft.assembly.removeLaserRecipe(<pneumaticcraft:unassembled_pcb>);
recipes.remove(<pneumaticcraft:advanced_pcb>);
mods.pneumaticcraft.assembly.addDrillRecipe(<thaumcraft:mechanism_complex>, <pneumaticcraft:advanced_pcb>*2);






// to need plastic for rubber
recipes.remove(<tfctech:latex/vulcanizing_agents>);
Barrel.removeRecipe(<tfctech:latex/rubber_mix>*6);
Barrel.addRecipe("cruderubber", <pneumaticcraft:plastic:*>, <liquid:latex>*500,<tfctech:latex/rubber_mix>, 8);




//CO2
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:oxygen>*200, <thermalfoundation:material:768>, 2.0, 200.0, <liquid:carbon_dioxide>*2000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:oxygen>*200, <tfc:powder/charcoal>, 2.0, 200.0, <liquid:carbon_dioxide>*2000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:oxygen>*600, <immersiveengineering:material:17>, 3.0, 200.0, <liquid:carbon_dioxide>*6000);

// distillation
mods.pneumaticcraft.refinery.addRecipe(353,<liquid:vodka>*50, [<liquid:water>*12,<liquid:ethanol>*12,<liquid:methanol>*6] );
mods.pneumaticcraft.refinery.addRecipe(353,<liquid:rum>*50, [<liquid:water>*12,<liquid:ethanol>*12,<liquid:methanol>*6] );
mods.pneumaticcraft.refinery.addRecipe(353,<liquid:whiskey>*50, [<liquid:water>*16,<liquid:ethanol>*10,<liquid:methanol>*4] );
mods.pneumaticcraft.refinery.addRecipe(353,<liquid:rye_whiskey>*50, [<liquid:water>*16,<liquid:ethanol>*10,<liquid:methanol>*4] );
mods.pneumaticcraft.refinery.addRecipe(353,<liquid:corn_whiskey>*50, [<liquid:water>*16,<liquid:ethanol>*10,<liquid:methanol>*4] );
mods.pneumaticcraft.refinery.addRecipe(353,<liquid:beer>*50, [<liquid:water>*25,<liquid:ethanol>*4,<liquid:methanol>*1] );
mods.pneumaticcraft.refinery.addRecipe(353,<liquid:sake>*50, [<liquid:water>*20,<liquid:ethanol>*8,<liquid:methanol>*2] );
mods.pneumaticcraft.refinery.addRecipe(353,<liquid:cider>*50, [<liquid:water>*20,<liquid:ethanol>*8,<liquid:methanol>*2] );






