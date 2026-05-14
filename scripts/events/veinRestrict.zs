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
import native.net.dries007.tfc.objects.blocks.stone.BlockOreTFC;
import native.net.dries007.tfc.objects.items.metal.ItemOreTFC;
import native.net.dries007.tfc.world.classic.worldgen.WorldGenOreVeins;

import crafttweaker.world.IFacing;
import crafttweaker.util.Math;

import native.net.minecraftforge.common.DimensionManager;

//Silverwood splings shall only be placeable near cinnabar veins
    function checkVeinsPlace (iblockstate as IBlockState, world as IWorld, pos as IBlockPos) as bool
    {
    
        val block as BlockOreTFC= iblockstate.getBlock().native as BlockOreTFC;
        val chunkX as int = Math.floor(pos.x as float /16.0) as int;
        val chunkZ as int = Math.floor(pos.z as float /16.0) as int;
        val veins = WorldGenOreVeins.getNearbyVeins(chunkX, chunkZ, world.getWorldInfo().seed as long, 2);

        for vein in veins
        {
            if block.ore == vein.getType().getOre()
            {
                return true;
            
            }
        }
        return false;
    }


    events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
		if(isNull(event.item))
        {
			return;
		}
		if(isNull(event.item.asBlock()))
        {
			return;
		}

		if (event.item.definition.id has "thaumcraft:sapling_silverwood" && !checkVeinsPlace(<tfc:ore/cinnabar/granite>.asBlock().definition.getStateFromMeta(0), event.world, event.position)){
			event.cancel();
			event.player.sendRichTextStatusMessage(format.red("Insufficient Minerals in the Surrounding Area!"));
			event.player.setCooldown(event.item, 200);
			
			return;
		}
	});

	//anti-chese through fake players
	events.onBlockNeighborNotify(function(event as crafttweaker.event.BlockNeighborNotifyEvent) {
		if (event.block.definition.id has "thaumcraft:sapling_silverwood" && !checkVeinsPlace(<tfc:ore/cinnabar/granite>.asBlock().definition.getStateFromMeta(0), event.world, event.position)){
			print("Cheese- meet Grater");
			event.world.setBlockState(<blockstate:minecraft:air>, event.position);
			return;
		}
	});

    
//End
