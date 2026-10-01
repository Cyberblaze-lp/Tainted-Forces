#sideonly client
#loader mixin
import native.net.minecraft.block.Block;
import native.net.minecraft.util.BlockRenderLayer;



#mixin {targets: "vazkii.botania.common.block.mana.BlockEnchanter"}
zenClass MixinTransparentEnchanter extends Block{
    function func_180664_k() as BlockRenderLayer {
        return BlockRenderLayer.CUTOUT_MIPPED;
    }
}