import crafttweaker.event.PlayerInteractBlockEvent;
import native.blusunrize.immersiveengineering.common.util.advancements.IEAdvancements;
import native.blusunrize.immersiveengineering.api.MultiblockHandler;
import native.net.minecraft.entity.player.EntityPlayerMP;
import native.net.minecraft.item.ItemStack;


events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) 
{
    if isNull(event.item)
    {
        return;
    }
    if isNull(event.item.definition)
    {
        return;
    }

    if !(event.item.toolClasses has "IE_HAMMER")
    {
        return;
    }
    val player = event.player.native;
    val world = event.world.native;
    val pos = event.position.native;
    val side = event.face.native;
    val stack = event.item.native;



    for mb in MultiblockHandler.getMultiblocks()
    {
		if(mb.isBlockTrigger(world.getBlockState(pos)))
		{
					
			if(MultiblockHandler.fireMultiblockFormationEventPre(player, mb, pos, stack).isCanceled())
            {
				continue;
            }
			if(mb.createStructure(world, pos, side, player))
			{
				if(player instanceof EntityPlayerMP)
                {
					IEAdvancements.TRIGGER_MULTIBLOCK.trigger(player as EntityPlayerMP , mb, stack);
					event.cancellationResult = "SUCCESS";
                    return;
                }
            
			}
		}
    }

});