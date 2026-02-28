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


JEI.removeAndHide(<minecraft:chest_minecart>);
JEI.removeAndHide(<minecraft:tnt_minecart>);

static features as string[] = ["extractor_platform","extractor_platform","extractor_platform","extractor_platform", "extractor_platform_large"] as string[];
static pillarfeatures as string[] = ["forged_crate_1a","forged_crate_2a","forged_crate_3a","forged_crate_1b","forged_crate_3b","forged_crate_3c","forged_vent_small","forged_vent_small","forged_vent_small","forged_vent_small","forged_transfer_unit","forged_vent_small","forged_hammer","forged_crate_2b",] as string[];


events.onEntityJoinWorld(function (event as crafttweaker.event.EntityJoinWorldEvent){
if isNull(event.entity.definition)
{
    return;
}
if isNull(event.entity.definition.id)
{
    return;
}
var ID as string = event.entity.definition.id;

if( ID has <entity:minecraft:chest_minecart>.id || ID has <entity:railcraft:cart_chest>.id )
{
    if( 16.5 < event.entity.getY() || 16.0 > event.entity.getY())
        {
            event.cancel();
        return;
    }


if(event.world.random.nextInt(0, 5) % 3 == 0)
{
    var entityPosOld = event.entity.position3f;
	var entityPosNew = crafttweaker.world.IBlockPos.create(Math.floor(entityPosOld.x),Math.floor(entityPosOld.y),Math.floor(entityPosOld.z)) as IBlockPos;

    server.commandManager.executeCommandSilent(event.entity, "tp @s ~-16 -60 ~-16");
    server.commandManager.executeCommandSilent(event.entity, "tgen tetra:forged_container");


      
      return;

}
else
{
var r1 = event.world.random.nextInt(0, features.length - 1);
var feature as string = features[r1];

   server.commandManager.executeCommandSilent(event.entity, "tp @s ~-16 -60 ~-16");
    server.commandManager.executeCommandSilent(event.entity, "tgen tetra:forged_" + feature);
    return;

}

}

if(ID has <entity:minecraft:tnt_minecart>.id || ID has <entity:railcraft:cart_tnt>.id)
{
    if event.entity.getY() > 40.0 
    {
        event.cancel();
        return;
    }

var r2 as int = event.world.random.nextInt(0, pillarfeatures.length - 1);
var pillarfeature as string = pillarfeatures[r2];
   server.commandManager.executeCommandSilent(event.entity, "pillar-spawn " + pillarfeature);
   server.commandManager.executeCommandSilent(event.entity, "tp @s ~-16 -60 ~-16");
    
}

});

