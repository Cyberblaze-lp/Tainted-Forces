// recipes related to the engineer tab, mostly machine stuff and how their products are balanced. also nukes.

import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Pulverizer;
import mods.ic2.MetalFormer;
import mods.ic2.ThermalCentrifuge;
import mods.tconstruct.Alloy;
import mods.immersiveengineering.Mixer;
import mods.thaumcraft.Infusion;
import mods.bloodmagic.BloodAltar;




recipes.addShaped(<ic2:ingot>, [[<ore:ingotOsmium>], [<ore:ingotConstantan>], [<ore:ingotZinc>]]);
recipes.addShaped(<immersiveintelligence:material_ingot:6> * 2, [[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>], [<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>]]);

mods.tconstruct.Casting.addBasinRecipe(<magneticraft:multiblock_column>, <quark:sturdy_stone>, <liquid:lead>, 576, true, 160);
mods.tconstruct.Casting.addBasinRecipe(<magneticraft:multiblock_parts:5>, <quark:iron_plate>, <liquid:iron>, 576, true, 160);

mods.tconstruct.Casting.addBasinRecipe(<thebetweenlands:rubber_block>, null, <liquid:rubber>, 1000, false, 160);
mods.tconstruct.Casting.addTableRecipe(<immersiveintelligence:material_plate:6>, null, <liquid:latex>, 250, false, 160);






//metallurgy & nyx stuff

mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 2000, <appliedenergistics2:material:45>, 0.1);

//QoL and automation recipes






//misc recipes
recipes.addShapeless(<immersiveintelligence:printed_page:1>.withTag({display: {Lore: ["The very paper seems to twist and warp around the symbols and pictograms describing this feat of eldritch engineering"], Name: "Tesseract Plans"}, text: "fwy yn mil a chwalu ei yna, itilaer ein orchudd i hunain eu amlygu rywun i rhaid, dduwiol yn ddod i           ________            \\______/                         .  | ;V; |  Sre'nut alse't          _|___|_  Ne                      | \\  /. | surai'inos r'ed        |   °~ | Ddiarc Laidromirp    |_/_\\_|                                                               __;A;__ /______\\Rezilib'atsliev         T'I ILODDA       TI IL'ODDAef wadd'r ddeoresma ddewid i lewhcmydd ry neh iar rwam       "}), [<immersiveintelligence:printed_page:3>.withTag({RepairCost: 0, display: {Lore: ["Even though the ink is faded beyond recognition, you could swear you can feel reality curling around where the symbols used to be. Perhaps a deeper understanding of the fabric of Reality itself may allow you to decipher it against all odds.... "], Name: "Mangled Tesseract Plans"}}).onlyWithTag({RepairCost: 0, display: {Lore: ["Even though the ink is faded beyond recognition, you could swear you can feel reality curling around where the symbols used to be. Perhaps a deeper understanding of the fabric of Reality itself may allow you to decipher it against all odds.... "], Name: "Mangled Tesseract Plans"}}),<astralsorcery:itemusabledust:1>,<botania:lightrelay>,<astralsorcery:iteminfusedglass>.reuse(),<botania:dice>]);
recipes.addShaped(<ic2:thick_neutron_reflector>, [[null, <ore:ingotHOPGraphite>, null],[<ic2:neutron_reflector>, <ore:plateBeryllium>, <ic2:neutron_reflector>], [null, <ore:ingotHOPGraphite>, null]]);
recipes.addShaped(<ic2:neutron_reflector>, [[<ore:dustTungsten>, <ore:dustCoal>, <ore:dustTungsten>],[<ore:dustCoal>, <ore:plateZinc>, <ore:dustCoal>], [<ore:dustTungsten>, <ore:dustCoal>, <ore:dustTungsten>]]);

//Fusion fuel changes

mods.immersiveengineering.Mixer.addRecipe(<liquid:ic2heavy_water>*4000, <liquid:salt_water>*4000, [<tfc:sea_ice>*20,<botania:rune>,<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans", crystalProperties: {collectiveCapability: 100, size: 900}}})] , 1000);
mods.thermalexpansion.Refinery.addRecipe(<liquid:heavywater> * 10000, <astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 20, size: 200, fract: 0, purity: 20, sizeOverride: -1}}}), <liquid:ic2heavy_water> * 4000, 5000);
mods.jei.JEI.addDescription(<liquid:ic2heavy_water>, "The crystal used in its creation needs to be max Size and Cutting, and attuned to Octans. Purity does not matter.");

mods.thermalexpansion.Transposer.addFillRecipe(<ic2:lithium_fuel_rod>.withTag({advDmg: 0}),<tfc:metal/sheet/black_steel> , <liquid:lithium>*1440, 2000);
mods.thermalexpansion.Transposer.addFillRecipe(<ic2:lithium_fuel_rod>.withTag({advDmg: 0}),<tfc:metal/sheet/black_steel> , <liquid:liquidlithium>*1440, 2000);

<ic2:lithium_fuel_rod>.addTooltip(format.yellow("Irradiate in an IC2 Nuclear Reactor to transform into Tritium. Yield is proportional to how much radiation it absorbed. Must be next to one or more Uranium/ MOX rods while reactor temp > 30%  BEWARE: Fully irradiated rods are destroyed."));
mods.ic2.MetalFormer.addExtrudingRecipe(<minecraft:bucket>, <ore:plateIron>);

mods.ic2.ThermalCentrifuge.addRecipe([<ic2:nuclear:7>,<ic2:nuclear:3>,<tfc:metal/dust/black_steel>], <ic2:nuclear:14>, 100);
mods.ic2.ThermalCentrifuge.addRecipe([<ic2:nuclear:7>*2,<ic2:nuclear:3>*2,<tfc:metal/dust/black_steel>*2], <ic2:nuclear:15>, 100);
mods.ic2.ThermalCentrifuge.addRecipe([<ic2:nuclear:7>*4,<ic2:nuclear:3>*4,<tfc:metal/dust/black_steel>*5], <ic2:nuclear:16>, 100);

mods.ic2.ThermalCentrifuge.addRecipe([<ic2:nuclear:7>,<ic2:nuclear:2>*4,<tfc:metal/dust/black_steel>], <ic2:nuclear:11>, 100);
mods.ic2.ThermalCentrifuge.addRecipe([<ic2:nuclear:7>*2,<ic2:nuclear:2>*8,<tfc:metal/dust/black_steel>*2], <ic2:nuclear:12>, 100);
mods.ic2.ThermalCentrifuge.addRecipe([<ic2:nuclear:7>*4,<ic2:nuclear:2>*16,<tfc:metal/dust/black_steel>*5], <ic2:nuclear:13>, 100);

mods.thermalexpansion.Pulverizer.addRecipe(<tfc:metal/dust/bismuth_bronze>, <tfc:metal/ingot/bismuth_bronze>, 2000);

mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/ingot>, <tfc:ceramics/unfired/mold/ingot>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/pick_head>, <tfc:ceramics/unfired/mold/pick_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/shovel_head>, <tfc:ceramics/unfired/mold/shovel_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/axe_head>, <tfc:ceramics/unfired/mold/axe_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/hoe_head>, <tfc:ceramics/unfired/mold/hoe_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/chisel_head>, <tfc:ceramics/unfired/mold/chisel_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/sword_blade>, <tfc:ceramics/unfired/mold/sword_blade>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/mace_head>, <tfc:ceramics/unfired/mold/mace_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/saw_blade>, <tfc:ceramics/unfired/mold/saw_blade>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/javelin_head>, <tfc:ceramics/unfired/mold/javelin_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/hammer_head>, <tfc:ceramics/unfired/mold/hammer_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/propick_head>, <tfc:ceramics/unfired/mold/propick_head>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/knife_blade>, <tfc:ceramics/unfired/mold/knife_blade>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfc:ceramics/fired/mold/scythe_blade>, <tfc:ceramics/unfired/mold/scythe_blade>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfctech:ceramics/mold/sleeve>, <tfctech:ceramics/unfired/sleeve>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfctech:ceramics/mold/rackwheel_piece>, <tfctech:ceramics/unfired/rackwheel_piece>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfctech:ceramics/mold/glass_pane>, <tfctech:ceramics/unfired/glass_pane>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tfctech:ceramics/mold/glass_block>, <tfctech:ceramics/unfired/glass_block>, 3600);

