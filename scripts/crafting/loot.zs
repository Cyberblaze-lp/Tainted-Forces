import loottweaker.LootTweaker;
import loottweaker.Functions;
import loottweaker.Conditions;

for item in [
    "minecraft:iron_ingot", 
    "minecraft:wheat",
    "enderio:item_material:9",
    "botania:manaresource",
    "ic2:ingot",
    "ic2:ingot:1",
    "ic2:ingot:2",
    "ic2:ingot:3",
    "ic2:ingot:4",
    "ic2:ingot:6",
    "minecraft:beetroot_seeds",
    "minecraft:melon_seeds",
    "minecraft:pumpkin_seeds",
    "minecraft:bread"
] as string[]{
    mods.ltt.LootTable.removeGlobalItem(item);
}

val dungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");
val dungeonMain = dungeon.getPool("main");

dungeonMain.removeEntry("quark:ancient_tome");

dungeonMain.addItemEntry(<thaumcraft:amulet_vis>, 2000);
dungeonMain.addItemEntry(<thaumcraft:curio>, 4000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:1>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:2>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:3>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:4>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:5>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:6>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:7>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:8>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:9>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:10>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:11>, 1000);
dungeonMain.addItemEntry(<thaumcraft:celestial_notes:12>, 1000);
dungeonMain.addItemEntry(<thaumcraft:fabric>, 30000);
dungeonMain.addItemEntry(<thaumcraft:baubles:3>, 1000);
dungeonMain.addItemEntry(<thaumcraft:pech_wand>, 2000);
dungeonMain.addItemEntry(<thaumcraft:curio:6>, 3000);

val dungeonEnchant = dungeon.addPool("tf:enchants", 1, 2, 0, 0);
dungeonEnchant.addConditions([Conditions.randomChance(0.50)]);

for enchant in game.enchantments {
    var weight as int;
    if(enchant.registryName has "minecraft"){
        weight = 4;
    } else {
        weight = 2;
    }
    dungeonEnchant.addItemEntry(<minecraft:enchanted_book>, weight, 2, [
        Functions.zenscript(function(stack, random, context){
            return <minecraft:enchanted_book>.withTag(
                {StoredEnchantments: [{lvl: random.nextInt(1, enchant.maxLevel), id: enchant.id}]}
            );
        })
    ], []);
}

dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 32 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 34 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 35 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 48 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 49 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 61 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 62 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 4 , id: 2 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 7 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 16 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 17 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 5 , id: 18 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 19 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 2 , id: 20 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 21 }]}), 1, 4);
dungeonEnchant.addItemEntry(<quark:ancient_tome>.withTag({StoredEnchantments: [{lvl: 3 , id: 22 }]}), 1, 4);



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
scrap.addItemEntry(<tfc:metal/nugget/black_steel>, 1, 3);
scrap.addItemEntry(<tfc:metal/nugget/steel>, 1, 2);
scrap.addItemEntry(<tfc:metal/nugget/wrought_iron>, 4);
scrap.addItemEntry(<tfc:metal/nugget/aluminium>, 4);
scrap.addItemEntry(<tfc:metal/nugget/tin>, 4);
scrap.addItemEntry(<tfc:metal/nugget/lead>, 6);









