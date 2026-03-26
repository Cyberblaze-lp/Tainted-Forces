

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


mods.modularmachinery.RecipeBuilder.newBuilder("basicflux", "calcifier_t0", 300)
.addItemInput(<ore:powderMana>*8)
.addItemOutput(<tfc:powder/flux>)
.addFluxOutput(2,0)
.build();

