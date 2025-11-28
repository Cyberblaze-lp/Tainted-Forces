//This file was created via CT-GUI! Editing it is not advised!
//Don't touch me!
//#Remove
//Don't touch me!
//#Add
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 12, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 6, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:support>, <ore:support>, <ore:support>]]);
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}), [<tconstruct:wooden_hopper>,<tfc:crop/product/jute_net>,<immersiveengineering:conveyor>]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}) * 3, [[<immersiveengineering:conveyor>, <ore:support>, <immersiveengineering:conveyor>], [null, <immersiveengineering:conveyor>, null]]);
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}).onlyWithTag({conveyorType: "immersiveengineering:uncontrolled"})]);
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}).onlyWithTag({conveyorType: "immersiveengineering:conveyor"})]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}) * 3, [[<immersiveengineering:conveyor>, <ore:bowl>],[<immersiveengineering:conveyor>, null], [<immersiveengineering:conveyor>, <ore:bowl>]]);
//File End
