import crafttweaker.oredict.IOreDictEntry;
val bismuth = <ore:oreBismuth>;
val bismuthinite = <ore:oreBismuthinite>;

bismuth.addAll(bismuthinite);
bismuth.add(<tfc:ore/bismuthinite/gabbro>);
bismuth.addAll(bismuthinite);
bismuthinite.remove(<tfc:ore/bismuthinite/gabbro>);

val irongear =<ore:gearIron>;

irongear.add(<tfctech:metal/wrought_iron_gear>);


val metals = <ore:sheetToolMetal>;


metals.addAll(<ore:plateIron>);
metals.addAll(<ore:plateCopper>);
metals.addAll(<ore:sheetAnyBronze>);
metals.addAll(<ore:plateSteel>);
metals.addAll(<ore:plateAluminium>);
metals.addAll(<ore:plateBlackSteel>);
metals.addAll(<ore:plateInvar>);
metals.addAll(<ore:plateBlueSteel>);
metals.addAll(<ore:plateRedSteel>);
metals.addAll(<ore:plateMithril>);
metals.addAll(<ore:plateTungsten>);
metals.addAll(<ore:plateCobalt>);
metals.addAll(<ore:plateTungstenSteel>);
metals.addAll(<ore:plateNickelSilver>);
metals.addAll(<ore:plateManyullyn>);
metals.addAll(<ore:plateZircaloy>);
metals.addAll(<ore:plateOsmium>);
metals.addAll(<ore:plateTitanium>);



mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/bismuthinite/gabbro>, null, <ore:oreSmallBismuth>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/bismuthinite/gabbro>, null, <ore:orePoorBismuth>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/bismuthinite/gabbro>, null, <ore:oreNormalBismuth>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/bismuthinite/gabbro>, null, <ore:oreRichBismuth>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore>, null, <ore:oreSmallCopper>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore>, null, <ore:orePoorCopper>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore>, null, <ore:oreNormalCopper>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore>, null, <ore:oreRichCopper>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<minecraft:gold_ore>, null, <ore:oreSmallGold>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:gold_ore>, null, <ore:orePoorGold>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:gold_ore>, null, <ore:oreNormalGold>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:gold_ore>, null, <ore:oreRichGold>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:3>, null, <ore:oreSmallLead>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:3>, null, <ore:orePoorLead>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:3>, null, <ore:oreNormalLead>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:3>, null, <ore:oreRichLead>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:5>, null, <ore:oreSmallNickel>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:5>, null, <ore:orePoorNickel>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:5>, null, <ore:oreNormalNickel>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:5>, null, <ore:oreRichNickel>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:2>, null, <ore:oreSmallSilver>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:2>, null, <ore:orePoorSilver>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:2>, null, <ore:oreNormalSilver>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:2>, null, <ore:oreRichSilver>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:1>, null, <ore:oreSmallTin>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:1>, null, <ore:orePoorTin>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:1>, null, <ore:oreNormalTin>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:1>, null, <ore:oreRichTin>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<immersiveintelligence:ore:1>, null, <ore:oreSmallZinc>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<immersiveintelligence:ore:1>, null, <ore:orePoorZinc>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<immersiveintelligence:ore:1>, null, <ore:oreNormalZinc>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<immersiveintelligence:ore:1>, null, <ore:oreRichZinc>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<minecraft:iron_ore>, null, <ore:oreSmallIron>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:iron_ore>, null, <ore:orePoorIron>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:iron_ore>, null, <ore:oreNormalIron>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:iron_ore>, null, <ore:oreRichIron>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:6>, null, <ore:oreSmallPlatinum>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:6>, null, <ore:orePoorPlatinum>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:6>, null, <ore:oreNormalPlatinum>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:6>, null, <ore:oreRichPlatinum>*3, 2048);



mods.immersiveengineering.Squeezer.addRecipe(<ic2:resource:4>, null, <ore:gemPitchblende>*2, 2048);
mods.immersiveengineering.BottlingMachine.addRecipe(<ic2:resource:4>,<ore:scrapUranium>, <liquid:lava>*200);

//Osmium
mods.immersiveengineering.Squeezer.addRecipe(<mekanism:oreblock>, null, <ore:oreSmallOsmium>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<mekanism:oreblock>, null, <ore:orePoorOsmium>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<mekanism:oreblock>, null, <ore:oreNormalOsmium>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<mekanism:oreblock>, null, <ore:oreRichOsmium>*3, 2048);




mods.immersiveengineering.Squeezer.addRecipe(<tconstruct:ore>, null, <ore:oreSmallCobalt>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tconstruct:ore>, null, <ore:orePoorCobalt>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tconstruct:ore>, null, <ore:oreNormalCobalt>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tconstruct:ore>, null, <ore:oreRichCobaltCobalt>*3, 2048);


mods.immersiveengineering.Squeezer.addRecipe(<tconstruct:ore:1>, null, <ore:oreSmallArdite>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tconstruct:ore:1>, null, <ore:orePoorArdite>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tconstruct:ore:1>, null, <ore:oreNormalArdite>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tconstruct:ore:1>, null, <ore:oreRichArdite>*3, 2048);


mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/stibnite/gabbro>, null, <ore:oreSmallAntimony>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/stibnite/gabbro>, null, <ore:orePoorAntimony>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/stibnite/gabbro>, null, <ore:oreNormalAntimony>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/stibnite/gabbro>, null, <ore:oreRichAntimony>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<immersiveintelligence:ore:2>, null, <ore:oreSmallTungsten>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<immersiveintelligence:ore:2>, null, <ore:orePoorTungsten>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<immersiveintelligence:ore:2>, null, <ore:oreNormalTungsten>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<immersiveintelligence:ore:2>, null, <ore:oreRichTungsten>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/zircon/gabbro>, null, <ore:oreSmallZirconium>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/zircon/gabbro>, null, <ore:orePoorZirconium>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/zircon/gabbro>, null, <ore:oreNormalZirconium>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/zircon/gabbro>, null, <ore:oreRichZirconium>*3, 2048);

mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:4>, null, <ore:oreSmallAluminium>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:4>, null, <ore:orePoorAluminium>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:4>, null, <ore:oreNormalAluminium>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<thermalfoundation:ore:4>, null, <ore:oreRichAluminium>*3, 2048);



mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/spodumene/gabbro>, null, <ore:oreSmallLithium>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/spodumene/gabbro>, null, <ore:orePoorLithium>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/spodumene/gabbro>, null, <ore:oreNormalLithium>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/spodumene/gabbro>, null, <ore:oreRichLithium>*3, 2048);


mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/thorianite/gabbro>, null, <ore:oreSmallThorium>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/thorianite/gabbro>, null, <ore:orePoorThorium>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/thorianite/gabbro>, null, <ore:oreNormalThorium>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<tfc:ore/thorianite/gabbro>, null, <ore:oreRichThorium>*3, 2048);
/*
mods.immersiveengineering.Squeezer.addRecipe(<nuclearcraft:ore:7>, null, <ore:oreSmallMagnesium>*10, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<nuclearcraft:ore:7>, null, <ore:orePoorMagnesium>*7, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<nuclearcraft:ore:7>, null, <ore:oreNormalMagnesium>*4, 2048);
mods.immersiveengineering.Squeezer.addRecipe(<nuclearcraft:ore:7>, null, <ore:oreRichMagnesium>*3, 2048);
mods.immersiveengineering.BottlingMachine.addRecipe(<nuclearcraft:ore:7>,<ore:scrapMagnesium>, <liquid:lava>*200);

mods.immersiveengineering.Squeezer.addRecipe(<nuclearcraft:ore:5>, null, <ore:gemBorax>*2, 2048);
mods.immersiveengineering.BottlingMachine.addRecipe(<nuclearcraft:ore:5>,<ore:scrapBoron>, <liquid:lava>*200);

*/




mods.ic2.Macerator.addRecipe(<thermalfoundation:material:893>*2, <tfc:ore/cinnabar>);
mods.ic2.Macerator.addRecipe(<thermalfoundation:material:893>*2, <tfc:ore/cryolite>);
mods.ic2.OreWasher.addRecipe([<minecraft:redstone>*5,<thaumcraft:nugget:5>*5,<extrautils2:ingredients>],<ore:clathrateRedstone>, 1000);



mods.ic2.Macerator.addRecipe(<ic2:crushed:2>*10, <ore:oreRichIron>*9);
mods.immersiveengineering.Crusher.addRecipe(<ic2:crushed:2>*10, <ore:oreRichIron>*9, 48000);

