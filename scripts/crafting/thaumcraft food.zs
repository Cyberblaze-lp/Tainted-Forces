import mods.thaumcraft.SmeltingBonus;
import mods.terrafirmacraft.ItemRegistry;

//beef nuggets
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/bear>, <thaumcraft:chunk> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/beef>, <thaumcraft:chunk> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/venison>, <thaumcraft:chunk> % 2);

//chicken nuggets
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/pheasant>, <thaumcraft:chunk:1> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/chicken>, <thaumcraft:chunk:1> % 2);

//pork nuggets
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/pork>, <thaumcraft:chunk:2> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/mongoose>, <thaumcraft:chunk:2> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/gran_feline>, <thaumcraft:chunk:2> % 2);

//fish nuggets
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/fish>, <thaumcraft:chunk:3> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/calamari>, <thaumcraft:chunk:3> % 2);

//rabbit nuggets
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/rabbit>, <thaumcraft:chunk:4> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/camelidae>, <thaumcraft:chunk:4> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/wolf>, <thaumcraft:chunk:4> % 2);

//mutton nuggets
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/mutton>, <thaumcraft:chunk:5> % 2);
mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tfc:food/horse_meat>, <thaumcraft:chunk:5> % 2);

mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<ore:categoryMeat>, <thaumcraft:tallow> % 20);

val tallow = <ore:tallow>;
tallow.add(<thaumcraft:tallow>);



furnace.addRecipe(<tfc:food/cooked_bear>, <tfc:food/bear>, 0.2);
furnace.addRecipe(<tfc:food/cooked_beef>, <tfc:food/beef>, 0.2);
furnace.addRecipe(<tfc:food/cooked_venison>, <tfc:food/venison>, 0.2);
furnace.addRecipe(<tfc:food/cooked_pheasant>, <tfc:food/pheasant>, 0.2);
furnace.addRecipe(<tfc:food/cooked_chicken>, <tfc:food/chicken>, 0.2);
furnace.addRecipe(<tfc:food/cooked_pork>, <tfc:food/pork>, 0.2);
furnace.addRecipe(<tfc:food/cooked_mongoose>, <tfc:food/mongoose>, 0.2);
furnace.addRecipe(<tfc:food/cooked_gran_feline>, <tfc:food/gran_feline>, 0.2);
furnace.addRecipe(<tfc:food/cooked_fish>, <tfc:food/fish>, 0.2);
furnace.addRecipe(<tfc:food/cooked_calamari>, <tfc:food/calamari>, 0.2);
furnace.addRecipe(<tfc:food/cooked_rabbit>, <tfc:food/rabbit>, 0.2);
furnace.addRecipe(<tfc:food/cooked_camelidae>, <tfc:food/camelidae>, 0.2);
furnace.addRecipe(<tfc:food/cooked_wolf>, <tfc:food/wolf>, 0.2);
furnace.addRecipe(<tfc:food/cooked_mutton>, <tfc:food/mutton>, 0.2);
furnace.addRecipe(<tfc:food/cooked_horse_meat>, <tfc:food/horse_meat>, 0.2);



