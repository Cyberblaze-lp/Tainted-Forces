// governs the balance of the different magic mods and integrates them with the rest of the mods
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.ArcaneWorkbench;
import mods.botaniatweaks.Agglomeration;
import mods.astralsorcery.Altar;







//Nivram Recipes

recipes.addShaped(<thebetweenlands:item_cage>, [[<thebetweenlands:weedwood_plank_slab>, <ore:ingotSyrmorite>, <thebetweenlands:weedwood_plank_slab>], [<ore:rodBlizz>, null, <ore:rodBlizz>], [null, <thebetweenlands:weedwood_plank_slab>, null]]);

mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot>);
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness>);
mods.thaumcraft.Crucible.registerRecipe("betterthaumium", "METALLURGY@2",<thaumcraft:ingot>,<ore:ingotBismuth>,[<aspect:praecantatio>*5,<aspect:terra>*5]);
mods.thaumcraft.Infusion.registerRecipe("FLEXPACK", "THAUMOSTATIC_HARNESS", <thaumicaugmentation:thaumostatic_harness>,10, [<aspect:potentia>*50,<aspect:machina>*25, <aspect:volatus>*25, <aspect:motus>*25],<minecraft:leather_chestplate>,[<thaumcraft:morphic_resonator>,<thaumcraft:morphic_resonator>,<ore:plateBrass>, <ore:plateBrass>, <thaumcraft:metal_alchemical>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:mind>]);
mods.thaumcraft.Infusion.registerRecipe("RADIOBEACON", "THAUMOSTATIC_HARNESS",<cyberware:beacon_large>,10, [<aspect:aer>*50 , <aspect:volatus>*20, <aspect:permutatio>*20, <aspect:potentia>*20],<thaumcraft:metal_alchemical>,[<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:morphic_resonator>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:morphic_resonator>]);
mods.thaumcraft.Infusion.registerRecipe("SUPERFUEL", "IGNATIUSFUEL",<contenttweaker:ignatius_fuel>,5, [<aspect:ignis>*10 , <aspect:alkimia>*5, <aspect:permutatio>*5, <aspect:desiderium>*5],<ore:clusterIgnatius>,[<ore:dustPhosphorus>,<advancedrocketry:thermite>,<advancedrocketry:thermite>,<embers:ember_cluster>,<ore:dustPyrotheum>]);

mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_2>);
mods.thaumcraft.Infusion.registerRecipe("FOCI", "BASEAUROMANCY", <thaumcraft:focus_2>,3, [<aspect:ordo>*50,<aspect:praecantatio>*25,<aspect:machina>*10],<thaumcraft:focus_1>,[<ore:quicksilver>,<ore:quicksilver>,<ore:enderpearl>,<cyberware:component:5>,<ore:gemDiamond>]);


mods.thaumcraft.Infusion.registerRecipe("waystones2", "BASEELDRITCH", <thebetweenlands:waystone>,7, [<aspect:motus>*20, <aspect:alienis>*20, <aspect:terra>*50, <aspect:permutatio>*20],<thebetweenlands:items_misc:44>,[<thebetweenlands:betweenstone_pillar>,<thebetweenlands:betweenstone_pillar>,<thebetweenlands:betweenstone_pillar>,<thebetweenlands:betweenstone_brick_wall>,<thebetweenlands:betweenstone_brick_wall>,<ore:ingotVoid>, <ore:ingotVoid>,<thebetweenlands:empty_amate_map>]);


//Si'vlu Recipes
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingetAnyBronze>, 4000);

recipes.remove(<astralsorcery:blockblackmarble>);

			
			
			
Agglomeration.addRecipe(<tconstruct:materials:50>,[<minecraft:skull:3>,<ore:dustAstralStarmetal>,<embers:seed_gold>],200000,0x555555,0xFFFF00,<ore:blockGold>,<ore:blockSeared>,<astralsorcery:blockworldilluminator>,null,null,<botania:quartztypedark>);
Agglomeration.addRecipe(<astralsorcery:blockblackmarble>*8,[<minecraft:fire_charge>,<astralsorcery:blockmarble>*8,<ore:dustAsh>],100000,0xFFFFFF,0xFF8700,<ore:blockCoal>,<ore:obsidian>,<minecraft:magma>,null,null,null);







//mekanism gating
recipes.remove(<mekanism:basicblock:8>);
recipes.remove(<mekanism:machineblock:8>);




mods.astralsorcery.Altar.addTraitAltarRecipe("tainted-forces:shaped/internal/altar/ultimate_circuits", <pneumaticcraft:printed_circuit_board>*24, 10000, 100, [
  <appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>,
  <appliedenergistics2:material:24>, <astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {trait: "astralsorcery.constellation.alcara", crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, sizeOverride: -1}}}),<appliedenergistics2:material:23>,
  <astralsorcery:iteminfusedglass>,<astralsorcery:iteminfusedglass>,<astralsorcery:iteminfusedglass>,
  null,null,null,null,
  null,null, <appliedenergistics2:material:12>,<appliedenergistics2:material:12>,
  <astralsorcery:iteminfusedglass>,<astralsorcery:iteminfusedglass>,
  null,null,null,<appliedenergistics2:material:24>,<appliedenergistics2:material:23>,null
  

],
"astralsorcery.constellation.alcara");

mods.astralsorcery.Altar.addTraitAltarRecipe("tainted-forces:shaped/internal/altar/ultimate_circuits", <pneumaticcraft:transistor>*12, 10000, 100, [
  <appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>,
  <appliedenergistics2:material:24>, <astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans", crystalProperties: {collectiveCapability: 100, size: 900, sizeOverride: -1}}}),<appliedenergistics2:material:23>,
  <astralsorcery:iteminfusedglass>,<astralsorcery:iteminfusedglass>,<astralsorcery:iteminfusedglass>,
  null,null,null,null,
  null,null, <appliedenergistics2:material:12>,<appliedenergistics2:material:12>,
  <astralsorcery:iteminfusedglass>,<astralsorcery:iteminfusedglass>,
  null,null,null,<appliedenergistics2:material:24>,<appliedenergistics2:material:23>,null
  

],
"astralsorcery.constellation.octans");
mods.thermalexpansion.Centrifuge.addRecipe([<mekanism:controlcircuit:3>*12,<astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 10, size: 20, fract: 0, purity: 10, sizeOverride: -1}}}) ],<pneumaticcraft:transistor>*12, null, 5000);
mods.thermalexpansion.Centrifuge.addRecipe([<mekanism:controlcircuit:3>*24,<astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 10, size: 20, fract: 0, purity: 10, sizeOverride: -1}}}) ],<pneumaticcraft:printed_circuit_board>*24, null, 5000);


<ore:circuitUltimate>.addItems([<pneumaticcraft:printed_circuit_board>, <pneumaticcraft:transistor>]);

<pneumaticcraft:printed_circuit_board>.displayName = "Rough Ultimate Circuit";
<pneumaticcraft:transistor>.displayName = "Coarse Ultimate Circuit";

<astralsorcery:blockattunementaltar>.addTooltip(format.yellow("Can be automated"));
<astralsorcery:blockmachine:1>.addTooltip(format.yellow("Can be automated"));

mods.jei.JEI.addDescription(<pneumaticcraft:printed_circuit_board>, ["The crystal used to craft this needs to be max Size and Cutting, and be attuned to Alcara. Purity does not matter.","You can either use this right away, or centrifuge it to get the crystal back. Well, what's left of it, anyway.","The crystal can then be re-grown, converted, attuned, cut, etc., forming a closed loop."]);
mods.jei.JEI.addDescription(<pneumaticcraft:transistor>, ["The crystal used to craft this needs to be max Size and Cutting, and be attuned to Octans. Purity does not matter.","You can either use this right away, or centrifuge it to get the crystal back. Well, what's left of it, anyway.","The crystal can then be re-grown, converted, attuned, cut, etc., forming a closed loop."]);

recipes.remove(<mekanism:machineblock3:1>);




// blood magic stuff
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:1>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:2>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:3>);

mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate>, <minecraft:netherrack>, 0, 1000,40,40);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:1>, <thebetweenlands:betweenstone>, 1, 2000,80,70);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:2>, <thebetweenlands:pitstone>, 2, 5000,200,160);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:3>, <thaumcraft:stone_eldritch_tile>, 3, 15000,600,400);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:4>, <thaumicaugmentation:stone:10>, 4, 30000,1200,1000);
