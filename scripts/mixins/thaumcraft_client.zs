#sideonly client
#loader mixin
import native.net.minecraft.util.BlockRenderLayer;

//taint aesthetics


#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinFiberTransparentBorder {
    #mixin Overwrite 
    function func_180664_k() as BlockRenderLayer {
        return BlockRenderLayer.TRANSLUCENT;
    }
}