import crafttweaker.events.IEventManager;
import crafttweaker.block.IBlock;
import crafttweaker.item.IItemStack;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.BlockNeighborNotifyEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;
import crafttweaker.world.IWorld;
import crafttweaker.world.IWorldInfo;


val turf = (<advancedrocketry:moonturf_dark> as IBlock).definition;
turf.setUnbreakable();
turf.resistance = 5000000.0;


static AllowedTEs as bool[IBlockDefinition] = {};

for block in [
    <mekanism:boundingblock>
]
{
    AllowedTEs[(block as IBlock).definition] = true;
}

function isYDenied(block as IBlock, world as IWorld, position as IBlockPos) as bool
{
    if world.getDimension() != 3 || block.definition.id has "moonturf"
    {
        return false;
    }
    if position.y == 224
    {
        return false;
    }
    if !block.definition.native.hasTileEntity()
    {
        return false;
    }
    if isNull(AllowedTEs[block.definition])
    {
        return true;
    }
    return false;
}
events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
		if(isNull(event.item)){
			return;
		}
		if(isNull(event.item.asBlock())){
			return;
		}

		if(isYDenied(event.item.asBlock(), event.world, event.position.getOffset(event.face, 1))){
			event.cancel();
			event.player.sendRichTextStatusMessage(format.red("Wind too strong up here, cannot place!"));
			event.player.setCooldown(event.item, 200);
			
			return;
		}
	});

events.onBlockNeighborNotify(function(event as crafttweaker.event.BlockNeighborNotifyEvent) {
		if (isYDenied(event.block, event.world, event.position)){
			print("Cheese- meet Grater");
			event.world.setBlockState(<blockstate:minecraft:air>, event.position);
			event.world.performExplosion(null, event.position.getX(),event.position.getY() , event.position.getZ(), 2.0, true, true);
			return;
		}
	});