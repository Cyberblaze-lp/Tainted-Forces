
import crafttweaker.world.IWorld;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.util.IRandom;
import crafttweaker.command.ICommandManager;
import crafttweaker.server.IServer;
import mods.jei.JEI;
import loottweaker.LootTweaker;
import crafttweaker.world.IBlockPos;
import crafttweaker.util.Math;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.zenutils.Catenation;
import crafttweaker.world.IFacing;
static features as string[] = [
    "extractor_platform",
    "extractor_platform",
    "extractor_platform",
    "extractor_platform", 
    "extractor_platform_large"
] as string[];

static pillarfeatures as string[] = [
    "forged_crate_1a",
    "forged_crate_2a",
    "forged_crate_3a",
    "forged_crate_1b",
    "forged_crate_3b",
    "forged_crate_3c",
    "forged_vent_small",
    "forged_vent_small",
    "forged_vent_small",
    "forged_vent_small",
    "forged_transfer_unit",
    "forged_vent_small",
    "forged_hammer",
    "forged_crate_2b",
    "lampforged",
    "lampforged",
    "lampforged",
    "lampforged",
    "lampforged"
] as string[];

/*event.world.catenation()
                .sleepUntil(function(world, context) as bool
		        {
                    return !isNull(server);
		        })
		        .then(function(world, context)
		        {
                    
                })
                .start();
                */

val rand = mods.ctutils.utils.Math.getRandom();
events.onEntityJoinWorld(function (event as crafttweaker.event.EntityJoinWorldEvent){
    if (event.world.isRemote())
    {
        return;
    }
    
    if(event.entity.hasDefinition(<entity:minecraft:chest_minecart>) || event.entity.hasDefinition(<entity:railcraft:cart_chest>))
    {
        if( 16.6 > event.entity.getY() && 15.9 < event.entity.getY())
        {

            
        
            val entityPosOld = event.entity.position3f;
            val x as int =Math.floor(entityPosOld.x) as int;
            val y as int =Math.floor(entityPosOld.y) as int;
            val z as int =Math.floor(entityPosOld.z) as int;
            val entityPosNew = crafttweaker.world.IBlockPos.create(x, y, z) as IBlockPos;
            val entityPosOffset = crafttweaker.world.IBlockPos.create(x - 16 , -60, z - 16) as IBlockPos;

            if (mods.ctutils.utils.Math.getRandom().nextInt(0, 2) == 1)
            //Warning: the following content has been called "so cursed" and "crazy" by unnecessarymb.
            //Consider everything in these brackets an Infohazard
            {
            //seriously, turn back now


            //roid's suggestion. effectively just deletes the last 4 bits of the blockPos, making the result chunk-aligned
            var alignedPosX as int = x & -16;
            var alignedPosZ as int = z & -16;

            //yepp, put a catenation around the whole thing bc there was some stupid race condition
            event.world.catenation()
				.sleep(10)
                 .sleepUntil(function(world, context) as bool
		        {
                    return !isNull(server);
		        })
				.then(function(world, context) 
                {
                    //fill a chunk-aligned box with air
				    server.commandManager.executeCommandSilent(event.entity, "fill " + toString(alignedPosX) + " 4 " + toString(alignedPosZ) + " " + toString(alignedPosX +2) + " 4 " + toString(alignedPosZ + 2) + " minecraft:air" );
                })
				
				.sleep(1)
				.then(function(world, context)
                {
                    //tp the cart 1 chunkin negative x and z
                    event.entity.setPosition(entityPosOffset);

                    //spawn a chunk-aligned container at y= 4 in the chunk in +x +z direction
                    //the other stuff is basically just here to compensate for this
				    server.commandManager.executeCommandSilent(event.entity, "tgen tetra:forged_container");
				})
                .sleep(1)
				.then(function(world, context)
                {//actually move the container to where we want it
                    server.commandManager.executeCommandSilent(event.entity, "clone " + toString(alignedPosX) + " 4 " + toString(alignedPosZ) + " " + toString(alignedPosX+2 ) + " 4 " + toString(alignedPosZ + 2) + " ~17 16 ~17 replace move" );
				})
                .sleep(1)
                .then(function(world, context)
                {
                    event.entity.setPosition(entityPosOffset);
                })
				.start();
            return;
            }
        
            val r1 = event.world.random.nextInt(0, features.length - 1);
            val feature as string = features[r1];
            
                event.world.catenation()
                .sleepUntil(function(world, context) as bool
		        {
			        return !isNull(server);
		        })
		        .then(function(world, context)
		        {
                    if (mods.ctutils.utils.Math.getRandom().nextInt(0, 3) == 1)
                    {
                        server.commandManager.executeCommandSilent(event.entity, "summon thaumcraft:eldritchguardian ~ ~ ~ {PersistenceRequired:1b}");

                    }
                })
                
               
            
		        .then(function(world, context)
		        {
                    event.entity.setPosition(entityPosOffset);
                    server.commandManager.executeCommandSilent(event.entity, "tgen tetra:forged_" + feature);
                })
                .start();
            
            return;
        }
        else if(  event.entity.getY() < 130.0 && event.entity.getY() > 50.0)
        {
            val chestPos as IBlockPos = (event.entity.position3f as IBlockPos)
                .getOffset(IFacing.north(), 2)
                .getOffset(IFacing.west(), 2);
            if (rand.nextInt(0, 3) == 1)
            {
                event.world.setBlockState(<blockstate:tfc:wood/chest/birch>, {LootTable:"minecraft:chests/simple_dungeon"} as IData,  chestPos );
            }
            event.cancel();
            return;
        }
    }

    else if(event.entity.hasDefinition(<entity:minecraft:tnt_minecart>) || event.entity.hasDefinition(<entity:railcraft:cart_tnt>))
    {
        if event.entity.getY() > 40.0 
        {
            event.cancel();
            return;
        }

        val r2 as int = mods.ctutils.utils.Math.getRandom().nextInt(0, pillarfeatures.length - 1);
        val pillarfeature as string = pillarfeatures[r2];
        event.world.catenation()
                .sleepUntil(function(world, context) as bool
		        {
                    return !isNull(server);
		        })
		        .then(function(world, context)
		        {
                    server.commandManager.executeCommandSilent(event.entity, "pillar-spawn " + pillarfeature);
                    
                })
                .start();
        event.cancel();
        
    }
});

