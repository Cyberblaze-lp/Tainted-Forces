
#download_reobf_mapping 
import native.net.minecraft.tileentity.TileEntity;
import native.net.minecraft.block.Block;
import native.net.minecraft.nbt.NBTTagCompound;
import native.net.minecraft.world.World;
import crafttweaker.block.IBlock;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IBlockAccess;
import crafttweaker.event.WorldTickEvent;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.command.ICommandManager;
import crafttweaker.util.Math;
//why am i doing this to myself?
//makes IC2 reactors glow with the light effects of a manastorm charge. Hopefully withoutthe physical effects.



events.onWorldTick(function(event as crafttweaker.event.WorldTickEvent){
	if (event.world.getWorldTime() % 500 !=0 || event.world.isRemote()){
		return;
	}

	var tiles = event.world.native.loadedTileEntityList as TileEntity[];
	for tile in tiles{
		if( tile.toString() has "TileEntityNuclearReactorElectric"){
			if(
				isNull(event.world.getBlockState(tile.getPos().wrapper))
			 || isNull(event.world.getBlock(tile.getPos().wrapper).data)
			) {
				return;
			}
			if (toString(event.world.getBlock(tile.getPos().wrapper).data) has "active: 1 as byte"){			
				var world = tile.getWorld().wrapper;
				var pos = tile.getPos().wrapper;

				var manastorm = <entity:botania:mana_storm>.spawnEntity(world, pos);
				event.world.catenation()
				.sleep(2)
				.then(function(world, context){
					manastorm.position3f = crafttweaker.util.Position3f.create(pos.x as float+ 0.5, pos.y as float + 0.5 , pos.z as float + 0.5);
				})
				.start();
				


			}
		}
	}

});


events.onEntityJoinWorld(function(event as crafttweaker.event.EntityJoinWorldEvent){
	if isNull(event.entity.definition){
		return;
	}
	if(event.entity.definition.id has <entity:botania:mana_burst>.id)
	{
		var entityPosOld = event.entity.position3f;
		var entityPosNew = crafttweaker.world.IBlockPos.create(Math.floor(entityPosOld.x),Math.floor(entityPosOld.y),Math.floor(entityPosOld.z)) as IBlockPos;
		if (toString(event.world.getBlock(entityPosNew).definition.id) has "ic2:te")
		{
			event.cancel();
			
		}
		return;
	}
	
});


events.onExplosionStart(function(event as crafttweaker.event.ExplosionStartEvent){
	if toString(event.world.getBlock(event.position).data) has "ic2:nuclear_reactor"{
		event.cancel();
	}
});







