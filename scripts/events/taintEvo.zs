import crafttweaker.event.EntityLivingDeathEvent;
import mods.ctutils.world.IGameRules;
import crafttweaker.world.IWorld;
import crafttweaker.event.BlockNeighborNotifyEvent;

function evolve(evo as string, amount as int, world as IWorld){
var rules =world.getGameRules();
if(isNull(rules.getInt(evo)))
{
rules.addGameRule(evo,"0","Int");
}
else {
    rules.setOrCreateGameRule(evo, amount + rules.getInt("taintEvo"));
    }
}



events.onEntityLivingDeath(function(event as crafttweaker.event.EntityLivingDeathEvent){
var world = event.entityLivingBase.world;
if(isNull (event.entityLivingBase.definition))
{
	return;
}
if (event.entityLivingBase.definition.id == <entity:thaumcraft:taintseed>.id)
{
    evolve("taintEvo",15000, world);
}
else if (event.entityLivingBase.definition.id == <entity:thaumcraft:taintseedprime>.id)
{
evolve("taintEvo", 1000000, world);
}

});



events.onBlockNeighborNotify(function(event as crafttweaker.event.BlockNeighborNotifyEvent){
		
		
				if  event.block.definition.id has "taint" {
					evolve("asb", 1, event.world);
				}
			
		
	});

