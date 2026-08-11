import crafttweaker.entity.AttributeInstance;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.ProjectileImpactArrowEvent;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.util.IAxisAlignedBB;
import crafttweaker.util.Math;
import crafttweaker.world.IBlockPos;
import native.java.lang.Class;


//Applies potion effects to entities upon spawning
//i thought RotM covered this but here we are
//special thanks to Girouxdudes on the ct support discord for helping me get this to work




//Helper functions




function isTainted(entity as IEntityLivingBase) as bool{
    if(isNull(entity)){
        return false;
    }
    val entityAttribute as AttributeInstance = entity.getAttribute("tc.mobmodtaint");
    if(isNull(entityAttribute)){
        return false;
    }
    return entityAttribute.getAttributeValue() == 1;
}

//stupid band-aid fix: makes taint swarms able to properly fly again by applying constant levitation.
events.onEntityJoinWorld(function(event as crafttweaker.event.EntityJoinWorldEvent){
    if (event.entity.hasDefinition(<entity:thaumcraft:taintswarm>))
    {
        val levi1 = <potion:minecraft:levitation>.makePotionEffect(999999, 0 ,false, false) as IPotionEffect;
        val levi2 = <potion:minecraft:levitation>.makePotionEffect(999999, 0 ,true, false) as IPotionEffect;
        val entity as IEntityLivingBase = event.entity;
        entity.addPotionEffect(levi1);
        entity.addPotionEffect(levi2);
    }

    if !(event.entity.hasDefinition(<entity:thaumcraft:taintseed>))
    {
        return;
    }
    if (event.entity.tags has "nest")
    {
        val Xpos = event.entity.x; 
        val Ypos = event.entity.y; 
        val Zpos = event.entity.z; 
        val dist = 2.0d;
        val Entities = event.entity.world.getEntitiesWithinAABB(IAxisAlignedBB.create(Xpos - dist, Ypos+0.5d - dist, Zpos - dist, Xpos + dist, Ypos+0.5d + dist, Zpos + dist));

        for entity in Entities
        {
            if (entity.hasDefinition(<entity:thaumcraft:taintseed>) && !(entity.tags has "nest"))
            {
                entity.setDead();
                return;
            }
        }
    }

});

//applies taint poison when standing on taint fibers
events.onEntityLivingUpdate(function(event as crafttweaker.event.EntityLivingUpdateEvent){
    var world = event.entityLivingBase.world;
    if(isNull(world)||world.getWorldTime() % 100 !=0 || world.isRemote())
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


val gooOnly as Class[] = [<entity:thaumcraft:thaumslime>.getClass(), <entity:thaumcraft:taintswarm>.getClass(), <entity:thaumcraft:taintseed>.getClass()];

// taint death effect: tainted mobs now explode into goo instead of keeling over
// also replaces their drops with tendrils and goo
events.onEntityLivingDeathDrops(function(event as crafttweaker.event.EntityLivingDeathDropsEvent){
    val world = event.entityLivingBase.world;
    val entityDef = event.entityLivingBase.definition;
    if(isNull(entityDef)||isNull(world) || world.isRemote())
    {
        return;
    }
	
    if !(isTainted(event.entityLivingBase) || entityDef.id has "taint" || event.entityLivingBase.hasDefinition(<entity:thaumcraft:thaumslime>))
    {
        return;
    }

    //death effect (swarms look better without this so we exclude them)

    if !(event.entityLivingBase.hasDefinition(<entity:thaumcraft:taintswarm>))
    {
        val invis = <potion:minecraft:invisibility>.makePotionEffect(1000, 3 ,false, false) as IPotionEffect;
        event.entityLivingBase.addPotionEffect(invis);
        if(!isNull(server))
        {
            var FluxGooParticleIDNum as int = native.net.minecraft.block.Block.func_176210_f(<blockstate:thaumcraft:flux_goo>.native);
            var FluxGooParticleID as string = toString(FluxGooParticleIDNum);
            server.commandManager.executeCommandSilent(event.entityLivingBase, "particle blockcrack ~ ~" + toString(event.entityLivingBase.eyeHeight /2) +" ~ 0.3 "+toString(event.entityLivingBase.eyeHeight /2)+ " 0.3 0 300 force @a "+FluxGooParticleID);
            server.commandManager.executeCommandSilent(event.entityLivingBase, "playsound thaumcraft:gore hostile @a ~ ~ ~");
        }
    }
    //drops
    val rand = mods.ctutils.utils.Math.getRandom().nextInt(0, 3);
    event.drops = [];
    
    if event.entityLivingBase.definition.id has "tiny" && mods.ctutils.utils.Math.getRandom().nextInt(0, 5) != 0
    {
        return;
    }

    if(gooOnly has event.entityLivingBase.getClass())
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
val entries = {
    <entity:tfc:sheeptfc>.getClass():"sheep",
    <entity:tfc:cowtfc>.getClass():"cow",
    <entity:tfc:pigtfc>.getClass():"pig",
    <entity:tfc:chickentfc>.getClass():"chicken",
    <entity:minecraft:villager>.getClass():"villager",
    <entity:minecraft:creeper>.getClass():"creeper"
} as string[Class];

events.onEntityLivingUpdate(function(event as crafttweaker.event.EntityLivingUpdateEvent){
    val entityLivingBase = event.entityLivingBase;
    val entityClass = entityLivingBase.getClass();
    val world = entityLivingBase.world;

    if(isNull(world) || world.isRemote() || isNull(server)){
        return;
    }

    if(entityLivingBase.getY() <= -10){
        return;
    }

    val entityString as string = entries[entityClass];
    if(isNull(entityString)){
        return;
    }


    if(!isTainted(entityLivingBase)){
        return;
    }


    val invis = <potion:minecraft:invisibility>.makePotionEffect(100, 3 ,false, false) as IPotionEffect;
    entityLivingBase.addPotionEffect(invis);

    if !isNull(server)
    {
        server.commandManager.executeCommandSilent(entityLivingBase, "noppes clone spawn tainted_"+ entityString +" 1");
        server.commandManager.executeCommandSilent(entityLivingBase, "playsound thaumcraft:gore hostile @a ~ ~ ~");
        server.commandManager.executeCommandSilent(entityLivingBase, "tp @s ~ ~-500 ~");
        server.commandManager.executeCommandSilent(entityLivingBase, "kill @s");
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





