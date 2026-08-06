import mods.ctutils.world.IGameRules;
import crafttweaker.world.IWorld;
import crafttweaker.event.WorldTickEvent;
import crafttweaker.util.IRandom;
import crafttweaker.command.ICommandManager;
import crafttweaker.server.IServer;
import mods.ctutils.utils.Math;
//##########################################################################
//    DEFINES WHAT TAINT EVOLUTION DOES AT EACH STAGE AND ITS THRESHOLDS
//##########################################################################

//for now, let's use cubic growth (discounting stage 1)
function evoFormula(stage as int) as int{
    if stage == 1
    {
        return 1;
    }
    return Math.exp(3.0,stage as double) as int * 600;
}

function evoThreshold(evo as string, amount as int, world as IWorld) as bool{
var rules =world.getGameRules();
if(isNull(rules.getInt("taintEvo")))
{
    return false;
}

return (rules.getInt("taintEvo") >= amount);
}

function evoNr(evo as string, world as IWorld) as int
{
    var rules =world.getGameRules();
    if(isNull(rules.getInt("taintEvo")))
    {
        return 0;
    }   

    return rules.getInt("taintEvo");

}




events.onWorldTick(function(event as crafttweaker.event.WorldTickEvent){
if !(event.world.random.nextInt(0, 500) == 0)
{
    return;
}

if(evoThreshold("taintEvo", evoFormula(1), event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage1");

}
else
    {
    return;
    }

if(evoThreshold("taintEvo", evoFormula(2), event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage2");

}
else
    {
    return;
    }

if(evoThreshold("taintEvo", evoFormula(3), event.world))
{
    server.commandManager.executeCommandSilent(server, "execute @r[type=thaumcraft:taintseed,tag=!nest] ~ ~ ~ pillar-spawn nest_s3");

    

    //decreases the evo a bit tocompensate for each nest having like 4 seeds and 1  getting killed
    //will not revert back to pre-stage 3
    val decrement as int= - min(evoNr("taintEvo", event.world)- evoFormula(3), 4);
    scripts.events.taintEvoCause.evolve("taintEvo", decrement, event.world);
    

}
else
    {
    return;
    }


if(evoThreshold("taintEvo", evoFormula(4), event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage3");

}
else
    {
    return;
    }


if(evoThreshold("taintEvo", evoFormula(5), event.world))
{
    server.commandManager.executeCommandSilent(server, "advancement grant @a only triumph:taint/stage3");

}
else
    {
    return;
    }










});