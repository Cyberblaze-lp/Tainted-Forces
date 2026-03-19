import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.command.ICommandManager;
import crafttweaker.events.IEventManager;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.event.WorldTickEvent;
import crafttweaker.player.IPlayer;
import mods.zenutils.Catenation;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.potions.IPotion;

events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
if(event.to != 0 || event.from !=-3 || event.player.hasGameStage("setspawn")){
	return;
}
		event.toWorld.catenation()
				
				.then(function(world, context) {
					var resi = <potion:minecraft:resistance>.makePotionEffect(10000, 5, true, true);
					event.player.addPotionEffect(resi);
        		})
				.sleepUntil(function(world, context){
					return (!isNull(event.toWorld.getBlock(event.player.getX(),-1 + event.player.getY(),event.player.getZ()))&& event.toWorld.getBlock(event.player.getX(),-1 + event.player.getY(),event.player.getZ()).definition.id != "minecraft:air");
				})
				.sleep(5)
				.then(function(world, context){
					server.commandManager.executeCommand(event.player,"spawnpoint @s ~ ~ ~");
					server.commandManager.executeCommand(event.player, "gamestage silentadd @s setspawn");
					event.player.clearActivePotions();
				}
				)
				
				.start();
		
		
				
				
				  
			
			
			
});

