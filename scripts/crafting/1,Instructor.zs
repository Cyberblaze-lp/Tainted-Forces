//recipe changes relating to the early-game progression (ends with getting a smeltery)
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
recipes.addShaped(<tconstruct:seared_slab:3> * 6, [[<tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>]]);





//prevents a dupe with the induction smelter.
recipes.remove(<metallurgy:rubracium_gauntlet>);

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














