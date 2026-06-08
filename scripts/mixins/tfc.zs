#loader mixin
import native.net.dries007.tfc.api.capability.size.Weight;
import native.net.dries007.tfc.objects.blocks.BlocksTFC;
import native.com.google.common.base.Predicates;
import native.blusunrize.immersiveengineering.common.IEContent;
import native.net.minecraft.block.state.IBlockState;
import native.net.minecraft.block.Block;
import native.net.minecraft.world.World;
import native.net.minecraft.util.math.BlockPos;
import native.net.minecraft.item.ItemStack;
import native.blusunrize.immersiveengineering.common.util.Utils;
import native.net.minecraftforge.event.RegistryEvent;
import mixin.CallbackInfo;
import mixin.CallbackInfoReturnable;
import native.net.minecraftforge.fluids.Fluid;
import native.net.minecraftforge.fluids.FluidRegistry;
import native.net.dries007.tfc.objects.fluids.properties.FluidWrapper;
import native.net.dries007.tfc.world.classic.genlayers.river.GenLayerRiverInitTFC;
import native.net.dries007.tfc.api.util.IBellowsConsumerBlock;
import native.net.minecraft.util.EnumFacing;
import native.net.minecraft.util.math.Vec3i;
import native.vazkii.botania.api.state.BotaniaStateProps;


#mixin {targets: "net.dries007.tfc.objects.items.ItemsTFC"}
zenClass MixinWeights {
    #mixin Static
    #mixin Redirect {method: "registerItems", at:{value:"FIELD", target:"net.dries007.tfc.api.capability.size.Weight.LIGHT"}} 
    function modifyWeight() as Weight {
        return Weight.VERY_LIGHT;
    }
}

#mixin {targets: "net.dries007.tfc.objects.items.metal.ItemMetal"}
zenClass MixinWeightsMetal {
    #mixin Redirect {method: "getWeight", at:{value:"FIELD", target:"net.dries007.tfc.api.capability.size.Weight.LIGHT"}} 
    function modifyWeight() as Weight {
        return Weight.VERY_LIGHT;
    }
}


#mixin {targets: "blusunrize.immersiveengineering.common.blocks.multiblocks.MultiblockCokeOven" }
zenClass MixinFirebrick {

    

    #mixin Overwrite 
    function isBlockTrigger(state as IBlockState) as bool
    {
        return state.getBlock()==BlocksTFC.FIRE_BRICKS;
    }

     #mixin Redirect {method: "createStructure", at:{value:"INVOKE", target:"Lblusunrize/immersiveengineering/common/util/Utils;isBlockAt(Lnet/minecraft/world/World;Lnet/minecraft/util/math/BlockPos;Lnet/minecraft/block/Block;I)Z"}} 
    function modifyBlockCheck(world as World, pos as BlockPos, b as Block , meta as int) as bool {
        return Utils.isBlockAt(world, pos, BlocksTFC.FIRE_BRICKS , 0);
    }


}

#mixin {targets: "blusunrize.immersiveengineering.common.blocks.stone.TileEntityCokeOven"}
zenClass MixinFirebrickBack {

    

    #mixin Overwrite 
    function getOriginalBlock() as ItemStack
    {
        
        return ItemStack(BlocksTFC.FIRE_BRICKS);
    }

}

#mixin {targets: "net.dries007.tfc.types.DefaultRecipes" }
zenClass MixinNukeQuern {

    
    #mixin Static
    #mixin Inject {method: "onRegisterQuernRecipeEvent", at: {value: "HEAD"}, cancellable: true}
    function nukeQuern(register as native.net.minecraftforge.event.RegistryEvent.Register, ci as CallbackInfo) as void {
        ci.cancel();
        return;
    }
}

// replace fresh water with vanilla water

#mixin {targets: "net.dries007.tfc.objects.blocks.BlocksTFC"}
zenClass MixinWaterCheck
{
    #mixin Overwrite
    #mixin Static
    function isFreshWater(current as IBlockState) as bool
    {
        return current == FluidRegistry.WATER.getBlock().getDefaultState();
    }

}
#mixin {targets:"net.dries007.tfc.objects.fluids.properties.FluidWrapper"}
zenClass MixinWaterRegistry
{
    #mixin Overwrite
    function get() as Fluid
    {
        if this0.fluid.name == "fresh_water"
        {
            return FluidRegistry.WATER;
        }
        return this0.fluid;

    }
}



#mixin {targets: "com.rcx.mystgears.block.TileEntityMechanicalBellows" }
zenClass MixinBellowsCompat {

    #mixin Inject {method: "func_73660_a", at: {value: "TAIL"}}
    function AddAirTicks(ci as CallbackInfo) as void 
    {
        val mod = this0.currentPower as double ;

        if (mod <9.9)
        {
            return;
        }
        val world as World = this0.field_145850_b;
        val pos = this0.func_174877_v();
        val f1 = world.func_180495_p(pos).func_177229_b(BotaniaStateProps.CARDINALS) as EnumFacing;
        val pos1 = pos.func_177972_a(f1);
        val block1 = world.func_180495_p(pos1).func_177230_c();

        if( block1 instanceof IBellowsConsumerBlock)
        {
            (block1 as IBellowsConsumerBlock).onAirIntake(world, pos1, (mod / 9.99 + 1) as int);
            return;
            
        }

        val pos2 = pos1.func_177967_a(EnumFacing.DOWN, 1);
        val block2 = world.func_180495_p(pos2).func_177230_c();

        if( block2 instanceof IBellowsConsumerBlock)
        {
            (block2 as IBellowsConsumerBlock).onAirIntake(world, pos2, (mod / 9.99 + 1) as int);
            
            return;
        }     
    }
}

#mixin {targets: "vazkii.botania.common.block.tile.mana.TileBellows" }
zenClass MixinBellowsCompat2 {

    #mixin Inject {method: "func_73660_a", at: {value: "TAIL"}}
    function AddAirTicks(ci as CallbackInfo) as void 
    {
        
        if(!this0.active)
        {
            return;
        }
        val mod = 4;
        val world as World = this0.field_145850_b;
        val pos = this0.func_174877_v();
        val f1 = world.func_180495_p(pos).func_177229_b(BotaniaStateProps.CARDINALS) as EnumFacing;
        val pos1 = pos.func_177972_a(f1);
        val block1 = world.func_180495_p(pos1).func_177230_c();
        
        if( block1 instanceof IBellowsConsumerBlock)
        {
            (block1 as IBellowsConsumerBlock).onAirIntake(world, pos1, 3*mod as int);
            return;
            
        }

        val pos2 = pos1.func_177967_a(EnumFacing.DOWN, 1);
        val block2 = world.func_180495_p(pos2).func_177230_c();

        if( block2 instanceof IBellowsConsumerBlock)
        {
            (block2 as IBellowsConsumerBlock).onAirIntake(world, pos2, 3*mod as int);
            
            return;
        }     
    }
}

