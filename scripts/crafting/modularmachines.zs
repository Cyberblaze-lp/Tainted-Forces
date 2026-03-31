import mods.modularmachinery.IMachineController;                                                                  
import mods.modularmachinery.RecipeFinishEvent;
import native.net.dries007.tfc.objects.blocks.stone.BlockOreTFC;
import native.net.dries007.tfc.objects.items.metal.ItemOreTFC;
import native.net.dries007.tfc.world.classic.worldgen.WorldGenOreVeins;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.world.IFacing;
import crafttweaker.util.Math;

recipes.removeByMod("modularmachinery");


mods.modularmachinery.RecipeBuilder.newBuilder("basicflux", "calcifier_t0", 300)
.addItemInput(<ore:powderMana>*8)
.addItemOutput(<tfc:powder/flux>)
.addFluxOutput(2,0)
.build();

//burner drill stuff

function checkVeins (blockstate as BlockOreTFC, controller as IMachineController, pos as IBlockPos) as native.IItemStack
{
        return ItemOreTFC.get(blockstate.ore) as native.IItemStack;
            


    val chunkX as int = Math.floor(pos.x /16) as int;
    val chunkZ as int = Math.floor(pos.z /16) as int;
    val veins = WorldGenOreVeins.getNearbyVeins(chunkX, chunkZ, controller.world.getWorldInfo().seed as long, 1);

    for vein in veins
    {
        if blockstate.ore == vein.getType().getOre()
        {
           var item as native.IItemStack = ItemOreTFC.get(blockstate.ore) as native.IItemStack;
            return item; 
            
        }
    }
    return native.IItemStack.EMPTY;
}

function lookForOre(controller as IMachineController) as IItemStack
{
    val offset =  controller.pos.getOffset(controller.facing, -1)
                                .getOffset(IFacing.down(), 3);

    val blockstate = controller.world.getBlockState(offset).native;
    
    if isNull(blockstate) || isNull(blockstate.getBlock())
    {
        return native.IItemStack.EMPTY.wrapper;
    }

    
    var item as IItemStack  = native.IItemStack.EMPTY.wrapper;
    if blockstate.getBlock() instanceof BlockOreTFC
    {
        item = checkVeins(blockstate, controller, offset) as IItemStack;
        
    }




   
 return item;
}



mods.modularmachinery.RecipeBuilder.newBuilder("perditioDrilling", "burnerdrill_t1", 100)



.addItemOutput(<betterquesting:placeholder>)
.addItemModifier(function(controller as IMachineController, item as IItemStack) as IItemStack {
   
    return lookForOre(controller);

    })
.addItemInput(<thaumcraft:alumentum>)
.addAspectInput("perditio", 1)
.build();


mods.modularmachinery.RecipeBuilder.newBuilder("basicDrilling", "burnerdrill_t1", 300)


.addItemOutput(<betterquesting:placeholder>)
.addItemModifier(function(controller as IMachineController, item as IItemStack) as IItemStack {
   
    return lookForOre(controller);

    })


.addItemInput(<thaumcraft:alumentum>)
.build();


