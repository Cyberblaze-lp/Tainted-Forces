
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerRespawnEvent;
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
import crafttweaker.entity.IEntity;
import crafttweaker.util.Position3f;
import mods.ctutils.world.IGameRules;

// sets your spawn back in overworld so you don't have to walk for miles if you die
events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent){
	
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
		server.commandManager.executeCommand(server,"spawnpoint "+ event.player.name+ " ~ ~ ~");
		server.commandManager.executeCommand(server, "gamestage silentadd "+event.player.name+" setspawn");
		//We make the player start the world in adventure
		server.commandManager.executeCommandSilent(server, "gamemode 0 " + event.player.name);
		event.player.clearActivePotions();
	}
	)
	
	.start();
});

//I'll make my own perfectspawn, with blackjack and hookers!
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
	if (event.player.world.isRemote())
	{
    	return;
	}
	var rules = event.player.world.getGameRules();
	if (event.player.hasGameStage("beentospace") || !rules.getBoolean("spaceSpawn"))
	{
		return;
	}
	
	
	
	event.player.world.catenation()
		.sleepUntil(function(world, context) as bool
		{
			return !isNull(server);
		})
		.then(function(world, context)
		{
			event.player.addGameStage("beentospace");
	val x as int = -12693;
	val y as int = 58;
	val z as int = -9781;
	server.commandManager.executeCommandSilent(server, "forge setdimension " + event.player.name + " -3 "+ toString(x) + " " + toString(y) + " " + toString(z));

		})
		.start();
	
});

//Security in case the player dies in space, then spawn on the OW. They would be adventure-locked otherwise
events.onPlayerRespawn(function(event as crafttweaker.event.PlayerRespawnEvent){
	val player as IPlayer = event.player;
	val rules = player.world.getGameRules();
	if(player.hasGameStage("beentospace") || !rules.getBoolean("spaceSpawn")){
		return;
	}
	if(player.adventure){
		player.world.catenation()
		.sleepUntil(function(world, context) as bool
		{
			return !isNull(server);
		})
		.then(function(world, context)
		{
			server.commandManager.executeCommandSilent(server, "gamemode 0 " + player.name);
			player.addGameStage("beentospace");
		})
		.start();
		
	}
	
});
