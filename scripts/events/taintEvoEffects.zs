import mods.ctutils.world.IGameRules;
import crafttweaker.world.IWorld;
import crafttweaker.event.WorldTickEvent;
import crafttweaker.util.IRandom;
import crafttweaker.command.ICommandManager;
import crafttweaker.server.IServer;

//##########################################################################
//    DEFINES WHAT TAINT EVOLUTION DOES AT EACH STAGE AND ITS THRESHOLDS
//##########################################################################

//for now, let's use cubic growth (discounting stage 1)
val stage1 as int = 1;
val stage2 as int = 300;
val stage3 as int = 2400;
val stage4 as int = 8100;
val stage5 as int = 19200;

function evoThreshold(evo as string, amount as int, world as IWorld) as bool{
var rules =world.getGameRules();
if(isNull(rules.getInt("taintEvo")))
{
    return false;
}

return (rules.getInt("taintEvo") >= amount);
}



events.onWorldTick(function(event as crafttweaker.event.WorldTickEvent){
if !(event.world.random.nextInt(0, 300) == 0)
{
    return;
}

if(evoThreshold("taintEvo", stage1, event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage1");

}
else
    {
    return;
    }

if(evoThreshold("taintEvo", stage2, event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage2");

}
else
    {
    return;
    }

if(evoThreshold("taintEvo", stage3, event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage3");
    server.commandManager.executeCommandSilent(server, "execute @r[type=thaumcraft:taintseed,tag=!nest] ~ ~ ~ function triumph:nestlarge");
    

}
else
    {
    return;
    }


if(evoThreshold("taintEvo", stage4, event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage3");

}
else
    {
    return;
    }


if(evoThreshold("taintEvo", stage5, event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage3");

}
else
    {
    return;
    }










});