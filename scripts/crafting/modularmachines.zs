
import mods.modularmachinery.IMachineController;                                                                  
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.RecipeStartEvent;
import native.net.dries007.tfc.objects.blocks.stone.BlockOreTFC;
import native.net.dries007.tfc.objects.items.metal.ItemOreTFC;
import native.net.dries007.tfc.world.classic.worldgen.WorldGenOreVeins;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlock;
import crafttweaker.world.IFacing;
import crafttweaker.util.Math;
import crafttweaker.data.IData;
import native.extendedrenderer.particle.entity.EntityRotFX;
import native.extendedrenderer.particle.behavior.ParticleBehaviors;
import native.extendedrenderer.render.RotatingParticleManager;
import native.extendedrenderer.particle.behavior.ParticleBehaviorFog;
import native.net.minecraft.client.renderer.texture.TextureAtlasSprite;
import native.net.minecraft.client.renderer.texture.TextureManager;
import native.net.minecraft.client.Minecraft;
import native.CoroUtil.util.Vec3;
import native.weather2.ClientTickHandler;
import mods.modularmachinery.Sync;
import native.extendedrenderer.particle.ParticleRegistry;
import native.net.minecraft.tileentity.TileEntity;
import crafttweaker.entity.IEntity;
import crafttweaker.event.EntityJoinWorldEvent;

recipes.removeByMod("modularmachinery");


mods.modularmachinery.RecipeBuilder.newBuilder("basicflux", "calcifier_t0", 300)
.addItemInput(<ore:powderMana>*8)
.addItemOutput(<tfc:powder/flux>)
.addFluxOutput(2,0)
.build();

//cooling tower stuff
//ic2 boiler to tower ratio should be ~ 16:1


function addClouds (controller as TileEntity) as void
{
    /*
    if mods.ctutils.utils.Math.getRandom().nextInt(0, 2) != 0
    {
        return;
    }
    */
    var facing = IFacing.north;
    
    val block = controller.getWorld().getBlockState(controller.getPos());

    if block.wrapper.meta == 0
    {
        facing = IFacing.south;
    }
    else if block.wrapper.meta == 1
    {
        facing = IFacing.west;
    }
    else if block.wrapper.meta == 2
    {
        facing = IFacing.north;
    }
    else if block.wrapper.meta == 3
    {
        facing = IFacing.east;
    }

    
    val offset =  controller.getPos().wrapper   
    .getOffset(facing, -15)
    .getOffset(IFacing.up(), 22);
    
    Sync.addSyncTask(
        function(){
        <entity:bountifulbaubles:bee>.spawnEntity(controller.world.wrapper, offset);
        }
    );
                              
                               
}

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent){
    if isNull(event.entity.definition) || event.entity.definition.id != <entity:bountifulbaubles:bee>.id
    {
        return;
    }

    if event.world.isRemote()
    {
        addClouds2(event.entity);
    }
    else
    {
        event.entity.world.catenation()
            .sleep(2)
            .then(function(world, context){
                    event.entity.setDead();
            })
            .start();
    }
});
    
    function addClouds2 (entity as IEntity) as void
{
    if isNull(ClientTickHandler.weatherManager)
    {
        return;
    }
    val yfactor as float = 0.3f;

    val icon =ParticleRegistry.cloud256;
    val offset as IBlockPos = entity.position3f as IBlockPos;
    var vec = Vec3(offset);
    var pb = ParticleBehaviorFog(vec);
    
    var cloud = pb.spawnNewParticleIconFX(entity.world.native, icon, offset.x as double, offset.y as double, offset.z as double, 0.0d, 5.0d, 0.0d, 1);
    cloud.rotationPitch = mods.ctutils.utils.Math.getRandom().nextInt(0, 314) as float / 100.0f;
    pb.initParticle(cloud);
    pb.particles.add(cloud);
    val tm = Minecraft.getMinecraft().getTextureManager();
    val rpm = RotatingParticleManager(entity.world, tm);
    cloud.spawnAsWeatherEffect();
    cloud.setGravity(-1.3f*yfactor);
    cloud.setFacePlayer(true);

    cloud.setScale(145.0f + mods.ctutils.utils.Math.getRandom().nextInt(0, 20) as float );
    ClientTickHandler.weatherManager.addWeatheredParticle(cloud);
    client.catenation()
				.sleep(2)
				.then(function(world, context) 
                {
				    
                    cloud.setGravity(1.0f*yfactor);
                })
                
                .sleep(8)
				.then(function(world, context) 
                {
				    cloud.setGravity(-0.85f*yfactor);
                })
                .sleep(8)
				.then(function(world, context) 
                {
				    cloud.setGravity(-0.65f*yfactor);
                    
                })
                .sleep(8)
				.then(function(world, context) 
                {
				     cloud.setGravity(-0.5f*yfactor);
                    cloud.setMotionX(100.0/1000.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 100) as float / 500.0f);
                    cloud.setMotionZ(100.0/1000.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 100) as float / 500.0f);

                })
                .sleep(8)
				.then(function(world, context) 
                {
				    cloud.setGravity(-0.35f);
                })
                .sleep(8)
				.then(function(world, context) 
                {
                    cloud.setGravity(-0.25f);
                })
                .sleep(10)
                .then(function(world, context) 
                {
				    
                    cloud.setGravity(-0.15f);
                    cloud.setMotionX(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionZ(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    
                })

                .sleep(50)
				.then(function(world, context) 
                {
                    cloud.setGravity(-0.1f);
                    cloud.setScale(200.0f);
                })

                .sleep(50)
                .then(function(world, context) 
                {
				    
                    cloud.setGravity(-0.05f);
                    cloud.setMotionX(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionZ(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    

                })
                .sleep(100)
                .then(function(world, context) 
                {
				    
                    cloud.setGravity(-0.02f);
                    cloud.setMotionX(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionZ(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    
                })

                .sleep(100)
				.then(function(world, context) 
                {
                     cloud.setMotionX(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionZ(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionY(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
				    cloud.setGravity(-0.01f);
                    cloud.setScale(210.0f);
                })
                .sleep(100)
				.then(function(world, context) 
                {
				    
                    cloud.setScale(220.0f);
                    cloud.setMotionX(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionZ(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionY(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                })
                .sleep(80)
				.then(function(world, context) 
                {
				    
                    cloud.setScale(240.0f);
                    cloud.setMotionX(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionZ(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    
                })
                .sleep(80)
				.then(function(world, context) 
                {
				    
                    cloud.setScale(260.0f);
                    cloud.setMotionX(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionZ(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionY(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                })
                .sleep(80)
				.then(function(world, context) 
                {
				    
                    cloud.setScale(300.0f);
                    cloud.setMotionX(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionZ(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                    cloud.setMotionY(8.0/160.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 80.0f);
                })
                .sleep(200)
				.then(function(world, context) 
                {
				    
                    cloud.setScale(400.0f);
                })
                 .sleep(200)
				.then(function(world, context) 
                {
				    
                    cloud.setScale(500.0f);
                    cloud.setMotionX(8.0/100.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 50.0f);
                    cloud.setMotionZ(8.0/100.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 50.0f);
                    cloud.setMotionY(8.0/100.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 50.0f);
                })
                 .sleep(200)
				.then(function(world, context) 
                {
				    
                    cloud.setScale(600.0f);
                    cloud.setMotionX(8.0/60.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 30.0f);
                    cloud.setMotionZ(8.0/60.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 30.0f);
                    cloud.setMotionY(8.0/60.0 - mods.ctutils.utils.Math.getRandom().nextInt(0, 8) as float / 30.0f);

                })
                .sleep(200)
				.then(function(world, context) 
                {
				    
                    cloud.setScale(800.0f);
                    cloud.startDeath();
                })

                .start();

}





mods.modularmachinery.RecipeBuilder.newBuilder("coolingtowerrecipe_waterfromExhaustSteamW", "cooling_tower_t2", 5)
.addFluidInput(<liquid:water>*2000)
.addFluidInput(<liquid:exhauststeam>*1000)
.addItemOutput(<thebetweenlands:items_misc:27>)
.setChance(0.65)
.addFluidOutput(<liquid:ic2distilled_water>*80)
.addStartHandler(function (event as RecipeStartEvent){
   addClouds(event.controller);
})
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("coolingtowerrecipe_waterfromSteamW", "cooling_tower_t2", 5)
.addFluidInput(<liquid:water>*2000)
.addFluidInput(<liquid:steam>*500)
.addItemOutput(<thebetweenlands:items_misc:27>)
.setChance(0.65)
.addFluidOutput(<liquid:ic2distilled_water>*80)
.addStartHandler(function (event as RecipeStartEvent){
   addClouds(event.controller);
})
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("coolingtowerrecipe_waterfromExhaustSteamF", "cooling_tower_t2", 5)
.addFluidInput(<liquid:fresh_water>*2000)
.addFluidInput(<liquid:exhauststeam>*1000)
.addItemOutput(<thebetweenlands:items_misc:27>)
.setChance(0.65)
.addFluidOutput(<liquid:ic2distilled_water>*80)
.addStartHandler(function (event as RecipeStartEvent){
   addClouds(event.controller);
})
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("coolingtowerrecipe_waterfromSteamF", "cooling_tower_t2", 5)
.addFluidInput(<liquid:fresh_water>*2000)
.addFluidInput(<liquid:steam>*500)
.addItemOutput(<thebetweenlands:items_misc:27>)
.setChance(0.65)
.addFluidOutput(<liquid:ic2distilled_water>*80)
.addStartHandler(function (event as RecipeStartEvent){
   addClouds(event.controller);
})
.build();

//burner drill stuff

function checkVeins (iblockstate as IBlockState, controller as IMachineController, pos as IBlockPos) as IItemStack
{
    
    val block as BlockOreTFC= iblockstate.getBlock().native as BlockOreTFC;
    val chunkX as int = Math.floor(pos.x as float /16.0) as int;
    val chunkZ as int = Math.floor(pos.z as float /16.0) as int;
    val veins = WorldGenOreVeins.getNearbyVeins(chunkX, chunkZ, controller.world.getWorldInfo().seed as long, 2);

    for vein in veins
    {
        if block.ore == vein.getType().getOre()
        {
           var item as IItemStack = ItemOreTFC.get(block.ore, 1) as IItemStack;
            return item; 
            
        }
    }
    return native.IItemStack.EMPTY;
}

function lookForOre(controller as IMachineController) as IItemStack
{
    val offset =  controller.pos.getOffset(controller.facing, -1)
                                .getOffset(IFacing.down(), 3);

    val iblockstate = controller.world.getBlockState(offset);
    val blockstate = iblockstate.native;
    
    if (isNull(blockstate) || isNull(blockstate.getBlock()))
    {
        return native.IItemStack.EMPTY;
    }

    
    var item as IItemStack  = native.IItemStack.EMPTY;
    if iblockstate.getBlock().definition.id has "tfc:ore/"
    {
        item = checkVeins(iblockstate, controller, offset) as IItemStack;
        
    }

 return item;
}

function setPower(power as float, controller as IMachineController) as void
{
    val drillPos =  controller.pos.getOffset(controller.facing, -1)
                                .getOffset(IFacing.down(), 1);
    val drill as IBlock = controller.world.getBlock (drillPos.x, drillPos.y, drillPos.z);

    val data = drill.data;
    val map1 as IData = {
  mech_power : power
};
    val powerIn = data.memberGet("mech_power");

   val datamod as IData = ((data -"mech_power") + map1);

   controller.world.setBlockState(controller.world.getBlockState(drillPos), datamod, drillPos);
}


function setFireboxState(meta as int, controller as IMachineController) as void
{
val pos1 =  controller.pos.getOffset(controller.facing, -1)
                                .getOffset(IFacing.up(), 1)
                                .getOffset(IFacing.north, 1);
    val state as IBlockState = <modularmachinery:blockcasing>.asBlock().definition.getStateFromMeta(meta);
    if controller.world.getBlockState(pos1) == state
    {
        return;
    }
    
     val pos2 =  controller.pos .getOffset(controller.facing, -1)
                                .getOffset(IFacing.up(), 1)
                                .getOffset(IFacing.south, 1);
     val pos3 =  controller.pos .getOffset(controller.facing, -1)
                                .getOffset(IFacing.up(), 1)
                                .getOffset(IFacing.east, 1);
     val pos4 =  controller.pos .getOffset(controller.facing, -1)
                                .getOffset(IFacing.up(), 1)
                                .getOffset(IFacing.west, 1);


    
    Sync.addSyncTask(function(){
        for pos in [pos1, pos2, pos3, pos4]
        {
            var data = controller.world.getBlock(pos).data;
            var blockstate = controller.world.getBlockState(pos).block.definition.getStateFromMeta(meta);
            controller.world.setBlockState(blockstate, data, pos);
        }
    });
}

<modularmachinery:blockcasing:4>.displayName = "Firebox Casing";




mods.modularmachinery.RecipeBuilder.newBuilder("perditioDrilling", "burnerdrill_t1", 100)

.addItemOutput(<betterquesting:placeholder>)
.addItemModifier(function(controller as IMachineController, item as IItemStack) as IItemStack {
   
    if isNull (controller.customData)||isNull (controller.customData.item)
    {
        return null;
    }
    val itemOut as IItemStack = itemUtils.getItem(controller.customData.item as string);
    return itemOut;

})

.addItemInput(<thaumcraft:alumentum>)
.setChance(1.5/32)
.addAspectInput("perditio", 1)

.addStartHandler(function (event as RecipeStartEvent){
    setFireboxState(4, event.controller);
    val item = lookForOre(event.controller);
    if !isNull(item)
    {
        val map1 as IData = {
            "item" : item.definition.id
        };
        event.controller.customData = map1;
        setPower(30.0, event.controller);
    }
	else 
	{
		val map1 as IData = {
            "item" : ""
        };
        event.controller.customData = map1;
	}
})

.addFinishHandler(function (event as RecipeFinishEvent){
    setPower(0.0, event.controller);
    event.controller.world.catenation()
    .sleep(2)
    .then(function(world, context){
        if event.controller.isWorking
        {
            return;
        }
        
        setFireboxState(2, event.controller);

    })
    .start();
    
})
.build();




mods.modularmachinery.RecipeBuilder.newBuilder("basicDrilling", "burnerdrill_t1", 300)

.addItemOutput(<betterquesting:placeholder>)
.addItemModifier(function(controller as IMachineController, item as IItemStack) as IItemStack {
   if isNull (controller.customData)||isNull (controller.customData.item)
   {
    return null;
   }
    val itemOut as IItemStack = itemUtils.getItem(controller.customData.item);
    return itemOut;

    }
)

.addItemInput(<thaumcraft:alumentum>)
.setChance(1.5/32)

.addStartHandler(function (event as RecipeStartEvent){
    
    setFireboxState(4, event.controller);
    val item = lookForOre(event.controller);
    if !isNull(item)
    {
        val map1 as IData = {
            "item" : item.definition.id
        };
        event.controller.customData = map1;
        setPower(10.0, event.controller);
    }
	else 
	{
		val map1 as IData = {
            "item" : ""
        };
        event.controller.customData = map1;
	}
})

.addFinishHandler(function (event as RecipeFinishEvent){
    setPower(0.0, event.controller);
    event.controller.world.catenation()
    .sleep(2)
    .then(function(world, context){
        if event.controller.isWorking
        {
            return;
        }
        
        setFireboxState(2, event.controller);

    })
    .start();
})
.build();


