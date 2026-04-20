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
        //return BlocksTFC.FIRE_BRICKS.getItem(null, null,BlocksTFC.FIRE_BRICKS.getStateFromMeta(0));
        return ItemStack(BlocksTFC.FIRE_BRICKS);
    }

}





