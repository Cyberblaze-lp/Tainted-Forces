#modloaded botania
#loader mixin

import mixin.CallbackInfo;
import mixin.CallbackInfoReturnable;
import native.net.minecraft.block.state.IBlockState;
import native.net.minecraft.block.Block;
import native.net.minecraft.init.Blocks;
import native.net.minecraft.util.math.BlockPos;
import native.net.msrandom.witchery.init.WitcheryBlocks;
import native.vazkii.botania.api.lexicon.multiblock.Multiblock;
import native.net.minecraft.world.World;
import native.net.minecraft.util.EnumFacing;


#mixin {targets: "vazkii.botania.client.integration.jei.manapool.ManaPoolRecipeWrapper"}
zenClass MixinManaPoolRecipeWrapper {

    #mixin Shadow
    #mixin Final
    var mana as int;

    #mixin Inject {method: "getTooltipStrings", at: {value: "HEAD"}, cancellable: true}
    function showManaNumericalValue(mouseX as int, mouseY as int, cir as CallbackInfoReturnable) as void {
        if (mouseX > 20 && mouseX < 125 && mouseY > 50 && mouseY < 54) {
            cir.setReturnValue([mana ~ " mana"] as [string]);
        }
    }
}

#mixin {targets: "vazkii.botania.client.integration.jei.runicaltar.RunicAltarRecipeWrapper"}
zenClass MixinRunicAltarRecipeWrapper {

    #mixin Shadow
    #mixin Final
    var manaUsage as int;

    function getTooltipStrings(mouseX as int, mouseY as int) as [string] {
        if (mouseX > 6 && mouseX < 111 && mouseY > 98 && mouseY < 102) {
            return [manaUsage ~ " mana"] as [string];
        }
        return [] as [string];
    }
}

#mixin {targets: "vazkii.botania.common.block.subtile.functional.SubTileOrechidIgnem"}
zenClass MixinSubTileOrechidIgnem {
    #mixin Inject {method: "canOperate", at: {value: "HEAD"}, cancellable: true}
    function showManaNumericalValue(cir as CallbackInfoReturnable) as void {
        cir.setReturnValue(true);
    }
}

// Fix crash on fighting Gaia II on server
// https://github.com/Krutoy242/Enigmatica2Expert-Extended/issues/344
#mixin {targets: "vazkii.botania.common.entity.EntityDoppleganger"}
zenClass MixinEntityDoppleganger {
    #mixin Inject
    #{
    #    method: "func_70636_d",
    #    at: {
    #       value: "INVOKE",
    #       target: "Lvazkii/botania/common/entity/EntityDoppleganger;func_70106_y()V",
    #       shift: "AFTER"
    #    },
    #    cancellable: true
    #}
    function stopUpdatingEntityWhenNoPlayerNearby(ci as CallbackInfo) as void {
        ci.cancel();
    }
}


//adjust Mana enchanter multiblock to actually be reasonable
#mixin {targets:"vazkii.botania.common.block.tile.TileEnchanter"}
zenClass multiblockAdjust1 {
    #mixin Static
    #mixin Overwrite
    function makeMultiblockSet() as native.vazkii.botania.api.lexicon.multiblock.MultiblockSet
    {
        val PylonsX as BlockPos[] =[  BlockPos(-5, 1, 0),   BlockPos(5, 1, 0),   BlockPos(-4, 1, 3),   BlockPos(4, 1, 3),   BlockPos(-4, 1, -3 ),   BlockPos(4, 1, -3)];
        val PylonsZ as BlockPos[] =[   BlockPos(0, 1, -5),   BlockPos(0, 1, 5),   BlockPos(3, 1, -4),   BlockPos(3, 1, 4),   BlockPos(-3, 1, -4 ),   BlockPos(-3, 1, 4) ];
        val Obby as BlockPos[] =[  BlockPos(0, -1, 0),
			  BlockPos(0, -1, 1),   BlockPos(0, -1, -1),   BlockPos(1, -1, 0),   BlockPos(-1, -1, 0),
			  BlockPos(0, -1, 2),   BlockPos(-1, -1, 2),   BlockPos(1, -1, 2),
			  BlockPos(0, -1, -2),   BlockPos(-1, -1, -2),   BlockPos(1, -1, -2),
			  BlockPos(2, -1, 0),   BlockPos(2, -1, 1),   BlockPos(2, -1, -1 ),
			  BlockPos(-2, -1, 0),   BlockPos(-2, -1, 1),   BlockPos(-2, -1, -1)];


        val Flowers as BlockPos[] =[	  BlockPos(-1, 0, -1),   BlockPos(1, 0, -1),   BlockPos(-1, 0, 1),   BlockPos(1, 0, 1)];
        var mb as Multiblock = Multiblock();

        for pos in Obby
        {
            mb.addComponent(pos.up(), Blocks.SNOW.getDefaultState());
        }
        for pos in PylonsX
        {
            mb.addComponent(pos.up(), native.vazkii.botania.common.block.ModBlocks.pylon.getDefaultState());
            mb.addComponent(pos, WitcheryBlocks.GLYPH_RITUAL.getDefaultState());
        }
        for pos in Flowers
        {
            mb.addComponent(pos.up(), WitcheryBlocks.GLYPH_RITUAL.getDefaultState());
        }
        	mb.addComponent(BlockPos.ORIGIN.up(), WitcheryBlocks.ALTAR.getDefaultState());

        
        
        return mb.makeSet();
    }
    #mixin Static
    #mixin Overwrite
    function canEnchanterExist(world as World, pos as BlockPos, axis as EnumFacing.Axis ) as bool {
        val PylonsX as BlockPos[] =[  BlockPos(-5, 1, 0),   BlockPos(5, 1, 0),   BlockPos(-4, 1, 3),   BlockPos(4, 1, 3),   BlockPos(-4, 1, -3 ),   BlockPos(4, 1, -3)];
        val PylonsZ as BlockPos[] =[   BlockPos(0, 1, -5),   BlockPos(0, 1, 5),   BlockPos(3, 1, -4),   BlockPos(3, 1, 4),   BlockPos(-3, 1, -4 ),   BlockPos(-3, 1, 4) ];
        val Obby as BlockPos[] =[  BlockPos(0, -1, 0),
			  BlockPos(0, -1, 1),   BlockPos(0, -1, -1),   BlockPos(1, -1, 0),   BlockPos(-1, -1, 0),
			  BlockPos(0, -1, 2),   BlockPos(-1, -1, 2),   BlockPos(1, -1, 2),
			  BlockPos(0, -1, -2),   BlockPos(-1, -1, -2),   BlockPos(1, -1, -2),
			  BlockPos(2, -1, 0),   BlockPos(2, -1, 1),   BlockPos(2, -1, -1 ),
			  BlockPos(-2, -1, 0),   BlockPos(-2, -1, 1),   BlockPos(-2, -1, -1)];
        val Flowers as BlockPos[] =[	  BlockPos(-1, 0, -1),   BlockPos(1, 0, -1),   BlockPos(-1, 0, 1),   BlockPos(1, 0, 1)];

		for obsidian in Obby
			if(world.getBlockState(pos.add(obsidian)).getBlock() != Blocks.SNOW)
            {
                return false;
            }
				

		if axis == EnumFacing.Axis.X
        {
            for pylon in PylonsX
			if(world.getBlockState(pos.add(pylon)).getBlock() != native.vazkii.botania.common.block.ModBlocks.pylon || world.getBlockState(pos.add(pylon.down())).getBlock() != WitcheryBlocks.GLYPH_RITUAL)
				return false;
        }
        else 
        {
            for pylon in PylonsZ
			if(world.getBlockState(pos.add(pylon)).getBlock() != native.vazkii.botania.common.block.ModBlocks.pylon || world.getBlockState(pos.add(pylon.down())).getBlock() != WitcheryBlocks.GLYPH_RITUAL)
				return false;
        }

		for flower in Flowers
			if(world.getBlockState(pos.add(flower)).getBlock() != WitcheryBlocks.GLYPH_RITUAL)
				return false;

		return true;
	}

    #mixin Redirect{method:"func_73660_a", at:{value:"INVOKE", target:"Lnet/minecraft/block/Block;func_176223_P()Lnet/minecraft/block/state/IBlockState;", ordinal:0}}
    function LapistoAltar(instance as Block) as IBlockState
    {
        return WitcheryBlocks.ALTAR.getDefaultState();
    }
}

#mixin {targets:"vazkii.botania.common.item.ItemTwigWand"}
zenClass multiblockAdjust2 {

#mixin Redirect{method:"func_180614_a", at:{value:"FIELD", target:"net.minecraft.init.Blocks.field_150368_y", ordinal:0}}
function LapistoAltar() as Block
    {
        return WitcheryBlocks.ALTAR as Block;
    }
}




