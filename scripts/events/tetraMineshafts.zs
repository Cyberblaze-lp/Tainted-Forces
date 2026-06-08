
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


events.onEntityJoinWorld(function (event as crafttweaker.event.EntityJoinWorldEvent){
    if (event.world.isRemote())
    {
        return;
    }
    
    if(event.entity.hasDefinition(<entity:minecraft:chest_minecart>) || event.entity.hasDefinition(<entity:railcraft:cart_chest>))
    {
        if( 16.5 < event.entity.getY() || 16.0 > event.entity.getY())
        {
            event.cancel();
            return;
        }
          val entityPosOld = event.entity.position3f;
            val x as int =Math.floor(entityPosOld.x) as int;
            val y as int =Math.floor(entityPosOld.y) as int;
            val z as int =Math.floor(entityPosOld.z) as int;
            val entityPosNew = crafttweaker.world.IBlockPos.create(x, y, z) as IBlockPos;
            val entityPosOffset = crafttweaker.world.IBlockPos.create(x - 16 , -60, z - 16) as IBlockPos;

        if (mods.ctutils.utils.Math.getRandom().nextInt(0, 2) == 1)
        {
          
            var posModX as int = x & - 16;
            var posModZ as int = z & -16;

            event.world.catenation()
				.sleep(10)
				.then(function(world, context) 
                {
				    server.commandManager.executeCommandSilent(event.entity, "fill " + toString(posModX) + " 4 " + toString(posModZ) + " " + toString(posModX +2) + " 4 " + toString(posModZ + 2) + " minecraft:air" );
                })
				
				.sleep(1)
				.then(function(world, context)
                {
                    event.entity.setPosition(entityPosOffset);
				    server.commandManager.executeCommandSilent(event.entity, "tgen tetra:forged_container");
				})
                .sleep(1)
				.then(function(world, context)
                {
                    server.commandManager.executeCommandSilent(event.entity, "clone " + toString(posModX) + " 4 " + toString(posModZ) + " " + toString(posModX+2 ) + " 4 " + toString(posModZ + 2) + " ~17 16 ~17 replace move" );
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
        event.entity.setPosition(entityPosOffset);
        server.commandManager.executeCommandSilent(event.entity, "tgen tetra:forged_" + feature);
        return;
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

        server.commandManager.executeCommandSilent(event.entity, "pillar-spawn " + pillarfeature);
        event.cancel();
    }
});

