import loottweaker.LootTweaker;
import crafttweaker.game.IGame;
import crafttweaker.util.IRandom;
import crafttweaker.world.IWorld;
import crafttweaker.enchantments.IEnchantmentDefinition;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
mods.ltt.LootTable.removeGlobalItem("minecraft:iron_ingot");
mods.ltt.LootTable.removeGlobalItem("minecraft:wheat");
mods.ltt.LootTable.removeGlobalItem("enderio:item_material:9");
mods.ltt.LootTable.removeGlobalItem("botania:manaresource");
mods.ltt.LootTable.removeGlobalItem("ic2:ingot:1");
mods.ltt.LootTable.removeGlobalItem("ic2:ingot:1");
mods.ltt.LootTable.removeGlobalItem("ic2:ingot:2");
mods.ltt.LootTable.removeGlobalItem("ic2:ingot:3");
mods.ltt.LootTable.removeGlobalItem("ic2:ingot:4");
mods.ltt.LootTable.removeGlobalItem("ic2:ingot:6");
val dungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main");
dungeon.addItemEntry(<thaumcraft:amulet_vis>, 2000);
dungeon.addItemEntry(<thaumcraft:curio>, 4000);
dungeon.addItemEntry(<thaumcraft:celestial_notes>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:1>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:2>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:3>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:4>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:5>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:6>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:7>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:8>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:9>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:10>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:11>, 1000);
dungeon.addItemEntry(<thaumcraft:celestial_notes:12>, 1000);
dungeon.addItemEntry(<thaumcraft:fabric>, 30000);
dungeon.addItemEntry(<thaumcraft:baubles:3>, 1000);
dungeon.addItemEntry(<thaumcraft:pech_wand>, 2000);
dungeon.addItemEntry(<thaumcraft:curio:6>, 3000);

dungeon.removeEntry("minecraft:beetroot_seeds");
dungeon.removeEntry("ic2:ingot");
dungeon.removeEntry("ic2:ingot:1");
dungeon.removeEntry("ic2:ingot:2");
dungeon.removeEntry("ic2:ingot:3");

world = crafttweaker.world.IWorld.getFromID(0);

for enchant in crafttweaker.game.IGame.enchantments {
ID = enchant.id;
X = world.rndom.nextInt(1, enchant.maxLevel);

dungeon.addItemEntry(<minecraft:enchanted_book>.withTagnchantments: [{lvl: X , id: ID }]}), 3, 2);

}




dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 32 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 34 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 35 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 48 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 49 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 61 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 62 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 4 , id: 2 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 7 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 16 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 17 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 18 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 19 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 20 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 21 }]}), 1, 4);
dungeon.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 22 }]}), 1, 4);

val container = LootTweaker.getTable("tetra:forged/container_content").getPool("forged/container_content");
container.removeEntry("minecraft:diamond");
container.removeEntry("minecraft:emerald");
container.removeEntry("minecraft:golden_rail");


container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 32 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 34 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 35 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 48 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 49 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 61 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 62 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 4 , id: 2 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 7 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 16 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 17 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 18 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 19 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 20 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 21 }]}), 1);
container.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 22 }]}), 1);

container.addItemEntry(<thaumcraft:mind>, 5);
container.addItemEntry(<thaumcraft:mind:1>, 5, 2);

container.addItemEntry(<thaumcraft:seal:2>, 5);
container.addItemEntry(<thaumcraft:seal:13>, 3, 2);
container.addItemEntry(<extrautils2:scanner>, 5);


val scrap = LootTweaker.getTable("tetra:forged/metal_scrap_salvage").getPool("forged/metal_scrap_salvage");
scrap.removeEntry("*");
scrap.addItemEntry(<tfc:metal/nugget/black_steel>), 1, 3;
scrap.addItemEntry(<tfc:metal/nugget/steel>), 1, 2;
scrap.addItemEntry(<tfc:metal/nugget/wrought_iron>), 4;
scrap.addItemEntry(<tfc:metal/nugget/aluminium>), 4;
scrap.addItemEntry(<tfc:metal/nugget/tin>), 4;
scrap.addItemEntry(<tfc:metal/nugget/lead>), 6;









