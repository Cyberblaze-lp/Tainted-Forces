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

<embers:mechanical_pump>.addTooltip(format.red("sorry, but this one has a mild chance of corrupting your world. use II's mechanical pump instead"));


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
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:coal>);

Refinery.removeRecipe(<liquid:refined_oil>);
Refinery.removeRecipe(<liquid:biocrude>);

Refinery.removeRecipe(<liquid:crude_oil>);
Refinery.removeRecipe(<liquid:coal>);


mods.magneticraft.FluidFuel.addFuel(<liquid:refined_fuel>*120, 2000, 400.0);
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



<embers:boiler>.addTooltip(format.gold("Now uses LAVA instead of water!"));

mods.embers.Stamper.remove(<embers:dust_ember>);


mods.embers.Stamper.add(<thebetweenlands:items_misc:18>, null ,<embers:stamp_flat>,<ore:dustSulfur>*3);


mods.embers.Stamper.add(<tfc:ceramics/unfired/mold/ingot>, null ,<ore:ingotIron>,<minecraft:clay_ball>);


for stone in rocktypes
{
    val cobble = itemUtils.getItem("tfc:cobble/"+ stone);
    val gravel = itemUtils.getItem("tfc:gravel/"+ stone);
    val sand = itemUtils.getItem("tfc:sand/"+ stone);
    val rock = itemUtils.getItem("tfc:rock/"+ stone);


    mods.rustichromia.Quern.add(stone + "sand", [gravel], [sand], 4.0, 10.0, 500.0);
    mods.rustichromia.Quern.add(stone + "gravel", [cobble], [gravel], 4.0, 10.0, 500.0);
    mods.rustichromia.Quern.add(stone + "gravelfromrock", [rock *4], [gravel], 4.0, 10.0, 500.0);


}





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


recipes.remove(<embers:mechanical_pump>);
recipes.remove(<embers:mech_core>);

recipes.remove(<immersiveengineering:metal_device0:5>);

recipes.remove(<embers:pipe>);
recipes.remove(<embers:item_pipe>);
recipes.remove(<embers:pump>);
recipes.remove(<embers:item_pump>);
Welding.addRecipe("tinkerhammer",<tfc:metal/hammer/wrought_iron>, <ore:plateLead>, <embers:tinker_hammer>, 2);




mods.embers.EmberGeneration.removeBoilerFluid(<liquid:oil_dwarf>);



recipes.remove (<thermalexpansion:satchel:100>);
mods.inworldcrafting.FluidToItem.transform(<thermalexpansion:satchel:100>, <liquid:lava>, [<thermalexpansion:satchel>], true);
mods.embers.Alchemy.remove(<embers:shifting_scales>);

mods.embers.Alchemy.add(<embers:shifting_scales>*3,[<embers:ashen_cloth>,<thebetweenlands:items_misc:54>,<ore:sheetDoubleLead>,<thebetweenlands:items_misc:54>,<ore:sheetDoubleLead>],{"iron":(16 to 64),"lead":(48 to 128)});
mods.embers.EmberGeneration.addBoilerFluid(<fluid:fish_oil>, <fluid:shallowbreath>,1.0,[1]);


mods.embers.Alchemy.remove(<embers:dust_metallurgic>);
mods.embers.Alchemy.remove(<embers:blasting_core>);

mods.embers.Alchemy.remove(<embers:catalytic_plug>);
mods.embers.Alchemy.add(<embers:dust_metallurgic>*5,[<thaumcraft:salis_mundus>,<thaumcraft:nugget:5>,null,null,null],{"dawnstone":(0 to 16),"iron":(0 to 16),"silver":(0 to 16),"copper":(0 to 16),"lead":(0 to 16)});
mods.embers.Alchemy.add(<embers:dust_metallurgic>*5,[<thaumcraft:salis_mundus>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>],{"dawnstone":(0 to 16),"iron":(0 to 16),"silver":(0 to 16),"copper":(0 to 16),"lead":(0 to 16)});
mods.embers.Alchemy.add(<embers:dust_metallurgic>*5,[<thaumcraft:nugget:5>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>],{"dawnstone":(0 to 16),"iron":(0 to 16),"silver":(0 to 16),"copper":(0 to 16),"lead":(0 to 16)});
mods.embers.Alchemy.add(<embers:blasting_core>,[<minecraft:fire_charge>,<ore:plateIron>,<ore:gearIron>,<ic2:crafting:8>,<ore:plateIron>],{"copper":(0 to 16)});


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

mods.embers.DawnstoneAnvil.add([<mysticalmechanics:axle_iron>*3],<ore:ingotIron>,<ore:stickIron>);
mods.embers.DawnstoneAnvil.add([<mysticalmechanics:axle_iron>*3],<ore:stickIron>,<ore:ingotIron>);

recipes.remove(<ore:stickIron>);











