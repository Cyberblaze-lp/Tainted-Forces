#download_reobf_mapping 
import native.net.minecraft.item.ItemStack;
import native.net.minecraft.util.ResourceLocation;

import native.thaumcraft.api.ThaumcraftApi;
import native.thaumcraft.api.crafting.CrucibleRecipe;
import native.thaumcraft.api.aspects.Aspect;
import native.thaumcraft.api.aspects.AspectList;

import mods.thaumcraft.Infusion;
import mods.immersiveengineering.DieselHandler;
import mods.immersivetechnology.GasTurbine;
import mods.terrafirmacraft.Alloy;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.ItemRegistry;
import mods.thaumcraft.ArcaneWorkbench;
import mods.immersivetechnology.MeltingCrucible;
import mods.thaumcraft.Crucible;
import crafttweaker.item.IItemStack;


<immersiveengineering:material:6>.setAspects(<aspect:ignis>*20, <aspect:potentia>*20);
<tfc:metal/ingot/bismuth>.setAspects(<aspect:metallum>*10, <aspect:sensus>*5);
<tfc:metal/ingot/zinc>.setAspects(<aspect:metallum>*10, <aspect:perditio>*5);
<tfc:metal/ingot/lithium>.setAspects(<aspect:metallum>*10, <aspect:potentia>*5);
<tfc:metal/ingot/black_bronze>.setAspects(<aspect:metallum>*10, <aspect:tenebrae>*5);
<tfc:metal/ingot/bismuth_bronze>.setAspects(<aspect:metallum>*10, <aspect:fabrico>*5);
<tfc:metal/ingot/pig_iron>.setAspects(<aspect:metallum>*15, <aspect:bestia>*5);
<tfc:metal/ingot/black_steel>.setAspects(<aspect:metallum>*15, <aspect:ordo>*5,<aspect:tenebrae>*10);
<tfc:metal/ingot/tungsten>.setAspects(<aspect:metallum>*15,<aspect:machina>*10,<aspect:ignis>*30);
<tfc:metal/ingot/tungsten_steel>.setAspects(<aspect:metallum>*20,<aspect:ignis>*10,<aspect:praemunio>*20);




<contenttweaker:taint_tendril>.setAspects(<aspect:vitium>*10,<aspect:desiderium>*5,<aspect:victus>*5);
<contenttweaker:taint_goo>.setAspects(<aspect:vitium>*10,<aspect:aqua>*10,<aspect:victus>*10, <aspect:alkimia>*2);
<thaumcraft:taint_fibre>.setAspects(<aspect:vitium>*10,<aspect:victus>*5);
<tfc:powder/flux>.setAspects(<aspect:vitium>*2,<aspect:ordo>*2,<aspect:terra>*5);

<minecraft:magma>.setAspects(<aspect:ignis>*10, <aspect:terra>*5);
for item in <ore:concrete>.itemArray
{
    item.setAspects(<aspect:terra>*5, <aspect:ordo>*2,<aspect:fabrico>*2);
}




<entity:minecraft:zombie>.setAspects([<aspect:exanimis>*5, <aspect:humanus>*10, <aspect:terra>*5]);
<entity:cyberware:cyberzombie>.setAspects([<aspect:exanimis>*5, <aspect:humanus>*10, <aspect:machina>*10, <aspect:metallum>*5]);
<entity:minecraft:skeleton>.setAspects([<aspect:exanimis>*5, <aspect:humanus>*10, <aspect:mortuus>*5]);
<entity:minecraft:creeper>.setAspects([<aspect:ignis>*5, <aspect:herba>*10, <aspect:perditio>*5]);
<entity:minecraft:spider>.setAspects([<aspect:bestia>*10, <aspect:mortuus>*5, <aspect:sensus>*5]);
<entity:minecraft:witch>.setAspects([<aspect:humanus>*10, <aspect:aversio>*5, <aspect:alkimia>*5]);
<entity:minecraft:enderman>.setAspects([<aspect:humanus>*10, <aspect:tenebrae>*5, <aspect:alienis>*10]);
<entity:embers:ancient_golem>.setAspects([<aspect:machina>*10, <aspect:tenebrae>*5, <aspect:ignis>*5,<aspect:terra>*10]);
<entity:minecraft:slime>.setAspects([<aspect:aqua>*10, <aspect:victus>*10, <aspect:alkimia>*5]);

<entity:thaumcraft:taintacle>.setAspects([<aspect:vitium>*15, <aspect:victus>*10, <aspect:sensus>*10]);
<entity:thaumcraft:taintseed>.setAspects([<aspect:vitium>*25, <aspect:victus>*10, <aspect:aqua>*10, <aspect:permutatio>*10]);

<minecraft:coal>.setAspects(<aspect:ignis>*4,<aspect:potentia>*4);
<minecraft:coal:1>.setAspects(<aspect:ignis>*4,<aspect:potentia>*4);
<tfc:ore/bituminous_coal>.setAspects(<aspect:ignis>*4,<aspect:potentia>*4);
<tfc:ore/lignite>.setAspects(<aspect:ignis>*4,<aspect:potentia>*4);




mods.thaumcraft.Crucible.registerRecipe("alumentumfromcoke", "ALUMENTUM", <thaumcraft:alumentum>*2, <ore:fuelCoke>, [<aspect:ignis>*20, <aspect:potentia>*20, <aspect:perditio>*10]);

mods.thaumcraft.Crucible.registerRecipe("labmeat", "LABMEAT", <tfc:food/bear>*3, <tfc:food/bear>, [<aspect:victus>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("labrennet", "LABMEAT", <firmalife:rennet>*5, <firmalife:rennet>, [<aspect:victus>*10, <aspect:permutatio>*5]);

mods.thaumcraft.Crucible.registerRecipe("springwater", "LIQUIDDEATH", <forge:bucketfilled>.withTag({FluidName: "hot_water", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "salt_water", Amount: 1000}), [<aspect:victus>*25, <aspect:ignis>*5]);

mods.thaumcraft.Crucible.registerRecipe("glowstonefix", "HEDGEALCHEMY@1", <minecraft:glowstone_dust>*2, <minecraft:glowstone_dust>, [<aspect:sensus>*5, <aspect:lux>*10]);
mods.thaumcraft.Crucible.registerRecipe("gunpowderfix", "HEDGEALCHEMY@1", <minecraft:gunpowder>*2, <minecraft:gunpowder>, [<aspect:ignis>*10, <aspect:perditio>*10, <aspect:alkimia>*5]);


mods.thaumcraft.Crucible.registerRecipe("claydupe", "HEDGEALCHEMY@2", <minecraft:clay_ball>*2, <minecraft:clay_ball>, [<aspect:aqua>*5, <aspect:terra>*5]);
mods.thaumcraft.Crucible.registerRecipe("redstonefromsalt", "HEDGEALCHEMY@2", <minecraft:redstone>, <ore:gemChippedRuby>, [<aspect:potentia>*10, <aspect:mortuus>*1]);
mods.thaumcraft.Crucible.registerRecipe("stringfix", "HEDGEALCHEMY@2", <minecraft:string>, <ore:straw>, [<aspect:fabrico>*5, <aspect:bestia>]);
mods.thaumcraft.Crucible.registerRecipe("webfix", "HEDGEALCHEMY@2", <minecraft:web>, <ore:string>, [<aspect:vinculum>*5]);
mods.thaumcraft.Crucible.registerRecipe("jute", "HEDGEALCHEMY@2", <tfc:crop/product/jute_fiber>, <ore:thatch>, [<aspect:herba>*5, <aspect:vinculum>*5]);
mods.thaumcraft.Crucible.registerRecipe("THORIUMTRANSMUTATION", "NUCLEAR", <tfc:metal/ingot/uranium>, <ore:ingotThorium>, [<aspect:potentia>*10,<aspect:permutatio>*5, <aspect:mortuus>*5]);
mods.thaumcraft.Crucible.registerRecipe("coolant", "NUCLEAR", <forge:bucketfilled>.withTag({FluidName: "ic2coolant", Amount: 1000}), <minecraft:bucket>, [<aspect:ignis>*20,<aspect:permutatio>*20, <aspect:gelum>*20]);

mods.thaumcraft.Crucible.registerRecipe("firebrick1", "FIREBRICK", <tfc:ceramics/fired/fire_brick>, <tfc:ore/small/wolframite>, [<aspect:ignis>*5,<aspect:praemunio>, <aspect:terra>*5]);
mods.thaumcraft.Crucible.registerRecipe("firebrick2", "FIREBRICK", <tfc:ceramics/fired/fire_brick>*2, <tfc:ore/wolframite:1>, [<aspect:ignis>*10,<aspect:praemunio>*2, <aspect:terra>*10]);
mods.thaumcraft.Crucible.registerRecipe("firebrick3", "FIREBRICK", <tfc:ceramics/fired/fire_brick>*3, <tfc:ore/wolframite>, [<aspect:ignis>*15,<aspect:praemunio>*3, <aspect:terra>*15]);
mods.thaumcraft.Crucible.registerRecipe("firebrick4", "FIREBRICK", <tfc:ceramics/fired/fire_brick>*5, <tfc:ore/wolframite:2>, [<aspect:ignis>*25,<aspect:praemunio>*5, <aspect:terra>*25]);

mods.thaumcraft.Infusion.registerRecipe("biomind", "MINDBIOTHAUMIC", <thaumcraft:mind:1>, 3, [<aspect:aqua>*20, <aspect:cognitio>*10, <aspect:machina>*5], <thaumcraft:mind>, [<thaumcraft:brain>, <thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>, <thaumcraft:tube>]);


mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<tfc:metal/dust/uranium>*2, <tfc:ore/pitchblende>, 40);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<ic2:nuclear:5>, <tfc:ore/pitchblende>, 60);

mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<ic2:nuclear:7>, <ic2:nuclear:11>, 95);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<ic2:nuclear:7>*2, <ic2:nuclear:12>, 95);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<ic2:nuclear:7>*4, <ic2:nuclear:13>, 95);

mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<ic2:nuclear:7>*10, <ic2:nuclear:14>, 95);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<ic2:nuclear:7>*20, <ic2:nuclear:15>, 95);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<ic2:nuclear:7>*40, <ic2:nuclear:16>, 95);

mods.thaumcraft.Infusion.registerRecipe("EMBERCRYSTALLIZATION", "EMBERCRYSTALLIZATION", <embers:crystal_ember>, 1, [<aspect:ordo>*10, <aspect:vitreus>*10], <thaumcraft:alumentum>, [<embers:dust_ember>,<embers:dust_ember>]);


mods.thaumcraft.Infusion.registerRecipe("URANIUMROD", "NUCLEAR", <ic2:uranium_fuel_rod>, 7, [<aspect:potentia>*150, <aspect:mortuus>*100, <aspect:alkimia>*50], <ic2:nuclear:0>, [<ore:plateZircaloy>,<ore:plateZircaloy>,<embers:blasting_core>]);
mods.thaumcraft.Infusion.registerRecipe("MOXROD", "NUCLEAR", <ic2:mox_fuel_rod>, 7, [<aspect:potentia>*150, <aspect:mortuus>*100, <aspect:alkimia>*50], <ic2:nuclear:4>, [<ore:plateZircaloy>,<ore:plateZircaloy>,<embers:blasting_core>]);



<thaumcraft:amber>.addTooltip(format.gold("Obtained by mining petrified wood ore"));
<thaumcraft:nugget:10>.addTooltip(format.gold("Obtained from gem and magnetite deposits"));
<minecraft:quartz>.addTooltip(format.gold("Found in Quartz-rich Stone"));

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("minds 2.0", "MINDCLOCKWORK", 50, [<aspect:ordo>,<aspect:ignis>], <thaumcraft:mind>, [[null,<thaumcraft:mechanism_simple>,null],[<ore:ingotRedAlloy>,<thaumcraft:focus_1>,<ore:ingotRedAlloy> ],[<thaumcraft:mechanism_simple>, null, <thaumcraft:mechanism_simple>]]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("auracrafter 2.0", "ARCANEPATTERNCRAFTER", 50, [<aspect:ordo>,<aspect:terra>], <thaumcraft:pattern_crafter>, [[<thaumcraft:mechanism_simple>,<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_simple>],[<thaumcraft:vis_resonator>,<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_simple>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mechcrafter 2.0", "ARCANEPATTERNCRAFTER", 50, [<aspect:ordo>,<aspect:terra>], <mystgears:crafter_mechanical>, [[<thaumcraft:mechanism_simple>,<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_simple>],[<thaumcraft:mechanism_simple>,<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_simple>]]);


mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("motors 2.0", "MOTOR", 100, [<aspect:ordo>,<aspect:aer>], <mystgears:essentia_motor>*2, [[<thaumcraft:plank_greatwood>,<thaumcraft:nugget:10>,<thaumcraft:plank_greatwood>],[<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_simple>,<thaumcraft:plank_greatwood> ]]);


mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("centrifuge 2.0", "CENTRIFUGE", 100, [<aspect:ordo>,<aspect:perditio>], <thaumcraft:centrifuge>, [[null,<thaumcraft:tube>, null],[<thaumcraft:mechanism_simple>,<thaumcraft:nugget:10>,<thaumcraft:mechanism_simple>],[null, <thaumcraft:tube>, null] ]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("slurrypump 2.0", "IMPROVEDSMELTING", 75, [<aspect:ordo>,<aspect:aer>], <thaumcraft:smelter_aux>, [[<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>],[<thaumcraft:mechanism_simple>,<ore:leather>,<thaumcraft:mechanism_simple>],[null, <ore:leather>, null] ]);


mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("constructs 2.0", "TUBES", 75, [<aspect:ordo>*3,<aspect:perditio>*3], <thaumcraft:metal_alchemical>, [[<thaumcraft:tube>,<thaumcraft:plank_greatwood>,<thaumcraft:tube>],[<thaumcraft:tube>,<thaumcraft:mechanism_simple>,<thaumcraft:tube>],[<thaumcraft:tube>,<thaumcraft:plank_greatwood>,<thaumcraft:tube>] ]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("buffers 2.0", "TUBES", 15, [], <thaumcraft:tube_buffer>, [[null,<thaumcraft:tube>,null],[<thaumcraft:tube>,<thaumcraft:mechanism_simple>,<thaumcraft:tube>],[null,<thaumcraft:tube>,null] ]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tubes 2.0", "TUBES", 15, [<aspect:aqua>*2], <thaumcraft:tube>*16, [[<ore:nuggetQuicksilver>,<ore:nuggetQuicksilver>,<ore:nuggetQuicksilver>],[<ore:plateLead>,<ore:plateLead>,<ore:plateLead>],[<ore:nuggetQuicksilver>,<ore:nuggetQuicksilver>,<ore:nuggetQuicksilver>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("alembics 2.0", "ESSENTIASMELTER", 15, [<aspect:aqua>,<aspect:ordo>,<aspect:perditio>], <thaumcraft:alembic>, [[<thaumcraft:plank_greatwood>, <tfc:brass_mechanisms>, <thaumcraft:plank_greatwood>],[<thaumcraft:plank_greatwood>, <tfc:brass_mechanisms>, <thaumcraft:plank_greatwood>],[<thaumcraft:plank_greatwood>, <tfc:brass_mechanisms>, <thaumcraft:plank_greatwood>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("betterbellows", "BELLOWS", 15, [<aspect:aer>], <thaumcraft:bellows>, [<tfc:bellows>,<thaumcraft:mechanism_simple>]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("betterturrets", "BASICTURRET", 100, [<aspect:aer>], <thaumcraft:turret>*3, [[null, <thaumcraft:mechanism_simple>,null],[<ore:stickIron>, <thaumcraft:mind>,<ore:stickIron>],[<ore:stickIron>, null, <ore:stickIron>]]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("bettervent", "IMPROVEDSMELTING2", 150, [<aspect:aer>,<aspect:ordo>], <thaumcraft:smelter_vent>, [[<thaumcraft:fabric>,<thaumcraft:fabric>, <thaumcraft:fabric>],[<thaumcraft:fabric>,<embers:blasting_core>, <thaumcraft:fabric>],[<ore:plateIron>,<embers:blasting_core>, <ore:plateIron>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("bettersmelter", "ESSENTIASMELTER@2", 50, [<aspect:ignis>], <thaumcraft:smelter_basic>, [[<ore:sheetBrass>, <ore:plateIron>,<ore:sheetBrass>],[<ore:concrete>,<ore:plateIron>, <ore:concrete>],[<ore:concrete>, <ore:concrete>,<ore:concrete>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("bettermechanism", "BASEARTIFICE", 20, [], <thaumcraft:mechanism_simple>, [[<ore:tallow>, <tfc:brass_mechanisms>],[<ore:stickIron>,<tfc:brass_mechanisms>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("RADIOPOST", "THAUMOSTATIC_HARNESS", 100, [<aspect:aer>*2], <cyberware:radio_post>*6, [[<ore:stickIron>,<thaumcraft:tube>,<ore:stickIron>],[<ore:stickIron>,null,<ore:stickIron>],[<ore:stickIron>,<thaumcraft:tube>,<ore:stickIron>]]);



ItemRegistry.registerItemMetal(<tfc:brass_mechanisms>, "brass", 72, true);

mods.thaumcraft.Infusion.registerRecipe("dropofevil", "DROPOFEVIL", <extrautils2:ingredients:10>, 5, [<aspect:tenebrae>*25, <aspect:vitium>*10, <aspect:desiderium>*10], <thaumcraft:alumentum>, [<tconstruct:soil:3>, <ore:quicksilver>]);

//quicksilver stuff

mods.thaumcraft.Infusion.registerRecipe("betterbore", "ARCANEBORE", <thaumcraft:turret:2>, 4, [<aspect:machina>*50, <aspect:vacuos>*25, <aspect:motus>*25,<aspect:potentia>*100,<aspect:terra>*250], <thaumcraft:turret>, [<thaumcraft:vis_resonator>,<thaumcraft:focus_1>.withTag({package: {complexity: 14, nodes: [{type: "MEDIUM", key: "ROOT"}, {type: "MEDIUM", key: "thaumcraft.BOLT"}, {"setting.power": 3, type: "EFFECT", key: "thaumcraft.EARTH"}], index: 0, power: 1.0 as float}, srt: -1937637418, color: -11091968}), <ore:plateBrass>]);

mods.thaumcraft.Infusion.registerRecipe("harvestseal", "SEALHARVEST", <thaumcraft:seal:7>, 1, [<aspect:herba>*10, <aspect:ordo>*10, <aspect:humanus>*10], <thaumcraft:seal>, [<minecraft:golden_hoe>, <minecraft:golden_hoe>]);



mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<minecraft:coal:1>*4, <thaumcraft:alumentum>, 85);



mods.immersiveengineering.DieselHandler.addFuel(<liquid:liquefacted_lumen>, 20000);
DieselHandler.addDrillFuel(<liquid:liquefacted_lumen>);
DieselHandler.addDrillFuel(<liquid:shallowbreath>);
DieselHandler.addDrillFuel(<liquid:refined_fuel>);
DieselHandler.addDrillFuel(<liquid:refined_biofuel>);

mods.immersiveengineering.DieselHandler.addFuel(<liquid:refined_fuel>, 3);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:refined_biofuel>, 2);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:liquefacted_lumen>, 3);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:shallowbreath>, 1);
mods.immersiveengineering.Mixer.addRecipe(<liquid:liquefacted_lumen>*8000, <liquid:creosote>*1000,[<thaumcraft:alumentum>*2,<ore:nuggetQuicksilver>,<thebetweenlands:items_misc:44>], 30000);
GasTurbine.addFuel(<liquid:carbon_dioxide> * 2000, <liquid:liquefacted_lumen>*250, 10);



<contenttweaker:taint_tendril>.displayName = "Taint Tendril";
<contenttweaker:taint_goo>.displayName = "Tainted Goo";

<embers:dawnstone_anvil>.displayName = "Automatic Anvil";



//jade for warded jars
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarschipped", "WARDEDJARS", 10, [], <thaumcraft:jar_normal>*2, [[<ore:gemChippedJade>, <ore:concrete>,<ore:gemChippedJade>],[<ore:gemChippedJade>, null,<ore:gemChippedJade>],[<ore:gemChippedJade>, <ore:gemChippedJade>,<ore:gemChippedJade>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarsflawed", "WARDEDJARS", 20, [], <thaumcraft:jar_normal>*4, [[<ore:gemFlawedJade>, <ore:concrete>,<ore:gemFlawedJade>],[<ore:gemFlawedJade>, null,<ore:gemFlawedJade>],[<ore:gemFlawedJade>, <ore:gemFlawedJade>,<ore:gemFlawedJade>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarsnormal", "WARDEDJARS", 40, [], <thaumcraft:jar_normal>*8, [[<ore:gemJade>, <ore:concrete>,<ore:gemJade>],[<ore:gemJade>, null,<ore:gemJade>],[<ore:gemJade>, <ore:gemJade>,<ore:gemJade>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarsflawless", "WARDEDJARS", 80, [], <thaumcraft:jar_normal>*16, [[<ore:gemFlawlessJade>, <ore:concrete>,<ore:gemFlawlessJade>],[<ore:gemFlawlessJade>, null,<ore:gemFlawlessJade>],[<ore:gemFlawlessJade>, <ore:gemFlawlessJade>,<ore:gemFlawlessJade>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarsexquisite", "WARDEDJARS", 160, [], <thaumcraft:jar_normal>*32, [[<ore:gemExquisiteJade>, <ore:concrete>,<ore:gemExquisiteJade>],[<ore:gemExquisiteJade>, null,<ore:gemExquisiteJade>],[<ore:gemExquisiteJade>, <ore:gemExquisiteJade>,<ore:gemExquisiteJade>]]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("bettervisresonator", "UNLOCKAUROMANCY@1", 50, [<aspect:aer>,<aspect:aqua>], <thaumcraft:vis_resonator>, [[<ore:nuggetIron>,<ore:gemQuartz>,<ore:nuggetIron>],[<ore:nuggetIron>,<ore:gemFlawlessOpal>,<ore:nuggetIron>],[<ore:nuggetIron>,<ore:gemQuartz>,<ore:nuggetIron>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("betterinputtransfuser", "ESSENTIATRANSPORT", 500, [<aspect:aer>,<aspect:aqua>], <thaumcraft:essentia_input>, [[<ore:plateBrass>,<minecraft:dispenser>,<ore:plateBrass>],[<ore:plateIron>,<thaumcraft:metal_alchemical_advanced>,<ore:plateIron>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("betteroutputtransfuser", "ESSENTIATRANSPORT", 500, [<aspect:aer>,<aspect:aqua>], <thaumcraft:essentia_output>, [[<ore:plateBrass>,<minecraft:hopper>,<ore:plateBrass>],[<ore:plateIron>,<thaumcraft:metal_alchemical_advanced>,<ore:plateIron>]]);




//BL herb duplication
mods.thaumcraft.Crucible.registerRecipe("1", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Azuwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3,<thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Azuwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}) , [<aspect:aversio>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("2","ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Armaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Armaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:desiderium>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("3", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byariis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byariis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:vitium>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("4","ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byrginaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byrginaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:aqua>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("5", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Celawynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Celawynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:bestia>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("6", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Dayuniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Dayuniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:cognitio>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("7", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Fergalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Fergalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:terra>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("8", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Firnalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Firnalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:ignis>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("9", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Freiwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Freiwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:sensus>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("10", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Geoliirgaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Geoliirgaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:alienis>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("11", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Ordaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Ordaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:potentia>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("12", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yeowynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yeowynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:victus>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("13", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yunugaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yunugaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:aer>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("14", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yihinren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yihinren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:vinculum>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("15", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Wodren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Wodren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:spiritus>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("16", "ASPECTRUS", <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Uduriis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}})*3, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Uduriis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), [<aspect:perditio>*10, <aspect:fabrico>*5]);


ItemRegistry.registerArmor(<thaumcraft:fortress_helm>, 50.0, 70.0,65.0);
ItemRegistry.registerArmor(<thaumcraft:fortress_chest>, 50.0, 70.0,65.0);
ItemRegistry.registerArmor(<thaumcraft:fortress_legs>, 50.0, 70.0,65.0);

ItemRegistry.registerArmor(<thaumicaugmentation:thaumium_robes_hood>, 20.0, 50.0, 30.0);
ItemRegistry.registerArmor(<thaumicaugmentation:thaumium_robes_chestplate>, 20.0, 50.0, 30.0);
ItemRegistry.registerArmor(<thaumicaugmentation:thaumium_robes_leggings>, 20.0, 50.0, 30.0);

ItemRegistry.registerArmor(<thaumcraft:void_robe_helm>, 55.0, 70.0,50.0);
ItemRegistry.registerArmor(<thaumcraft:void_robe_chest>, 505.0, 70.0,50.0);
ItemRegistry.registerArmor(<thaumcraft:void_robe_legs>, 55.0, 70.0,50.0);
ItemRegistry.registerArmor(<thaumicaugmentation:void_boots>, 55.0, 70.0,50.0);


// metal chest conversion

mods.thaumcraft.SalisMundus.addSingleConversion(<ore:chestWood>, <thaumcraft:hungry_chest>, "HUNGRYCHEST");
mods.thaumcraft.SalisMundus.addSingleConversion(<ore:chestCopper>, <metalchests:metal_hungry_chest:0>, "HUNGRYCHEST");
mods.thaumcraft.SalisMundus.addSingleConversion(<ore:chestIron>, <metalchests:metal_hungry_chest:1>, "HUNGRYCHEST");
mods.thaumcraft.SalisMundus.addSingleConversion(<ore:chestSilver>, <metalchests:metal_hungry_chest:2>, "HUNGRYCHEST");
mods.thaumcraft.SalisMundus.addSingleConversion(<ore:chestGold>, <metalchests:metal_hungry_chest:3>, "HUNGRYCHEST");
mods.thaumcraft.SalisMundus.addSingleConversion(<ore:chestDiamond>, <metalchests:metal_hungry_chest:4>, "HUNGRYCHEST");
mods.thaumcraft.SalisMundus.addSingleConversion(<ore:chestObsidian>, <metalchests:metal_hungry_chest:5>, "HUNGRYCHEST");





//create simple ore processing recipes for crucible using very complicated code

zenClass itemPlusOre
{
    val item as IItemStack;
    val ore as string;
    

    zenConstructor(itemIn as IItemStack, oreIn as string)
    {
        item = itemIn;
        ore = oreIn;
    }
}

var itemplusOres = 
[
    itemPlusOre(<tfc:metal/nugget/copper>,"Copper"),
    itemPlusOre(<tfc:metal/nugget/bismuth>,"Bismuth"),
    itemPlusOre(<tfc:metal/nugget/gold>,"Gold"),
    itemPlusOre(<tfc:metal/nugget/tin>,"Tin"),
    itemPlusOre(<tfc:metal/nugget/wrought_iron>,"WroughtIron"),
    itemPlusOre(<tfc:metal/nugget/zinc>,"Zinc"),
    itemPlusOre(<tfc:metal/nugget/silver>,"Silver"),
    itemPlusOre(<tfc:metal/nugget/lead>,"Lead"),
    itemPlusOre(<tfc:metal/nugget/nickel>,"Nickel"),
    itemPlusOre(<tfc:metal/nugget/platinum>,"Platinum"),
    itemPlusOre(<tfc:metal/nugget/thorium>,"Thorium")
] as itemPlusOre[];

var aspectsempty1 as AspectList = AspectList();
var aspectsnugget as AspectList = aspectsempty1
 .merge(Aspect.ORDER, 1)
 .merge(Aspect.METAL,1);

 var aspectsempty2 as AspectList = AspectList();
var aspectspoor as AspectList = aspectsempty2
 .merge(Aspect.ORDER, 2)
 .merge(Aspect.METAL,2);

 var aspectsempty3 as AspectList = AspectList();
var aspectsnormal as AspectList = aspectsempty3
 .merge(Aspect.ORDER, 3)
 .merge(Aspect.METAL,3);

 var aspectsempty4 as AspectList = AspectList();
var aspectsrich as AspectList = aspectsempty4
 .merge(Aspect.ORDER, 5)
 .merge(Aspect.METAL,5);




for itemPlusOre in itemplusOres
{

/*
    mods.thaumcraft.Crucible.registerRecipe(("nugget" + item), "SIMPLEOREPROCESSING", itemstack*2, oreDict.get("oreSmall"+item), [<aspect:metallum>*1, <aspect:ordo>*1]);
    mods.thaumcraft.Crucible.registerRecipe(("poor" + item), "SIMPLEOREPROCESSING", itemstack*4, oreDict.get("orePoor"+item), [<aspect:metallum>*2, <aspect:ordo>*2]);
    mods.thaumcraft.Crucible.registerRecipe(("normal" + item), "SIMPLEOREPROCESSING", itemstack*6, oreDict.get("oreNormal"+ item), [<aspect:metallum>*3, <aspect:ordo>*3]);
    mods.thaumcraft.Crucible.registerRecipe(("rich" + item), "SIMPLEOREPROCESSING", itemstack*10, oreDict.get("oreRich"+item), [<aspect:metallum>*5, <aspect:ordo>*5]);
*/


val itemstack as IItemStack = itemPlusOre.item;
for items in oreDict.get("oreSmall" +itemPlusOre.ore).items
{

    var resource as ResourceLocation = ResourceLocation("thaumcraft:orenugget"+ itemPlusOre.ore + items.definition.id);

    var recipe as CrucibleRecipe = CrucibleRecipe("SIMPLEOREPROCESSING",(itemstack*2).native, items.native ,aspectsnugget);

    ThaumcraftApi.addCrucibleRecipe(resource, recipe);
    recipe.setGroup(ResourceLocation("thaumcraft:groupOre"+ itemPlusOre.ore));
}


for items in oreDict.get("orePoor" +itemPlusOre.ore).items
{

    var resource as ResourceLocation = ResourceLocation("thaumcraft:orepoor"+ itemPlusOre.ore + items.definition.id);

    var recipe as CrucibleRecipe = CrucibleRecipe("SIMPLEOREPROCESSING",(itemstack*4).native, items.native ,aspectspoor);

    ThaumcraftApi.addCrucibleRecipe(resource, recipe);
    recipe.setGroup(ResourceLocation("thaumcraft:groupOre"+ itemPlusOre.ore));
}

for items in oreDict.get("oreNormal" +itemPlusOre.ore).items
{

    var resource as ResourceLocation = ResourceLocation("thaumcraft:orenormal"+ itemPlusOre.ore + items.definition.id);

    var recipe as CrucibleRecipe = CrucibleRecipe("SIMPLEOREPROCESSING",(itemstack*6).native, items.native ,aspectsnormal);

    ThaumcraftApi.addCrucibleRecipe(resource, recipe);
    recipe.setGroup(ResourceLocation("thaumcraft:groupOre"+ itemPlusOre.ore));
}

for items in oreDict.get("oreRich" +itemPlusOre.ore).items
{

    var resource as ResourceLocation = ResourceLocation("thaumcraft:orerich"+ itemPlusOre.ore + items.definition.id);

    var recipe as CrucibleRecipe = CrucibleRecipe("SIMPLEOREPROCESSING",(itemstack*10).native, items.native ,aspectsrich);

    ThaumcraftApi.addCrucibleRecipe(resource, recipe);
    recipe.setGroup(ResourceLocation("thaumcraft:groupOre"+ itemPlusOre.ore));
}


}







