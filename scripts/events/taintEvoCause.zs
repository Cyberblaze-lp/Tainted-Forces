import crafttweaker.event.EntityLivingDeathEvent;
import mods.ctutils.world.IGameRules;
import crafttweaker.world.IWorld;
import crafttweaker.event.BlockNeighborNotifyEvent;

//###########################################################
//    DEFINES WHAT CAUSES TAINT TO EVOLVE AND BY HOW MUCH
//###########################################################



function evolve(evo as string, amount as int, world as IWorld){
var rules =world.getGameRules();
if(isNull(rules.getInt(evo)))
{
rules.addGameRule(evo,"0","Int");
}
else {
    rules.setOrCreateGameRule(evo, amount + rules.getInt(evo));
    }
}

function difficulty(world as IWorld) as int
{
	val diff as string = world.getWorldInfo().difficulty;
	
	if diff has "EASY"
	{
		return 1;
	}
	if diff has "NORMAL"
	{
		return 2;
	}
	if diff has "HARD"
	{
		return 3;
	}
	return 0;
	

}


events.onEntityLivingDeath(function(event as crafttweaker.event.EntityLivingDeathEvent){
var world = event.entityLivingBase.world;
if(isNull (event.entityLivingBase.definition))
{
	return;
}
if (event.entityLivingBase.definition.id == <entity:thaumcraft:taintseed>.id)
{
    evolve("taintEvo",1*difficulty(world), world);
}
else if (event.entityLivingBase.definition.id == <entity:thaumcraft:taintseedprime>.id)
{
evolve("taintEvo", 200*difficulty(world), world);
}

});



events.onBlockNeighborNotify(function(event as crafttweaker.event.BlockNeighborNotifyEvent){
		
		
				if  event.block.definition.id has "taint" {
					evolve("asb", 1, event.world);
				}
			
		
	});

