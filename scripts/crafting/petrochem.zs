import mods.jei.JEI;
import mods.randomtweaker.jei.IJeiPanel;
import mods.randomtweaker.jei.IJeiUtils;
import mods.randomtweaker.jei.IJeiRecipe;
import mods.thermalexpansion.Refinery;
import mods.immersiveintelligence.Coagulator;
import moretweaker.betweenlands.Purifier;


mods.immersivepetroleum.Distillation.addRecipe([<liquid:stagnant_water>*5, <liquid:lubricant> * 8, <liquid:diesel> * 5,<liquid:lpg>*2], [<tfc:powder/coke>, <thebetweenlands:mud>], <liquid:oil>*20, 500, 10, [0.05, 0.1]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:stagnant_water>*10, <liquid:ammonia> * 25,<liquid:methanol>*15, <liquid:carbon_monoxide>*5], [<thebetweenlands:sludge_ball>], <liquid:fog>*100, 500, 10, [0.05]);
mods.immersivepetroleum.Distillation.addRecipe([ <liquid:nitrogen> * 80, <liquid:oxygen> * 19,<liquid:carbon_dioxide>*1], [], <liquid:ic2air>*100, 500, 10, []);
mods.immersivepetroleum.Distillation.addRecipe([ <liquid:water>*90,<liquid:vinegar>*10], [], <liquid:swamp_water>*100, 500, 10, []);
mods.immersivepetroleum.Distillation.addRecipe([ <liquid:kerosene>*30,<liquid:refined_oil>*20, <liquid:gasoline>*50], [<thebetweenlands:sludge_ball>], <liquid:diesel>*100, 500, 50, [0.2]);

mods.immersiveengineering.Mixer.addRecipe(<liquid:oil>*2000, <liquid:limewater>*2000,[<thebetweenlands:items_misc:26>], 5000);

mods.immersiveintelligence.Coagulator.addRecipe(<thebetweenlands:sulfur_block>*2, <liquid:refined_oil>*3000, <liquid:fog>*10000, 10000, 400);
mods.immersiveintelligence.Coagulator.addRecipe(<thebetweenlands:sulfur_block>*2, <liquid:refined_oil>*6000, <liquid:steam>*10000, 10000, 400);


mods.immersiveengineering.Mixer.removeRecipe(<liquid:concrete>);
mods.immersiveengineering.Mixer.addRecipe(<liquid:concrete>*1000, <liquid:limewater>*1000,[<tfc:aggregate>*3,<minecraft:clay>], 5000);

recipes.remove(<immersiveengineering:stone_decoration:4>);
recipes.remove(<immersiveengineering:stone_decoration:5>);
mods.terrafirmacraft.Barrel.addRecipe("betterconcrete", <tfc:aggregate>, <liquid:limewater> * 125,<immersiveengineering:stone_decoration:5>,null, 1);
mods.terrafirmacraft.Barrel.addRecipe("betterconcrete2", <ore:gravel>*2, <liquid:limewater> * 250,<immersiveengineering:stone_decoration:5>,null, 1);
mods.terrafirmacraft.Barrel.addRecipe("betterasphalt", <tfc:aggregate>, <liquid:tar> * 125,<immersivepetroleum:stone_decoration>,null, 1);
mods.terrafirmacraft.Barrel.addRecipe("betterhempcrete", <tfc:crop/product/jute_fiber>, <liquid:limewater> * 125,<immersiveengineering:stone_decoration:4>,null, 1);

mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:lpg>);
mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:fuel>);
mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:kerosene>);
mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:lubricant>);
mods.pneumaticcraft.thermopneumaticprocessingplant.removeRecipe(<liquid:plastic>);


mods.magneticraft.OilHeater.removeRecipe(<liquid:oil>);

mods.magneticraft.Refinery.removeRecipe(<liquid:hot_crude>);
mods.magneticraft.Refinery.removeRecipe(<liquid:light_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:heavy_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:lpg>);
mods.thermalexpansion.Refinery.removeRecipe(<liquid:oil>);
Purifier.addRecipe(<ore:dustAsh>, <tfctech:powder/potash>);


Purifier.addRecipe(<thebetweenlands:sludge_worm_egg_sac>, <thebetweenlands:sludge_worm_arrow>);
mods.inworldcrafting.FluidToItem.transform(<thebetweenlands:sludge_worm_egg_sac>*6, <liquid:stagnant_water>, [<thebetweenlands:sludge_worm_arrow>, <thebetweenlands:mud>*6, <thebetweenlands:sludge_jello>*6], true);

<ore:dustSulfur>.add(<thebetweenlands:items_misc:18>);

mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:lubricant>*16000, <thebetweenlands:shock_arrow>, 2.0, 300.0+273.0, <liquid:diesel>*15000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:kerosene>*16000, <thebetweenlands:shock_arrow>, 2.0, 300.0+273.0, <liquid:refined_oil>*12000);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:gasoline>*16000, <thebetweenlands:shock_arrow>, 2.0, 300.0+273.0, <liquid:lpg>*13500);

mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:lpg>*250, <thebetweenlands:items_misc:44>*10, 2.0, 300.0+273.0, <liquid:plastic>*1000);





<ore:arrowBL>.addItems([<thebetweenlands:angler_tooth_arrow>,<thebetweenlands:poisoned_angler_tooth_arrow>,<thebetweenlands:octine_arrow>,<thebetweenlands:basilisk_arrow>,<thebetweenlands:sludge_worm_arrow>]);


var c as IJeiPanel = JEI.createJei("coagulator", "Coagulator");
c.setBackground(mods.randomtweaker.jei.IJeiUtils.createBackground(105, 32));
c.setIcon(<tconstruct:edible:34>);
c.setModid("immersiveintelligence");

c.addSlot(mods.randomtweaker.jei.IJeiUtils.createLiquidSlot(0,0, 10, 30, 16000, true, true));
c.addSlot(mods.randomtweaker.jei.IJeiUtils.createLiquidSlot( 18, 0, 10, 30, 16000, true, true));
c.addElement(mods.randomtweaker.jei.IJeiUtils.createArrowElement(40, 8, 0));
c.addSlot(IJeiUtils.createItemSlot( 80, 9, false));
c.register();

var c1 as IJeiRecipe = JEI.createJeiRecipe("coagulator");
	c1.addInput(<liquid:latex>*5500)
	.addInput(<liquid:formic_acid>*500)
    .addOutput(<immersiveintelligence:material:28>*8)
    .build();

	
	var c2 as IJeiRecipe = JEI.createJeiRecipe("coagulator");
    c2.addInput(<liquid:refined_oil>*3000)
	.addInput(<liquid:fog>*10000)
    .addOutput(<thebetweenlands:sulfur_block>*2)
    .build();
	
	var c3 as IJeiRecipe = JEI.createJeiRecipe("coagulator");
    c3.addInput(<liquid:refined_oil>*6000)
	.addInput(<liquid:steam>*10000)
    .addOutput(<thebetweenlands:sulfur_block>*2)
    .build();


var b as IJeiPanel = JEI.createJei("bllightning", "Throw in Lightning");

b.setBackground(mods.randomtweaker.jei.IJeiUtils.createBackground(105, 32));
b.setModid("thebetweenlands");
b.setIcon(<thebetweenlands:caving_rope>);

b.addSlot(IJeiUtils.createItemSlot( 0, 8, true));
b.addSlot(IJeiUtils.createItemSlot( 80, 9, false));
b.addElement(IJeiUtils.createArrowElement(40, 8, 0));

b.addRecipeCatalyst(<thebetweenlands:simulacrum_deepman:2>); 
b.addRecipeCatalyst(<thebetweenlands:simulacrum_deepman:6>); 
b.addRecipeCatalyst(<thebetweenlands:simulacrum_deepman:10>); 
b.addRecipeCatalyst(<thebetweenlands:simulacrum_lake_cavern:2>);
b.addRecipeCatalyst(<thebetweenlands:simulacrum_lake_cavern:6>);
b.addRecipeCatalyst(<thebetweenlands:simulacrum_lake_cavern:10>);
b.addRecipeCatalyst(<thebetweenlands:simulacrum_rootman:2>);
b.addRecipeCatalyst(<thebetweenlands:simulacrum_rootman:6>);
b.addRecipeCatalyst(<thebetweenlands:simulacrum_rootman:10>);


b.register();

var b1 as IJeiRecipe = JEI.createJeiRecipe("bllightning");
    b1.addInput(<ore:arrowBL>)
    .addOutput(<thebetweenlands:shock_arrow>)
    .build();
	
	
	
	
	

mods.jei.JEI.addDescription([<thebetweenlands:simulacrum_deepman:*>, <thebetweenlands:simulacrum_lake_cavern:*>, <thebetweenlands:simulacrum_rootman:*>],
["Found in cave ruins and on giant roots that hold up the raised isles",
"Is assigned a random ''effect'' when broken. To determine what it does, place it in the world and wait. Note that some only work during certain weather events.","You can label them by shift-clicking while it's in your hand. Useful for keeping track of the ones whose effects you already know","Effects include, BUT ARE NOT LIMITED TO:","Attraction: channels lightning during thunderstorms inside the betweenlands","Wisp: Spawns Wisp Lights during Auroras Event","Wisdom: Periodically summons XP Orbs that can add or subtract XP","Fertility: Spawns Mire Snails during Heavy Rain Event",
"Them: increases sightings of shadow people during dense fog","Random: particularly nasty for the aspiring researcher. Changes its effect to one of the others periodically"]);