#download_reobf_mapping 
import native.net.minecraft.tileentity.TileEntity;
import native.net.minecraft.block.Block;
import native.net.minecraft.nbt.NBTTagCompound;
import native.net.minecraft.world.World;
import crafttweaker.block.IBlock;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IBlockAccess;
import crafttweaker.event.WorldTickEvent;
import crafttweaker.event.IBlockEvent;
import crafttweaker.command.ICommandManager;
//why am i doing this to myself?
//makes IC2 reactors glow with the light effects of a manastorm charge.

function first_NPE(world as IWorld) as IEntity{
	for  entity in world.getEntities()
		{
		if(!isNull(entity.definition))
			{
			if(!isNull(entity.definition.id))
			{
			if(entity.definition.id has "player" ||entity.definition.id has "Player")
			{}
			else{
			return(entity);
			return;
			}}
			}
	}	
}

events.onWorldTick(function(event as crafttweaker.event.WorldTickEvent){

if (event.world.getWorldTime() % 500 !=0 || event.world.isRemote())
{
return;
}
var tiles = event.world.native.loadedTileEntityList as TileEntity[];
for tile in tiles
{
if( tile.toString() has "TileEntityNuclearReactorElectric")
{
if(isNull(event.world.getBlockState(tile.getPos().wrapper))||isNull(event.world.getBlock(tile.getPos().wrapper).data)) {
        return;
    }


if (toString(event.world.getBlock(tile.getPos().wrapper).data) has "active: 1 as byte")
					{


					if (!isNull(first_NPE(event.world)))
						{
						
						var command = "summon botania:mana_storm" + " " + toString(tile.getPos().wrapper.getX()) + " " + toString(tile.getPos().wrapper.getY())
						+ ".5 " + toString(tile.getPos().wrapper.getZ());
						server.commandManager.executeCommand(
						first_NPE(event.world), command);
						}
					}	
				}
		}

});


events.onExplosionStart(function(event as crafttweaker.event.ExplosionStartEvent){
if event.world.getBlock(event.position).definition.id has "ic2:te"
{
event.cancel();
}

});







