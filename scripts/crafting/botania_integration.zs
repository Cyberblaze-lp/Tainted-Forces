

mods.botania.ManaInfusion.addInfusion(<tfc:straw>, <botania:petal:*>, 1000);
mods.botania.ManaInfusion.addInfusion(<botania:grassseeds>, <tfc:straw>, 1000);

mods.botania.ManaInfusion.addInfusion(<botania:managlass>, <ore:sand>, 1000);

mods.botania.ManaInfusion.addInfusion(<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}), 100);

mods.botania.Apothecary.removeRecipe("jadedAmaranthus");
mods.botania.Apothecary.addRecipe("jadedAmaranthus", [<ore:petalLime>, <ore:petalPurple>, <ore:petalPurple>, <botania:manaresource:6>, <botania:fertilizer>]);
mods.botania.Apothecary.removeRecipe("rannuncarpus");
mods.botania.Apothecary.addRecipe("rannuncarpus", [<ore:petalYellow>, <ore:petalOrange>, <ore:petalOrange>, <botania:manaresource:6>, <botania:livingrock>]);
