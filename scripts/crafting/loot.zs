import loottweaker.LootTweaker;
import loottweaker.Functions;
import loottweaker.Conditions;
import loottweaker.LootPool;

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
dungeon.clear();
dungeon.addPool("main", 5.0, 8.0, 0.0, 2.0);
val dungeonMain = dungeon.getPool("main");


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
dungeonMain.addItemEntry(<minecraft:dye:4>, 70000);




function addEnchBooks(pool as LootPool){
    

    for enchant in game.enchantments {
        var weight as int;
        if(enchant.registryName has "minecraft"){
            weight = 4;
        } else {
            weight = 2;
        }
        pool.addItemEntry(<minecraft:enchanted_book>, weight, 2, [
            Functions.zenscript(function(stack, random, context){
                return <minecraft:enchanted_book>.withTag(
                    {StoredEnchantments: [{lvl: random.nextInt(1, enchant.maxLevel), id: enchant.id}]}
                );
            })
        ], []);
    }
}


val dungeonEnchant = dungeon.addPool("tf:enchants", 2, 3, 0, 0);
dungeonEnchant.addConditions([Conditions.randomChance(0.8)]);
addEnchBooks(dungeonEnchant);




val container = LootTweaker.getTable("tetra:forged/container_content").getPool("forged/container_content");
container.removeEntry("minecraft:diamond");
container.removeEntry("minecraft:emerald");
container.removeEntry("minecraft:golden_rail");
val containerEnchant = LootTweaker.getTable("tetra:forged/container_content").addPool("tf:enchants", 2, 3, 0, 4);
containerEnchant.addConditions([Conditions.randomChance(0.8)]);
addEnchBooks(containerEnchant);


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


LootTweaker.getTable("tetra:forged/metal_scrap_salvage").clear();
LootTweaker.getTable("tetra:forged/metal_scrap_salvage").addPool("forged/metal_scrap_salvage", 3.0, 5.0, 0.0, 2.0);
val scrap = LootTweaker.getTable("tetra:forged/metal_scrap_salvage").getPool("forged/metal_scrap_salvage");

scrap.addItemEntry(<tfc:metal/nugget/black_steel>, 10, 3);
scrap.addItemEntry(<tfc:metal/nugget/steel>, 10, 2);
scrap.addItemEntry(<tfc:metal/nugget/wrought_iron>, 4);
scrap.addItemEntry(<tfc:metal/nugget/titanium>, 20, 2);
scrap.addItemEntry(<tfc:metal/nugget/tin>, 40);
scrap.addItemEntry(<thaumcraft:nugget:5>, 60);
scrap.addItemEntry(<tfc:metal/nugget/lead>, 60);
scrap.addItemEntry(<thaumcraft:nugget:7>, 5);



LootTweaker.getTable("tetra:forged/beam_salvage").clear();
LootTweaker.getTable("tetra:forged/beam_salvage").addPool("forged/beam_salvage", 3.0, 5.0, 0.0, 2.0);
val beam = LootTweaker.getTable("tetra:forged/beam_salvage").getPool("forged/beam_salvage");

beam.addItemEntry(<tfc:metal/nugget/black_steel>, 15, 3);
beam.addItemEntry(<thaumcraft:nugget:5>, 20);
beam.addItemEntry(<tfc:metal/nugget/steel>, 10, 2);
beam.addItemEntry(<tfc:metal/nugget/wrought_iron>, 4);
beam.addItemEntry(<tfc:metal/nugget/titanium>, 40, 2);
beam.addItemEntry(<tfc:metal/nugget/tin>, 12);
beam.addItemEntry(<tfc:metal/nugget/lead>, 12);
beam.addItemEntry(<thaumcraft:nugget:7>, 5);
beam.addItemEntry(<mysticalmechanics:axle_iron>, 50, 1);

LootTweaker.getTable("tetra:forged/bolt_salvage").clear();
LootTweaker.getTable("tetra:forged/bolt_salvage").addPool("forged/bolt_salvage", 3.0, 5.0, 0.0, 2.0);
val bolt = LootTweaker.getTable("tetra:forged/bolt_salvage").getPool("forged/bolt_salvage");

bolt.addItemEntry(<tfc:metal/nugget/black_steel>, 15, 3);
bolt.addItemEntry(<tfc:metal/nugget/bronze>, 4);
bolt.addItemEntry(<tfc:metal/nugget/platinum>, 40, 2);
bolt.addItemEntry(<tfc:metal/ingot/copper>, 12);
bolt.addItemEntry(<tfc:metal/nugget/copper>, 12);
bolt.addItemEntry(<thaumcraft:nugget:5>, 60);
bolt.addItemEntry(<thaumcraft:nugget:7>, 5);
bolt.addItemEntry(<tfc:brass_mechanisms>, 50, 1);

LootTweaker.getTable("tetra:forged/vent_plate_salvage").clear();
LootTweaker.getTable("tetra:forged/vent_plate_salvage").addPool("forged/vent_plate_salvage", 3.0, 5.0, 0.0, 2.0);
val vent = LootTweaker.getTable("tetra:forged/vent_plate_salvage").getPool("forged/vent_plate_salvage");

vent.addItemEntry(<tfc:metal/nugget/black_steel>, 15, 3);
vent.addItemEntry(<tfc:metal/sheet/bronze>, 4);
vent.addItemEntry(<tfc:metal/nugget/platinum>, 40, 2);
vent.addItemEntry(<tfc:metal/sheet/copper>, 12);
vent.addItemEntry(<tfc:metal/nugget/copper>, 12);
vent.addItemEntry(<thaumcraft:nugget:5>, 30);
vent.addItemEntry(<thaumcraft:plate:3>, 5);
vent.addItemEntry(<mekanism:polyethene:2>, 30, 1);
vent.addItemEntry(<thaumcraft:nugget:7>, 5);
vent.addItemEntry(<contenttweaker:taint_tendril>, 5);

LootTweaker.getTable("tetra:forged/mesh_salvage").clear();
LootTweaker.getTable("tetra:forged/mesh_salvage").addPool("forged/mesh_salvage", 3.0, 5.0, 0.0, 2.0);
val mesh = LootTweaker.getTable("tetra:forged/mesh_salvage").getPool("forged/mesh_salvage");

mesh.addItemEntry(<tfc:metal/nugget/black_steel>, 15, 3);
mesh.addItemEntry(<tfc:metal/nugget/steel>, 4);
mesh.addItemEntry(<tfc:metal/nugget/tin>, 40, 2);
mesh.addItemEntry(<thaumcraft:nugget:5>, 30);
mesh.addItemEntry(<cyberware:component:2>, 40, 1);
mesh.addItemEntry(<thaumcraft:nugget:7>, 15);
mesh.addItemEntry(<contenttweaker:taint_tendril>, 50);






