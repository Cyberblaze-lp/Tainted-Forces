import crafttweaker.event.EntityLivingSpawnEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.util.Math;
import crafttweaker.world.IBlockPos;
import crafttweaker.util.IRandom;
import crafttweaker.command.ICommandManager;
import crafttweaker.server.IServer;
import crafttweaker.event.ProjectileImpactArrowEvent;
import crafttweaker.util.IAxisAlignedBB;

//Applies potion effects to entities upon spawning
//i thought RotM covered this but here we are
//special thanks to Girouxdudes on the ct support discord for helping me get this to work

//stupid band-aid fix: makes taint swarms able to properly fly again by applying constant levitation.
events.onEntityJoinWorld(function(event as crafttweaker.event.EntityJoinWorldEvent){
    if(isNull(event.entity.definition)){
        return;
    }

    if (event.entity.definition.id == <entity:thaumcraft:taintswarm>.id)
    {
        val levi1 = <potion:minecraft:levitation>.makePotionEffect(999999, 0 ,false, false) as IPotionEffect;
        val levi2 = <potion:minecraft:levitation>.makePotionEffect(999999, 0 ,true, false) as IPotionEffect;
        val entity as IEntityLivingBase = event.entity;
        entity.addPotionEffect(levi1);
        entity.addPotionEffect(levi2);
    }
});

//applies taint poison when standing on taint fibers
events.onEntityLivingUpdate(function(event as crafttweaker.event.EntityLivingUpdateEvent){
    var world = event.entityLivingBase.world;
    if(isNull(event.entityLivingBase.definition)||isNull(world)||world.getWorldTime() % 100 !=0 || world.isRemote())
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

        var taint1 = <potion:thaumcraft:fluxtaint>.makePotionEffect(120, 0 ,false, false) as IPotionEffect;
        val entity as IEntityLivingBase = event.entityLivingBase;
        entity.addPotionEffect(taint1);
    }
});


val gooOnly as string = <entity:thaumcraft:thaumslime>.id + <entity:thaumcraft:taintswarm>.id + <entity:thaumcraft:taintseed>.id;

// taint death effect: tainted mobs now explode into goo instead of keeling over
// also replaces their drops with tendrils and goo
events.onEntityLivingDeathDrops(function(event as crafttweaker.event.EntityLivingDeathDropsEvent){
    val world = event.entityLivingBase.world;
    if(isNull(event.entityLivingBase.definition)||isNull(world) || world.isRemote())
    {
        return;
    }
	
    if !(event.entityLivingBase.nbt.asString() has "istainted" || event.entityLivingBase.definition.id has "taint" ||event.entityLivingBase.definition.id has "thaumslime" )
    {
        return;
    }

    //death effect (swarms look better without this so we exclude them)

    if ! (event.entityLivingBase.definition.id has "taintswarm")
    {
        val invis = <potion:minecraft:invisibility>.makePotionEffect(1000, 3 ,false, false) as IPotionEffect;
        event.entityLivingBase.addPotionEffect(invis);
        server.commandManager.executeCommandSilent(event.entityLivingBase, "particle blockcrack ~ ~" + toString(event.entityLivingBase.eyeHeight /2) +" ~ 0.3 "+toString(event.entityLivingBase.eyeHeight /2)+ " 0.3 0 300 force @a 1107");
        server.commandManager.executeCommandSilent(event.entityLivingBase, "playsound thaumcraft:gore hostile @a ~ ~ ~");
    }
    //drops
    val rand = mods.ctutils.utils.Math.getRandom().nextInt(0, 3);
    event.drops = [];
    
    if event.entityLivingBase.definition.id has "tiny" && mods.ctutils.utils.Math.getRandom().nextInt(0, 5) != 0
    {
        return;
    }

    if(gooOnly has event.entityLivingBase.definition.id)
    {
        event.addItem(<contenttweaker:taint_goo>);
        return;
    }
    if(rand == 0)
    {
        return;
    }
    else if rand == 1
    {
        event.addItem(<contenttweaker:taint_goo>);
    }
    else 
     {
        event.addItem(<contenttweaker:taint_tendril>);
     }


        

    
});




//replace tainted mobs with CNPC variant where applicable
val entries = ["creeper","sheep","cow","pig","chicken","villager","creeper"] as string[];

events.onEntityLivingUpdate(function(event as crafttweaker.event.EntityLivingUpdateEvent){
    var world = event.entityLivingBase.world;
    if(isNull(event.entityLivingBase.definition)||isNull(world) || world.isRemote()||isNull(server))
    {
        return;
    }

    var entityPosOld = event.entityLivingBase.position3f;
	



    for entityType in entries
     {

        if (event.entityLivingBase.definition.id has entityType && event.entityLivingBase.getY()>-10)
        {
            if (event.entityLivingBase.nbt.asString() has "tainted"){
            var invis = <potion:minecraft:invisibility>.makePotionEffect(100, 3 ,false, false) as IPotionEffect;
            event.entityLivingBase.addPotionEffect(invis);
            server.commandManager.executeCommandSilent(event.entityLivingBase, "noppes clone spawn tainted_"+entityType+" 1");

            server.commandManager.executeCommandSilent(event.entityLivingBase, "playsound thaumcraft:gore hostile @a ~ ~ ~");
            server.commandManager.executeCommandSilent(event.entityLivingBase, "tp @s ~ ~-500 ~");
            server.commandManager.executeCommandSilent(event.entityLivingBase, "kill @s");
           
           
        }
    }
}


    
});

//make taint seeds incapable of suffocation and starvation

events.onEntityLivingHurt(function(event as crafttweaker.event.EntityLivingHurtEvent){

    if (isNull(event.entityLivingBase.definition))
    {
        return;
    }

if(event.damageSource.damageType has "arve"||event.damageSource.damageType has "all")
{
    if(event.entityLivingBase.definition.id has "aint")
    {
        event.cancel();
    }
}

});
val dist as double = 1.8 as double;
events.onProjectileImpactArrow(function(event as crafttweaker.event.ProjectileImpactArrowEvent){

  

    if (isNull(event.entity.definition))
    {
        return;
    }

    val Xpos = event.entity.x; 
    val Ypos = event.entity.y; 
    val Zpos = event.entity.z; 

    val Entities = event.entity.world.getEntitiesWithinAABB(IAxisAlignedBB.create(Xpos - dist, Ypos+0.5d - dist, Zpos - dist, Xpos + dist, Ypos+0.5d + dist, Zpos + dist));
    
    for entity in Entities
    {
        if !isNull(entity.definition)
        {   
            if(entity.definition.id has "cart"||entity.definition.id has "locomo"||entity.definition.id has "turret")
            {
                event.cancel();
                return;
            }
        }
    }
});





