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
import native.net.minecraft.client.renderer.texture.TextureAtlasSprite;
import native.CoroUtil.util.Vec3;
import mods.modularmachinery.ControllerModelAnimationEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
recipes.removeByMod("modularmachinery");


mods.modularmachinery.RecipeBuilder.newBuilder("basicflux", "calcifier_t0", 300)
.addItemInput(<ore:powderMana>*8)
.addItemOutput(<tfc:powder/flux>)
.addFluxOutput(2,0)
.build();

//cooling tower stuff
//ic2 boiler to tower ratio should be ~ 16:1


function addClouds (controller as IMachineController) as void
{
 
    val icon = TextureAtlasSprite("extendedrenderer:textures/particles/cloud256.png");
    val offset =  controller.pos.getOffset(controller.facing, -14)
                                .getOffset(IFacing.up(), 21);
    var vec = Vec3(offset);
    var pb = ParticleBehaviors(vec);
    var cloud = pb.spawnNewParticleIconFX(controller.world.native, icon, offset.x as double, offset.y as double, offset.z as double, 0.0d, 0.01d, 0.0d, 1);

    pb.initParticle(cloud);




}

MMEvents.onControllerGUIRender("cooling_tower_t2", function(event as ControllerGUIRenderEvent) {
    addClouds(event.controller);
});

mods.modularmachinery.RecipeBuilder.newBuilder("waterfromExhaustSteamW", "cooling_tower_t2", 5)
.addFluidInput(<liquid:water>*2000)
.addFluidInput(<liquid:exhauststeam>*1000)
.addItemOutput(<thebetweenlands:items_misc:27>)
.setChance(0.65)
.addFluidOutput(<liquid:ic2distilled_water>*80)
.addStartHandler(function (event as ControllerModelAnimationEvent){
    addClouds(event.controller);
})
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("waterfromSteamW", "cooling_tower_t2", 5)
.addFluidInput(<liquid:water>*2000)
.addFluidInput(<liquid:steam>*500)
.addItemOutput(<thebetweenlands:items_misc:27>)
.setChance(0.65)
.addFluidOutput(<liquid:ic2distilled_water>*80)
.addStartHandler(function (event as RecipeStartEvent){
    addClouds(event.controller);
})
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("waterfromExhaustSteamF", "cooling_tower_t2", 5)
.addFluidInput(<liquid:fresh_water>*2000)
.addFluidInput(<liquid:exhauststeam>*1000)
.addItemOutput(<thebetweenlands:items_misc:27>)
.setChance(0.65)
.addFluidOutput(<liquid:ic2distilled_water>*80)
.addStartHandler(function (event as RecipeStartEvent){
    addClouds(event.controller);
})
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("waterfromSteamF", "cooling_tower_t2", 5)
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


 

    for pos in [pos1, pos2, pos3, pos4]
    {
        // horrible clump of tech debt that will come to haunt us one day
        // changes the blockstate without telling the TE that its existence privilege has been revoked
        val chunk = controller.world.native.getChunk(pos);

        val stateOld = controller.world.getBlockState(pos1).native;

        chunk.storageArrays[Math.floor(pos.y as float /16.0)].set(pos.x & 15, pos.y & 15, pos.z & 15, state.native );
        chunk.markDirty();
        controller.world.native.markAndNotifyBlock(pos, chunk, stateOld, state, 3);

    }
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
    setFireboxState(2, event.controller);
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
    setFireboxState(2, event.controller);
})
.build();


