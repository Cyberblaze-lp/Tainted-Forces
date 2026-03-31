import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeFunction;


mods.botania.ManaInfusion.addInfusion(<tfc:straw>, <botania:petal:*>, 100);
mods.botania.ManaInfusion.addInfusion(<botania:grassseeds>, <tfc:straw>, 1000);

mods.botania.ManaInfusion.addInfusion(<botania:managlass>, <ore:sand>, 1000);


mods.botania.ManaInfusion.addInfusion(<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <tfc:wooden_bucket>.withTag({Fluid: {}}), 500);

mods.botania.Apothecary.removeRecipe("jadedAmaranthus");
mods.botania.Apothecary.addRecipe("jadedAmaranthus", [<ore:petalLime>, <ore:petalPurple>, <ore:petalPurple>, <botania:manaresource:6>, <botania:fertilizer>]);
mods.botania.Apothecary.removeRecipe("rannuncarpus");
mods.botania.Apothecary.addRecipe("rannuncarpus", [<ore:petalYellow>, <ore:petalOrange>, <ore:petalOrange>, <botania:manaresource:6>, <botania:livingrock>]);

mods.botania.Apothecary.removeRecipe("daffomill");
mods.botania.Apothecary.addRecipe("daffomill", [<ore:petalYellow>, <ore:petalWhite>, <ore:petalWhite>, <botania:manaresource:6>, <botania:manaresource:3>]);



recipes.remove(<botania:twigwand>);

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


recipes.remove(<botania:miniisland:*>);
for i in 0 to 16 {
    recipes.addShapeless(<botania:miniisland>.definition.makeStack(i), [<botania:shinyflower>.definition.makeStack(i), <botania:grassseeds>]);
}