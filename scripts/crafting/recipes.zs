//This file was created via CT-GUI! Editing it is not advised!
//Don't touch me!
//#Remove

//Don't touch me!
//#Add

recipes.addShaped(<ic2:quad_mox_fuel_rod>.withTag({advDmg: 0}), [[null, <tfc:metal/sheet/black_steel>, null],[<ic2:dual_mox_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <tfc:metal/sheet/black_steel>, <ic2:dual_mox_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})], [null, <tfc:metal/sheet/black_steel>, null]]);
recipes.addShaped(<ic2:quad_mox_fuel_rod>.withTag({advDmg: 0}), [[<ic2:mox_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <tfc:metal/sheet/black_steel>, <ic2:mox_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})],[<tfc:metal/sheet/black_steel>, <tfc:metal/sheet/black_steel>, <tfc:metal/sheet/black_steel>], [<ic2:mox_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <tfc:metal/sheet/black_steel>, <ic2:mox_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})]]);
recipes.addShaped(<ic2:quad_uranium_fuel_rod>.withTag({advDmg: 0}), [[<ic2:uranium_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <tfc:metal/sheet/black_steel>, <ic2:uranium_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})],[<tfc:metal/sheet/black_steel>, <tfc:metal/sheet/black_steel>, <tfc:metal/sheet/black_steel>], [<ic2:uranium_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <tfc:metal/sheet/black_steel>, <ic2:uranium_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})]]);
recipes.addShaped(<ic2:quad_uranium_fuel_rod>.withTag({advDmg: 0}), [[null, <tfc:metal/sheet/black_steel>, null],[<ic2:dual_uranium_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <tfc:metal/sheet/black_steel>, <ic2:dual_uranium_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})], [null, <tfc:metal/sheet/black_steel>, null]]);
recipes.addShaped(<ic2:dual_mox_fuel_rod>.withTag({advDmg: 0}), [[<ic2:mox_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <tfc:metal/sheet/black_steel>, <ic2:mox_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})]]);
recipes.addShaped(<ic2:dual_uranium_fuel_rod>.withTag({advDmg: 0}), [[<ic2:uranium_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <tfc:metal/sheet/black_steel>, <ic2:uranium_fuel_rod>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})]]);
recipes.addShaped(<cyberware:scanner>, [[<tfc:metal/rod/wrought_iron>, <cyberware:cybereyes>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}).onlyWithTag({cyberwareQuality: "cyberware.quality.scavenged"}), <tfc:metal/rod/wrought_iron>],[<tfc:metal/rod/wrought_iron>, <tfc:gem/diamond:3>, <tfc:metal/rod/wrought_iron>], [<tfc:metal/sheet/wrought_iron>, <tfc:metal/sheet/wrought_iron>, <tfc:metal/sheet/wrought_iron>]]);
recipes.addShaped(<cyberware:scanner>, [[<tfc:metal/rod/wrought_iron>, <cyberware:cybereyes>, <tfc:metal/rod/wrought_iron>],[<tfc:metal/rod/wrought_iron>, <tfc:gem/diamond:3>, <tfc:metal/rod/wrought_iron>], [<tfc:metal/sheet/wrought_iron>, <tfc:metal/sheet/wrought_iron>, <tfc:metal/sheet/wrought_iron>]]);
furnace.addRecipe(<minecraft:deadbush>, <ore:treeSapling>, 0.0);
recipes.addShaped(<mystgears:ember_gatling_gun>, [[<thaumcraft:vis_resonator>, <embers:aspectus_dawnstone>, <embers:aspectus_dawnstone>],[<thaumcraft:focus_1>.withTag({package: {complexity: 15, nodes: [{type: "MEDIUM", key: "ROOT"}, {type: "MEDIUM", key: "thaumcraft.BOLT"}, {"setting.duration": 0, "setting.power": 5, type: "EFFECT", key: "thaumcraft.FIRE"}], index: 0, power: 1.0 as float}, color: -42495, display: {Name: "Blank Lesser Focus"}}).onlyWithTag({package: {complexity: 15, nodes: [{type: "MEDIUM", key: "ROOT"}, {type: "MEDIUM", key: "thaumcraft.BOLT"}, {"setting.duration": 0, "setting.power": 5, type: "EFFECT", key: "thaumcraft.FIRE"}], index: 0, power: 1.0 as float}, color: -42495, display: {Name: "Blank Lesser Focus"}}), <embers:aspectus_dawnstone>, <embers:aspectus_dawnstone>], [<ore:plateIron>, <embers:aspectus_dawnstone>, <embers:aspectus_dawnstone>]]);
recipes.addShaped(<tfcthings:grindstone_diamond>.withTag({Unbreakable: 1, display: {Name: "Cosmic Gear"}}), [[<botania:manaresource:4>, <tfcthings:grindstone_diamond>, <botania:manaresource:4>]]);
recipes.addShaped(<tfcthings:grindstone_diamond>.withTag({Unbreakable: 1, display: {Name: "Cosmic Gear"}}), [[<thaumcraft:ingot:1>, <tfcthings:grindstone_diamond>, <thaumcraft:ingot:1>]]);
recipes.addShapeless(<ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte}) * 3, [<ore:wireTin>,<ore:wireTin>]);
recipes.addShapeless(<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}) * 3, [<ore:wireGold>,<ore:wireGold>]);
recipes.addShapeless(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}) * 3, [<ore:wireCopper>,<ore:wireCopper>]);

//File End
