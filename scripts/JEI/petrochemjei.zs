
import mods.jei.JEI;
import mods.randomtweaker.jei.IJeiPanel;
import mods.randomtweaker.jei.IJeiUtils;
import mods.randomtweaker.jei.IJeiRecipe;



var keyJEI as IJeiPanel = JEI.createJei("test_jei", "key");

keyJEI.setModid("www");

keyJEI.setBackground(IJeiUtils.createBackground(150, 50));

keyJEI.addRecipeCatalyst(<minecraft:stone:3>);
keyJEI.addRecipeCatalyst(<minecraft:stone:1>);

keyJEI.addSlot(IJeiUtils.createItemSlot(16, 18, true));
keyJEI.addSlot(IJeiUtils.createItemSlot(80, 18, false));

keyJEI.addElement(IJeiUtils.createFontInfoElement("font", 50, 50,  0x000000));
keyJEI.addElement(IJeiUtils.createFontInfoElement("fontInfo", 100, 18, 0x52575B));

keyJEI.register();



var test_recipe as IJeiRecipe = JEI.createJeiRecipe("test_jei");

test_recipe.addInput(<minecraft:apple>);

test_recipe.addOutput(<minecraft:golden_apple:1>);

test_recipe.build();





