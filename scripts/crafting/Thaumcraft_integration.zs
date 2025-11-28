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

mods.immersivetechnology.MeltingCrucible.removeRecipe(<minecraft:cobblestone>);


<immersiveengineering:material:6>.setAspects(<aspect:ignis>*20, <aspect:potentia>*20);
<tfc:metal/ingot/bismuth>.setAspects(<aspect:metallum>*10, <aspect:sensus>*5);
<tfc:metal/ingot/black_bronze>.setAspects(<aspect:metallum>*10, <aspect:tenebrae>*5);
<tfc:metal/ingot/bismuth_bronze>.setAspects(<aspect:metallum>*10, <aspect:fabrico>*5);
<tfc:metal/ingot/pig_iron>.setAspects(<aspect:metallum>*15, <aspect:bestia>*5);
<tfc:metal/ingot/black_steel>.setAspects(<aspect:metallum>*15, <aspect:ordo>*5,<aspect:tenebrae>*10);
<tfc:metal/ingot/tungsten>.setAspects(<aspect:metallum>*15,<aspect:machina>*10,<aspect:ignis>*30);
<tfc:metal/ingot/tungsten_steel>.setAspects(<aspect:metallum>*20,<aspect:ignis>*10,<aspect:praemunio>*20);
<metallurgy:lemurite_ingot>.setAspects(<aspect:metallum>*10,<aspect:lux>*5);

<minecraft:magma>.setAspects(<aspect:ignis>*10, <aspect:terra>*5);
<embers:dust_ember>.setAspects(<aspect:ignis>*8,<aspect:potentia>*8, <aspect:vitreus>*5,<aspect:perditio>*5);
<embers:dust_metallurgic>.setAspects(<aspect:metallum>*15,<aspect:alkimia>*5,<aspect:perditio>*5);

<entity:minecraft:zombie>.setAspects([<aspect:exanimis>*5, <aspect:humanus>*10, <aspect:terra>*5]);
<entity:cyberware:cyberzombie>.setAspects([<aspect:exanimis>*5, <aspect:humanus>*10, <aspect:machina>*10, <aspect:metallum>*5]);
<entity:minecraft:skeleton>.setAspects([<aspect:exanimis>*5, <aspect:humanus>*10, <aspect:mortuus>*5]);
<entity:minecraft:creeper>.setAspects([<aspect:ignis>*5, <aspect:herba>*10, <aspect:perditio>*5]);
<entity:minecraft:spider>.setAspects([<aspect:bestia>*10, <aspect:mortuus>*5, <aspect:sensus>*5]);
<entity:minecraft:witch>.setAspects([<aspect:humanus>*10, <aspect:aversio>*5, <aspect:alkimia>*5]);
<entity:minecraft:enderman>.setAspects([<aspect:humanus>*10, <aspect:tenebrae>*5, <aspect:alienis>*10]);
<entity:embers:ancient_golem>.setAspects([<aspect:machina>*10, <aspect:tenebrae>*5, <aspect:ignis>*5,<aspect:terra>*10]);
<entity:minecraft:slime>.setAspects([<aspect:aqua>*10, <aspect:victus>*10, <aspect:alkimia>*5]);



mods.thaumcraft.Crucible.registerRecipe("alumentumfromcoke", "ALUMENTUM", <thaumcraft:alumentum>*2, <ore:fuelCoke>, [<aspect:ignis>*20, <aspect:potentia>*20, <aspect:perditio>*10]);


mods.thaumcraft.Crucible.registerRecipe("labmeat", "LABMEAT", <tfc:food/bear>*3, <tfc:food/bear>, [<aspect:victus>*10, <aspect:fabrico>*5]);
mods.thaumcraft.Crucible.registerRecipe("labrennet", "LABMEAT", <firmalife:rennet>*5, <firmalife:rennet>, [<aspect:victus>*10, <aspect:permutatio>*5]);

mods.thaumcraft.Crucible.registerRecipe("springwater", "LIQUIDDEATH", <forge:bucketfilled>.withTag({FluidName: "hot_water", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "salt_water", Amount: 1000}), [<aspect:victus>*25, <aspect:ignis>*5]);
mods.thaumcraft.Crucible.removeRecipe(<minecraft:clay_ball>);
mods.thaumcraft.Crucible.registerRecipe("claydupe", "HEDGEALCHEMY@2", <minecraft:clay_ball>*2, <minecraft:clay_ball>, [<aspect:aqua>*5, <aspect:terra>*5]);
mods.thaumcraft.Crucible.registerRecipe("redstonefromsalt", "HEDGEALCHEMY@2", <minecraft:redstone>, <ore:gemChippedRuby>, [<aspect:potentia>*10, <aspect:mortuus>*1]);
mods.thaumcraft.Crucible.registerRecipe("stringfix", "HEDGEALCHEMY@2", <minecraft:string>, <ore:straw>, [<aspect:fabrico>*5, <aspect:bestia>]);
mods.thaumcraft.Crucible.registerRecipe("webfix", "HEDGEALCHEMY@2", <minecraft:web>, <ore:string>, [<aspect:vinculum>*5]);
mods.thaumcraft.Crucible.registerRecipe("jute", "HEDGEALCHEMY@2", <tfc:crop/product/jute_fiber>, <ore:thatch>, [<aspect:herba>*5, <aspect:vinculum>*5]);
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mind:1>);
mods.thaumcraft.Infusion.registerRecipe("biomind", "MINDBIOTHAUMIC", <thaumcraft:mind:1>, 3, [<aspect:aqua>*20, <aspect:cognitio>*10, <aspect:machina>*5], <thaumcraft:mind>, [<thaumcraft:brain>, <thaumcraft:tube>, <thaumcraft:tube>]);




recipes.remove(<minecraft:cauldron>);
 <thaumcraft:amber>.addTooltip(format.gold("Obtained by mining petrified wood ore"));
 <thaumcraft:nugget:10>.addTooltip(format.gold("Obtained from gem and magnetite deposits"));
 <minecraft:quartz>.addTooltip(format.gold("Found in Quartz-rich Stone"));
Anvil.addRecipe("cauldron_from_bronze", <tfc:metal/sheet/black_bronze>, <minecraft:cauldron>, 2,"general","HIT_LAST","DRAW_SECOND_LAST","BEND_THIRD_LAST");
Anvil.addRecipe("cauldron_from_iron", <tfc:metal/sheet/wrought_iron>, <minecraft:cauldron>, 2,"general","HIT_LAST","DRAW_SECOND_LAST","BEND_THIRD_LAST");
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_vent>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_valve>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_buffer>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:alembic>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:alembic>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:turret>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("filters 2.0", "ESSENTIASMELTER", 50, [<aspect:aqua>], <thaumcraft:filter>*2, [[<ore:ingotGold>,<thaumcraft:plank_silverwood>,<ore:ingotGold>]]);


mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("valves 2.0", "TUBES", 15, [], <thaumcraft:tube_valve>*8, [<tfc:brass_mechanisms>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>,<thaumcraft:tube>]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("buffers 2.0", "TUBES", 15, [], <thaumcraft:tube_buffer>*4, [[<thaumcraft:phial>,<thaumcraft:tube_oneway>,<thaumcraft:phial>],[<thaumcraft:tube>,<ore:sleeveBrass>,<thaumcraft:tube>],[<thaumcraft:phial>,<thaumcraft:tube_restrict>,<thaumcraft:phial>] ]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("tubes 2.0", "TUBES", 15, [<aspect:ordo>], <thaumcraft:tube>*24, [<ore:tuyere>, <ore:nuggetQuicksilver>, <ore:nuggetQuicksilver>, <ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("alembics 2.0", "ESSENTIASMELTER", 15, [<aspect:aqua>,<aspect:ordo>,<aspect:perditio>], <thaumcraft:alembic>, [[<thaumcraft:plank_greatwood>, <ore:sleeveBrass>, <thaumcraft:plank_greatwood>],[<thaumcraft:filter>, <ore:springBrass>, <minecraft:glass_bottle>],[<thaumcraft:plank_greatwood>, <ore:sleeveBrass>, <thaumcraft:plank_greatwood>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("betterbellows", "BELLOWS", 15, [<aspect:aer>], <thaumcraft:bellows>, [<tfc:bellows>,<thaumcraft:mechanism_simple>]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("betterturrets", "BASICTURRET", 100, [<aspect:aer>], <thaumcraft:turret>*3, [[<minecraft:bow>, <thaumcraft:mechanism_simple>,<ore:plateIron>],[<thaumcraft:plank_greatwood>, <thaumcraft:mind>,<thaumcraft:plank_greatwood>],[<ore:stickWood>, null, <ore:stickWood>]]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("bettervent", "IMPROVEDSMELTING2", 150, [<aspect:aer>,<aspect:ordo>], <thaumcraft:smelter_vent>, [[<ore:sleeveBrass>, <ore:plateIron>],[<embers:ashen_cloth>, <thaumcraft:metal_alchemical>],[<ore:sleeveBrass>, <ore:plateIron>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("bettersmelter", "ESSENTIASMELTER@2", 50, [<aspect:ignis>], <thaumcraft:smelter_basic>, [[<ore:sheetBrass>, <thaumcraft:crucible>,<ore:sheetBrass>],[<ore:brickStone>,<minecraft:fire_charge>, <ore:brickStone>],[<ore:brickStone>, <ore:brickStone>,<ore:brickStone>]]);


ItemRegistry.registerItemMetal(<thaumcraft:cluster>, "wrought_iron", 400, false);
ItemRegistry.registerItemMetal(<thaumcraft:cluster:1>, "gold", 400, true);
ItemRegistry.registerItemMetal(<thaumcraft:cluster:2>, "copper", 400, true);
ItemRegistry.registerItemMetal(<thaumcraft:cluster:3>, "tin", 400, true);
ItemRegistry.registerItemMetal(<thaumcraft:cluster:4>, "silver", 400, true);
ItemRegistry.registerItemMetal(<thaumcraft:cluster:5>, "lead", 400, true);
ItemRegistry.registerItemMetal(<tfc:brass_mechanisms>, "brass", 50, true);

mods.thaumcraft.Infusion.registerRecipe("dropofevil", "DROPOFEVIL", <extrautils2:ingredients:10>, 5, [<aspect:tenebrae>*25, <aspect:vitium>*10, <aspect:desiderium>*10], <thaumcraft:alumentum>, [<tconstruct:soil:3>, <ore:quicksilver>]);

//quuicksilver stuff

val nuggetq = <ore:nuggetQuicksilver>;
val ingotq = <ore:ingotQuicksilver>;
nuggetq.remove(<metallurgy:quicksilver_nugget>);
ingotq.remove(<metallurgy:quicksilver_ingot>);

mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:turret:2>);
mods.thaumcraft.Infusion.registerRecipe("betterbore", "ARCANEBORE", <thaumcraft:turret:2>, 4, [<aspect:machina>*50, <aspect:vacuos>*25, <aspect:motus>*25,<aspect:potentia>*100,<aspect:terra>*250], <thaumcraft:turret>, [<thaumcraft:vis_resonator>,<thaumcraft:focus_1>.withTag({package: {complexity: 14, nodes: [{type: "MEDIUM", key: "ROOT"}, {type: "MEDIUM", key: "thaumcraft.BOLT"}, {"setting.power": 3, type: "EFFECT", key: "thaumcraft.EARTH"}], index: 0, power: 1.0 as float}, srt: -1937637418, color: -11091968}), <ore:plateBrass>]);

mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:7>);
mods.thaumcraft.Infusion.registerRecipe("harvestseal", "SEALHARVEST", <thaumcraft:seal:7>, 1, [<aspect:herba>*10, <aspect:ordo>*10, <aspect:humanus>*10], <thaumcraft:seal>, [<minecraft:golden_hoe>, <minecraft:golden_hoe>]);


//changes hsla steel to be a liquid version of alumentum, a high-efficiency fuel for mining drill and such
mods.immersiveengineering.DieselHandler.addFuel(<liquid:hsla_steel>, 20000);
DieselHandler.addDrillFuel(<liquid:hsla_steel>);
DieselHandler.addDrillFuel(<liquid:shallowbreath>);
DieselHandler.addDrillFuel(<liquid:shallowbreath>);
DieselHandler.addDrillFuel(<liquid:refined_fuel>);
DieselHandler.addDrillFuel(<liquid:refined_biofuel>);
mods.immersiveengineering.DieselHandler.removeDrillFuel(<liquid:biodiesel>);
mods.immersiveengineering.DieselHandler.removeDrillFuel(<liquid:diesel>);
mods.immersiveengineering.DieselHandler.removeDrillFuel(<liquid:fuel>);

mods.immersiveengineering.DieselHandler.removeFuel(<liquid:diesel>);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:biodiesel>);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:fuel>);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:refined_fuel>, 3);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:refined_biofuel>, 2);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:hsla_steel>, 3);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:shallowbreath>, 1);
mods.immersiveengineering.Mixer.addRecipe(<liquid:hsla_steel>*8000, <liquid:creosote>*1000,[<thaumcraft:alumentum>*2,<ore:nuggetQuicksilver>,<thebetweenlands:items_misc:44>], 30000);
Alloy.removeAlloy("hsla_steel");
GasTurbine.addFuel(<liquid:carbon_dioxide> * 2000, <liquid:hsla_steel>*250, 10);



//jade for warded jars
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarschipped", "WARDEDJARS", 10, [], <thaumcraft:jar_normal>*2, [[<ore:gemChippedJade>, <ore:lumber>,<ore:gemChippedJade>],[<ore:gemChippedJade>, <minecraft:glass_bottle>,<ore:gemChippedJade>],[<ore:gemChippedJade>, <ore:gemChippedJade>,<ore:gemChippedJade>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarsflawed", "WARDEDJARS", 20, [], <thaumcraft:jar_normal>*4, [[<ore:gemFlawedJade>, <ore:lumber>,<ore:gemFlawedJade>],[<ore:gemFlawedJade>, <minecraft:glass_bottle>,<ore:gemFlawedJade>],[<ore:gemFlawedJade>, <ore:gemFlawedJade>,<ore:gemFlawedJade>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarsnormal", "WARDEDJARS", 40, [], <thaumcraft:jar_normal>*8, [[<ore:gemJade>, <ore:lumber>,<ore:gemJade>],[<ore:gemJade>, <minecraft:glass_bottle>,<ore:gemJade>],[<ore:gemJade>, <ore:gemJade>,<ore:gemJade>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarsflawless", "WARDEDJARS", 80, [], <thaumcraft:jar_normal>*16, [[<ore:gemFlawlessJade>, <ore:lumber>,<ore:gemFlawlessJade>],[<ore:gemFlawlessJade>, <minecraft:glass_bottle>,<ore:gemFlawlessJade>],[<ore:gemFlawlessJade>, <ore:gemFlawlessJade>,<ore:gemFlawlessJade>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jarsexquisite", "WARDEDJARS", 160, [], <thaumcraft:jar_normal>*32, [[<ore:gemExquisiteJade>, <ore:lumber>,<ore:gemExquisiteJade>],[<ore:gemExquisiteJade>, <minecraft:glass_bottle>,<ore:gemExquisiteJade>],[<ore:gemExquisiteJade>, <ore:gemExquisiteJade>,<ore:gemExquisiteJade>]]);

mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<mystgears:vis_motor>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:bellows>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("bettervisresonator", "UNLOCKAUROMANCY@1", 50, [<aspect:aer>,<aspect:aqua>], <thaumcraft:vis_resonator>, [[<ore:nuggetIron>,<ore:gemQuartz>,<ore:nuggetIron>],[<ore:nuggetIron>,<ore:gemFlawlessOpal>,<ore:nuggetIron>],[<ore:nuggetIron>,<ore:gemQuartz>,<ore:nuggetIron>]]);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_input>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("betterinputtransfuser", "ESSENTIATRANSPORT", 500, [<aspect:aer>,<aspect:aqua>], <thaumcraft:essentia_input>, [[<ore:plateBrass>,<minecraft:dispenser>,<ore:plateBrass>],[<ore:plateIron>,<thaumcraft:metal_alchemical_advanced>,<ore:plateIron>]]);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_output>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("betteroutputtransfuser", "ESSENTIATRANSPORT", 500, [<aspect:aer>,<aspect:aqua>], <thaumcraft:essentia_output>, [[<ore:plateBrass>,<minecraft:hopper>,<ore:plateBrass>],[<ore:plateIron>,<thaumcraft:metal_alchemical_advanced>,<ore:plateIron>]]);




recipes.remove(<thaumcraft:phial>);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("indexer", "INDEXER", 200, [<aspect:aer>,<aspect:ordo>], <extrautils2:indexer>, [[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<thaumcraft:mirrored_glass>],[<extrautils2:decorativesolid:3>,<thaumcraft:brain_box>,<thaumcraft:mirrored_glass>],[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<thaumcraft:mirrored_glass>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("indexerremote", "INDEXER", 200, [<aspect:aer>*2,<aspect:ordo>,<aspect:perditio>], <extrautils2:indexerremote>, [[null,null,<ore:torchRedstoneActive>],[<projectred-core:resource_item>,<thaumcraft:mirror>,<projectred-core:resource_item>],[<projectred-core:resource_item>,<embers:intelligent_apparatus>,<projectred-core:resource_item>]]);
<ore:tallow>.remove(<minecraft:grass>);






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




//create simple ore processing recipes for crucible using very complicated code



var ores = ["Copper","WroughtIron", "Gold","Zinc","Tin","Bismuth","Nickel","Silver","Lead","Antimony","Lithium","Thorium","Platinum","Aluminium"] as string[];

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




for item in ores
{
/*
    mods.thaumcraft.Crucible.registerRecipe(("nugget" + item), "SIMPLEOREPROCESSING", oreDict.get("nugget"+item).firstItem*2, oreDict.get("oreSmall"+item), [<aspect:metallum>*1, <aspect:ordo>*1]);
    mods.thaumcraft.Crucible.registerRecipe(("poor" + item), "SIMPLEOREPROCESSING", oreDict.get("nugget"+item).firstItem*4, oreDict.get("orePoor"+item), [<aspect:metallum>*2, <aspect:ordo>*2]);
    mods.thaumcraft.Crucible.registerRecipe(("normal" + item), "SIMPLEOREPROCESSING", oreDict.get("nugget"+item).firstItem*6, oreDict.get("oreNormal"+ item), [<aspect:metallum>*3, <aspect:ordo>*3]);
    mods.thaumcraft.Crucible.registerRecipe(("rich" + item), "SIMPLEOREPROCESSING", oreDict.get("nugget"+item).firstItem*10, oreDict.get("oreRich"+item), [<aspect:metallum>*5, <aspect:ordo>*5]);
*/

var resource as ResourceLocation = ResourceLocation("thaumcraft:orenugget"+item);


var recipe as CrucibleRecipe = CrucibleRecipe("SIMPLEOREPROCESSING",(oreDict.get("nugget"+item).firstItem*2).native, ("oreSmall" + item),aspectsnugget);

ThaumcraftApi.addCrucibleRecipe(resource, recipe);
recipe.setGroup(ResourceLocation("thaumcraft:groupOre"+ item));


resource = ResourceLocation("thaumcraft:orepoor"+item);

 recipe = CrucibleRecipe("SIMPLEOREPROCESSING",(oreDict.get("nugget"+item).firstItem*4).native, ("orePoor" + item),aspectspoor);

ThaumcraftApi.addCrucibleRecipe(resource, recipe);
recipe.setGroup(ResourceLocation("thaumcraft:groupOre"+ item));



resource = ResourceLocation("thaumcraft:orenormal"+item);

recipe = CrucibleRecipe("SIMPLEOREPROCESSING",(oreDict.get("nugget"+item).firstItem*6).native, ("oreNormal" + item),aspectsnormal);

ThaumcraftApi.addCrucibleRecipe(resource, recipe);
recipe.setGroup(ResourceLocation("thaumcraft:groupOre"+ item));



resource= ResourceLocation("thaumcraft:orerich"+item);

recipe = CrucibleRecipe("SIMPLEOREPROCESSING",(oreDict.get("nugget"+item).firstItem*10).native, ("oreRich" + item),aspectsrich);

ThaumcraftApi.addCrucibleRecipe(resource, recipe);
recipe.setGroup(ResourceLocation("thaumcraft:groupOre"+ item));


}





