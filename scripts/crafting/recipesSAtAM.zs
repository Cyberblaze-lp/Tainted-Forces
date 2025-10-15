//This file was created via CT-GUI! Editing it is not advised!
//Don't touch me!
//#Remove
recipes.removeShapeless(<nyx:meteor_dust>, [ <nyx:meteor_shard>]);
recipes.removeShaped(<nyx:meteor_dust>, [[null, null, null],[null, <nyx:meteor_shard>, null], [null, null, null]]);
furnace.remove(<nyx:meteor_ingot>, <nyx:meteor_shard>);
furnace.remove(<nyx:meteor_ingot>, <nyx:meteor_shard>);
//Don't touch me!
//#Add
recipes.addShapeless(<scannable:scanner>.withTag({energy: 5000}), [<scannable:scanner>,<thaumcraft:salis_mundus>]);
recipes.addShapeless(<tfc:firestarter>.withTag({"Quark:RuneColor": 1, ench: [{lvl: 4 as short, id: 34 as short}], display: {Name: "Bow Drill"}, "Quark:RuneAttached": 1 as byte}), [<minecraft:bow>,<ore:stickWood>]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mechmill"}), [<ore:paper>, <ore:gearRedstone>]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:refinerythaum"}), [<ore:paper>,<tfc:powder/flux>]);
//File End
