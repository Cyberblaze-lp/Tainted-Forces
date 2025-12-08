import crafttweaker.event.EntityLivingSpawnEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.util.Math;
import crafttweaker.world.IBlockPos;
import crafttweaker.util.IRandom;

//Applies potion effects to entities upon spawning
//i thought RotM covered this but here we are
//special thanks to Girouxdudes on the ct support discord for helping me get this to work


events.onEntityJoinWorld(function(event as crafttweaker.event.EntityJoinWorldEvent){
    if(isNull(event.entity.definition)){
        return;
    }

    if (event.entity.definition.id == <entity:thaumcraft:taintswarm>.id){
        var levi1 = <potion:minecraft:levitation>.makePotionEffect(999999, 0 ,false, false) as IPotionEffect;
        var levi2 = <potion:minecraft:levitation>.makePotionEffect(999999, 0 ,true, false) as IPotionEffect;
        val entity as IEntityLivingBase = event.entity;
        entity.addPotionEffect(levi1);
        entity.addPotionEffect(levi2);
    }
});

//applies taint poison when standing on taint fibers



events.onEntityLivingUpdate(function(event as crafttweaker.event.EntityLivingUpdateEvent){
    var world = event.entityLivingBase.world;
    if(isNull(event.entityLivingBase)||isNull(world)||world.getWorldTime() % 100 !=0 || world.isRemote())
    {
        return;
    }

    var entityPosOld = event.entityLivingBase.position3f;
	var entityPosNew = crafttweaker.world.IBlockPos.create(Math.floor(entityPosOld.x),Math.floor(entityPosOld.y),Math.floor(entityPosOld.z)) as IBlockPos;

    if(isNull(world.getBlock(entityPosNew))||isNull(world.getBlock(entityPosNew).definition))
    {
		return;
    }



    if (world.getBlock(entityPosNew).definition.id == "thaumcraft:taint_fibre" && world.random.nextInt(1,3) == 2 ){

        var taint1 = <potion:thaumcraft:fluxtaint>.makePotionEffect(200, 0 ,false, false) as IPotionEffect;
        val entity as IEntityLivingBase = event.entityLivingBase;
        entity.addPotionEffect(taint1);
    }
});




