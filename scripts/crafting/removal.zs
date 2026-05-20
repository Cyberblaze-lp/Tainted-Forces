#priority 254

mods.rustichromia.Assembler.removeAll();
mods.rustichromia.Quern.removeAll();
mods.rustichromia.Gin.removeAll();


recipes.remove(<tconstruct:seared>);
recipes.remove(<tconstruct:seared:1>);
recipes.remove(<tconstruct:seared:3>);
recipes.remove(<immersiveintelligence:metal_decoration:1>);
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

recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:seared_tank>);
recipes.remove(<tconstruct:seared_tank:1>);
recipes.remove(<tconstruct:seared_tank:2>);
recipes.remove(<tconstruct:faucet>);
recipes.remove(<tconstruct:smeltery_io>);
recipes.remove(<tconstruct:casting>);
recipes.remove(<tconstruct:casting:1>);
recipes.remove(<tconstruct:materials:14>);
recipes.remove(<tconstruct:seared_slab:3>);
recipes.remove(<tconstruct:seared_glass>);


mods.thermalexpansion.Crucible.removeRecipe(<minecraft:netherrack>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:3>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:6>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:4>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:5>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:1>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:cobblestone>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:stone:2>);
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:magma>);
recipes.remove(<thermalexpansion:augment:352>);




// corrupts your world. removed for your safety, but might get revoked later as soon as pabilo8 fixes this.
recipes.remove(<immersiveintelligence:data_connector:8>);
//limits opportunities to bypass backpack restriction above
recipes.remove(<conarm:travel_sack>);
//5x5 mining is reserved for the terra shatterer and primal crusher
recipes.remove(<immersiveintelligence:drillhead>);
recipes.remove(<immersiveintelligence:drillhead:3>);

// shields are a bit cheap for the 100% protection they give. let's fix that.
recipes.remove(<minecraft:shield>);

recipes.remove(<weather2:weather_deflector>);
recipes.remove(<weather2:weather_machine>);
recipes.remove(<ic2:jetpack_electric>);
recipes.remove(<extrautils2:angelring:*>);
recipes.remove(<extrautils2:luxsaber:*>);
recipes.remove(<mekanism:basicblock:8>);
recipes.remove(<mekanism:machineblock:8>);
recipes.remove(<mekanism:machineblock3:1>);

mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot>);
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness>);

mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:1>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:2>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:3>);



mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:minecart>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:anvil>);
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



recipes.remove(<ic2:crafting:2>);
recipes.remove(<immersiveengineering:tool>);
recipes.remove(<immersiveengineering:tool:1>);
recipes.remove(<thermalexpansion:frame>);
recipes.removeShaped(<thaumcraft:plate:1> * 3, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.removeShaped(<thaumcraft:plate> * 3, [[<ore:ingotBrass>, <ore:ingotBrass>, <ore:ingotBrass>]]);
recipes.removeShaped(<thaumcraft:plate:2> * 3, [[<ore:ingotThaumium>, <ore:ingotThaumium>, <ore:ingotThaumium>]]);
recipes.removeShaped(<thaumcraft:plate:3> * 3, [[<ore:ingotVoid>, <ore:ingotVoid>, <ore:ingotVoid>]]);
recipes.remove(<cyberware:surgery_chamber>);
recipes.remove(<cyberware:engineering_table>);
recipes.remove(<ic2:resource:12>);
recipes.remove(<magneticraft:multiblock_column>);
recipes.remove(<magneticraft:multiblock_parts:5>);
recipes.remove(<ic2:dust:6>);
recipes.remove(<thermalexpansion:frame:64>);
recipes.remove(<ic2:te:39>);
recipes.remove(<mekanism:teleportationcore>);
recipes.remove(<ic2:te:63>);
// removes recipes for flux reconstruction and pyroconvective loop respectively.
recipes.remove(<thermalexpansion:augment:401>);
recipes.remove(<thermalexpansion:augment:352>);

recipes.remove(<tconstruct:materials:18>);
recipes.remove(<immersiveengineering:metal_device1:13>);


recipes.remove(<advancedrocketry:arcfurnace>);




