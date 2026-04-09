

import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.util.IAxisAlignedBB;

function socialDistancing (IwasHereFirst as IEntityDefinition, OkIllSkedaddle as IEntityDefinition, dist as float){

    events.onEntityJoinWorld(function(event as crafttweaker.event.EntityJoinWorldEvent){
        if isNull(event.entity.definition)
        {
            return;
        }
        if !(event.entity.definition.id == OkIllSkedaddle.id)
        {
            return;
        }
        var Xpos = event.entity.x; 
        var Ypos = event.entity.y; 
        var Zpos = event.entity.z; 
        var Entities = event.world.getEntitiesWithinAABB(IAxisAlignedBB.create(Xpos - dist, Ypos - dist, Zpos - dist, Xpos + dist, Ypos + dist, Zpos + dist));
        for entity in Entities
        {
            if !isNull(entity.definition)
            {
                if entity.definition.id == IwasHereFirst.id
                {
                    event.cancel();
                    
                    return;
                }
            }
        }
    });
}

socialDistancing(<entity:thaumcraft:taintacle>,<entity:thaumcraft:taintacle>, 25.0);