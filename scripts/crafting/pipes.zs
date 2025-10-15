import crafttweaker.item.IIngredient;
val removeitems =[
<immersiveengineering:metal_device1:6>,
<mekanism:transmitter>,
<mekanism:transmitter:1>,
<mekanism:transmitter:3>,
<magneticraft:iron_pipe>,
<tconstruct:faucet>,
<tconstruct:channel>,
<thermaldynamics:duct_16:*>,
<thermaldynamics:duct_32:*>,
<immersiveengineering:conveyor>,
] as IIngredient[];

for item in removeitems
{

    recipes.remove(item);
}

mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:glowstone_dust>, <minecraft:glass>,<minecraft:stone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:glowstone_dust>, <bloodmagic:item_routing_node>,<minecraft:iron_ingot>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:glowstone_dust>, <bloodmagic:item_routing_node>,<minecraft:gold_ingot>]);

mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:diamond>, <bloodmagic:slate:2>]);