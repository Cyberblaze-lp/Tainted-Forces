
import mods.mekanism.reaction;
import mods.mekanism.thermalevaporation;




thermalevaporation.removeRecipe(<liquid:water>, <liquid:brine>);
thermalevaporation.addRecipe(<liquid:salt_water>*10,<liquid:brine>);


reaction.removeAllRecipes();



//petroleum gas processing
mods.mekanism.separator.addRecipe(<liquid:lpg>, 50, <gas:ethene>, <gas:hydrogen>*6);

mods.mekanism.chemical.infuser.addRecipe(<gas:fluorine>,<gas:sulfuric_acid>, <gas:hydrofluoricacid>);


reaction.addRecipe(<ore:dustSulfur>, <liquid:water>*100, <gas:oxygen>*150, null, <gas:sulfuric_acid>*100, 10000, 200);

reaction.addRecipe(<ore:plateBlackSteel>*8, <liquid:hydrogen>*100, <gas:fluorine>*100, <tfc:metal/sheet/black_steel>*8, <gas:hydrofluoricacid>*200, 5000, 50);
reaction.addRecipe(<ore:oreDilithium>, <liquid:hydrofluoric_acid>*1000, <gas:sodium>*75, <tfc:powder/salt>*50, <gas:lithium>*400, 50000, 200);



mods.modularmachinery.RecipeBuilder.newBuilder("fluorine_extraction", "gas_extractor_t4", 30)
.addGasOutput(<gas:fluorine>*100)
.build();









