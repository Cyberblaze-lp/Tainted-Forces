import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//Editing vanilla recipes that conflict with Betweenlands recipes
val nonBLStone as IIngredient = removeStackFromIIngredient(<ore:stone>, <thebetweenlands:smooth_betweenstone>);
val nonBLCobble as IIngredient = removeStackFromIIngredient(<ore:cobblestone>, <thebetweenlands:betweenstone>);
val nonBLPlank as IIngredient = removeStackFromIIngredient(<ore:plankWood>, <thebetweenlands:weedwood_planks>);

recipes.removeByRecipeName("minecraft:stone_pressure_plate");
recipes.addShaped(<minecraft:stone_pressure_plate>, [
    [nonBLStone, nonBLStone]
]);

recipes.removeByRecipeName("minecraft:button");
recipes.addShapeless(<minecraft:stone_button>, [nonBLStone]);

recipes.removeByRecipeName("minecraft:furnace");
recipes.addShaped(<minecraft:furnace>, [
    [nonBLCobble, nonBLCobble, nonBLCobble],
    [nonBLCobble, null, nonBLCobble],
    [nonBLCobble, nonBLCobble, nonBLCobble]
]);

recipes.removeByRecipeName("minecraft:stick");
recipes.addShaped(<minecraft:stick> * 4, [
    [nonBLPlank],
    [nonBLPlank]
]);

recipes.removeByRecipeName("minecraft:sign");
recipes.addShaped(<minecraft:sign> * 3, [
    [nonBLPlank, nonBLPlank, nonBLPlank],
    [nonBLPlank, nonBLPlank, nonBLPlank],
    [null, <ore:stickWood>, null]
]);

recipes.removeByRecipeName("minecraft:bowl");
recipes.addShaped(<minecraft:bowl> * 4, [
    [nonBLPlank, nonBLPlank, nonBLPlank],
    [null, nonBLPlank, null]
]);


function removeStackFromIIngredient(oreDict as IIngredient, item as IItemStack) as IIngredient {
    var output as IIngredient = null;
    for i in oreDict.items{
        if(i.matches(item)){
            continue;
        }
        output = i.or(output);
    }
    return output;
}