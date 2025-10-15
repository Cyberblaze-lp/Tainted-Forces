import crafttweaker.event.EntityLivingSpawnEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.entity.IEntityLivingBase;


//Applies potion effects to entities upon spawning
//i thought RotM covered this but here we are
//special thanks to Girouxdudes on the ct support discord for helping me get this to work


events.onEntityJoinWorld(function(event as crafttweaker.event.EntityJoinWorldEvent){

if(isNull(event.entity.definition))
{
return;
}

if (event.entity.definition.id == <entity:thaumcraft:taintswarm>.id)
{
    print("swarm created");
    var levi1 = <potion:minecraft:levitation>.makePotionEffect(9999, 0 ,false, false) as IPotionEffect;
    var levi2 = <potion:minecraft:levitation>.makePotionEffect(9999, 0 ,true, false) as IPotionEffect;
    val entity as IEntityLivingBase = event.entity;
    entity.addPotionEffect(levi1);
    entity.addPotionEffect(levi2);
}

});


