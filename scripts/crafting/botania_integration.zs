import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeFunction;


mods.botania.ManaInfusion.addInfusion(<tfc:straw>, <botania:petal:*>, 100);
mods.botania.ManaInfusion.addInfusion(<botania:grassseeds>, <tfc:straw>, 1000);

mods.botania.ManaInfusion.addInfusion(<botania:managlass>, <ore:sand>, 1000);


mods.botania.ManaInfusion.addInfusion(<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <tfc:wooden_bucket>.withTag({Fluid: {}}), 500);

mods.botania.Apothecary.addRecipe("jadedAmaranthus", [ <ore:petalPurple>, <ore:petalPurple>, <botania:manaresource:6>, <botania:fertilizer>]);
mods.botania.Apothecary.addRecipe("rannuncarpus", [<ore:petalYellow>, <ore:petalOrange>, <ore:petalOrange>, <botania:manaresource:6>, <botania:livingrock>]);
mods.botania.Apothecary.addRecipe("daffomill", [<ore:petalYellow>, <ore:petalYellow>, <botania:manaresource:6>, <botania:manaresource:3>]);
mods.botania.Apothecary.addRecipe("agricarnation", [<ore:petalLime>, <ore:petalLime>, <botania:manaresource:6>, <minecraft:dye:15>]);


mods.botania.Apothecary.addRecipe(<extrautils2:redorchid>, [<botania:manaresource:6>,<botania:manaresource:6>,<botania:manaresource:6>,<ore:petalRed>, <ore:petalRed>, <ore:petalRed>]);


mods.botania.PureDaisy.addRecipe(<tfc:thatch>,<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<minecraft:redstone_block>,<minecraft:redstone_ore>);



recipes.addShaped(
    <botania:twigwand>.withLore(["Will have its color determined by the inputted petals", "Also works with the akashic tome"]), 
    [
        [null, <botania:petal:*>.marked("2")],
        [<botania:petal:*>.marked("1"), <botania:twigwand>.marked("wand")]
    ], 
    function(output, input, cInfo){
        return input.wand.updateTag({
            color1: input["1"].damage, 
            color2: input["2"].damage
        });
    } as IRecipeFunction
);

recipes.addShaped(<botania:twigwand>.withLore(["Will have its color determined by the inputted petals"]), 
    [
        [null, <botania:petal:*>.marked("1"), <ore:livingwoodTwig>],
        [null, <ore:livingwoodTwig>, <botania:petal:*>.marked("2")],
        [<ore:livingwoodTwig>, null, null]
    ], 
    function(output, input, cInfo){
        return <botania:twigwand>.withTag({
            color1: input["1"].damage, 
            color2: input["2"].damage
        });
    } as IRecipeFunction
);


for i in 0 to 16 {
    recipes.addShapeless(<botania:miniisland>.definition.makeStack(i), [<botania:shinyflower>.definition.makeStack(i), <botania:grassseeds>]);
}