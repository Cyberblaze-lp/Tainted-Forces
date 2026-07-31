#loader mixin
import native.baubles.api.BaubleType;
import native.java.util.ArrayList;
import native.java.util.Iterator;
import native.net.minecraft.block.Block;
import native.net.minecraft.block.BlockFlower;
import native.net.minecraft.block.material.Material;
import native.net.minecraft.block.state.IBlockState;
import native.net.minecraft.entity.Entity;
import native.net.minecraft.entity.EntityLivingBase;
import native.net.minecraft.init.Blocks;
import native.net.minecraft.item.ItemStack;
import native.net.minecraft.util.BlockRenderLayer;
import native.net.minecraft.util.EnumFacing;
import native.net.minecraft.util.math.BlockPos;
import native.net.minecraft.world.World;
import native.net.minecraftforge.common.IPlantable;
import native.roidrole.tfutils.config.TFUtilsConfig;
import native.thaumcraft.api.aura.AuraHelper;
import native.thaumcraft.api.blocks.BlocksTC;
import native.thaumcraft.api.items.IRechargable;
import native.thaumcraft.api.items.RechargeHelper;
import native.thaumcraft.api.ThaumcraftMaterials;
import native.thaumcraft.common.blocks.IBlockFacing;
import native.thaumcraft.common.blocks.world.taint.BlockTaintFibre;
import native.thaumcraft.common.blocks.world.taint.BlockTaintLog;
import native.thaumcraft.common.blocks.world.taint.TaintHelper;
import native.thaumcraft.common.config.ModConfig;
import native.thaumcraft.common.config.ModConfig.CONFIG_MISC;
import native.thaumcraft.common.config.ModConfig.CONFIG_WORLD;
import native.thaumcraft.common.entities.monster.tainted.EntityTaintSeed;
import native.thaumcraft.common.lib.utils.BlockUtils;
import native.thaumcraft.common.lib.utils.EntityUtils;
import native.thaumcraft.common.lib.utils.Utils;
import native.thaumcraft.common.world.aura.AuraHandler;
import native.thaumcraft.common.world.aura.AuraThread;
import native.thecodex6824.thaumicaugmentation.common.item.ItemThaumostaticHarness;



//Aura & Flux

#mixin {targets: "thaumcraft.common.tiles.devices.TileDioptra"}
zenClass MixinDioptra {
    #mixin ModifyConstant {method: "func_73660_a",  constant:{floatValue: 64.0}}
    function FluxDioptraLook(value as float) as float {
        return( 120.0f);
    }
}



#mixin {targets: "thecodex6824.thaumcraftfix.api.aura.DefaultAuraProcessor"}
zenClass MixinFluxSpreadFactor {
    #mixin ModifyConstant {method: "equalizeWithNeighbors",  constant:{floatValue: 1.75}}
    function ExponentialFade(value as float) as float {
        return 1.0f;
    }
}


#mixin {targets: "thecodex6824.thaumcraftfix.api.aura.DefaultAuraProcessor"}
zenClass MixinSpreadSpeed {
    #mixin ModifyConstant {method: "equalizeWithNeighbors",  constant:{floatValue: 1.0}}
    function FluxSpreadSpeed(value as float) as float {
        return(7.0f);
    }
}

#mixin {targets: "thecodex6824.thaumcraftfix.api.aura.DefaultAuraProcessor"}
zenClass MixinFluxGrace {
    #mixin ModifyConstant {method: "equalizeWithNeighbors",  constant:{floatValue: 5.0}}
    function relocateData(value as float) as float {
        return 25.0f;
    }
}

#mixin {targets: "thecodex6824.thaumcraftfix.api.aura.DefaultAuraProcessor"}
zenClass MixinLinearity {
    #mixin ModifyVariable
    #{
    #    method: "equalizeWithNeighbors",
    #   name: "inc",
    #    at: {      
    #        value: "STORE",
    #         ordinal: 1,
    #        target: "inc"
    #    }
    #}
    function divide(value as float) as float {
        return(value / 2.0);
    }
}









#mixin {targets: "thaumcraft.common.entities.monster.tainted.EntityTaintSeed"}
zenClass passivePollute {
    #mixin ModifyConstant {method: "func_70071_h_",  constant:{floatValue: 0.1}}
    function passivePollution(value as float) as float {
        return 0.0f;
    }
}


//taint aesthetics


#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinFiberTransparentBorder {
    #mixin Overwrite 
    function func_180664_k() as BlockRenderLayer {
        return BlockRenderLayer.TRANSLUCENT;
    }
}


#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinFiberLight {
    #mixin ModifyConstant {method: "getLightValue",  constant:{intValue: 12}}
    function relocateData(value as int) as int {
        return 0;
    }

}

#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinFiberLight2 {
    #mixin ModifyConstant {method: "getLightValue",  constant:{intValue: 6}}
    function relocateData(value as int) as int {
        return 3;
    }

}

#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinGrowthChance {
    #mixin ModifyConstant {method: "func_176221_a",  constant:{intValue: 50}}
    function relocateData(value as int) as int {
        return 400;
    }
    
}

#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinGrowth4 {
    #mixin ModifyConstant {method: "func_176221_a",  constant:{intValue: 47}}
    function relocateData(value as int) as int {
        return 395;
    }
    
}

#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinFiberGrowths2 {
    #mixin ModifyConstant
    #{
    #method: "func_176221_a",
    #constant: {
    #        
    #        intValue: 3,
    #        ordinal: 0
    #    }
    #}
    function relocateData(value as int) as int {
        return 2;
    }
    
}

#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinFiberGrowths3 {
    #mixin ModifyConstant
    #{
    #method: "func_176221_a",
    #constant: {
    #        
    #        intValue: 4,
    #        ordinal: 0
    #    }
    #}
    function relocateData(value as int) as int {
        return 8;
    }
    
}

#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass MixinFiberGrowths4 {
    #mixin ModifyConstant
    #{
    #method: "func_176221_a",
    #constant: {
    #        
    #        intValue: 6,
    #        ordinal: 0
    #    }
    #}
    function relocateData(value as int) as int {
        return 10;
    }
    
}

//tainted soil spreads now instead of rock. less laggy with 144 layers of rock vs 9 of dirt. also fixes taint sometimes "missing" a patch of grass which looked patchworky and ugly

#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaint"}
zenClass MixinSoilSpread{
    #mixin Redirect {method: "func_180650_b", at:{value:"FIELD", target:"thaumcraft.api.blocks.BlocksTC.taintRock"}} 
    function modifyBlockType() as Block {
        return (native.thaumcraft.api.blocks.BlocksTC.taintSoil);
    }
}



// make thaumostatic harness un-rechargeable

#mixin {targets: "thecodex6824.thaumicaugmentation.common.item.ItemThaumostaticHarness"}
zenClass MixinNoRecharge{
    #mixin Overwrite 
    function getMaxCharge(stack as ItemStack, entity as EntityLivingBase ) as int {
        return RechargeHelper.getCharge(stack);
    }
}

#mixin {targets: "thecodex6824.thaumicaugmentation.common.item.ItemThaumostaticHarness"}
zenClass MixinMaxCharge {
    #mixin Static
    #mixin Overwrite
    function getHarnessVisCapacity(stack as ItemStack) as int {
        return 5;
    }
}



#mixin {targets: "thecodex6824.thaumicaugmentation.common.item.ItemThaumostaticHarnessAugment$1"}
zenClass MixinAugnment1 {
    #mixin Overwrite
    function getVisCapacity() as int {
        return 5;
    }
}

#mixin {targets: "thecodex6824.thaumicaugmentation.common.item.ItemThaumostaticHarnessAugment$2"}
zenClass MixinAugment2 {
    #mixin Overwrite
    function getVisCapacity() as int {
        return 5;
    }
}








//misc
//buff liquid death dmg

#mixin {targets: "thaumcraft.common.blocks.misc.BlockFluidDeath"}
zenClass MixinFluidDeath {
    #mixin ModifyConstant {method: "func_180634_a",  constant:{intValue: 4}}
    function relocateData(value as int) as int {
        return 30;
    }
}

//buff it a little less when used as chemthrower ammo

#mixin {targets: "blusunrize.immersiveengineering.common.util.compat.ThaumcraftHelper"}
zenClass MixinFluidDeathChemthrower {
    #mixin ModifyConstant {method: "init",  constant:{floatValue: 4.0}}
    function relocateData(value as float) as float {
        return 12.0f;
    }
}



//buff crossbow turret detection radius

#mixin {targets: "thaumcraft.common.entities.construct.EntityTurretCrossbowAdvanced"}
zenClass MixinAdvCrossbowRange {
    #mixin ModifyConstant {method: "func_184651_r",  constant:{floatValue: 24.0}}
    function relocateData(value as float) as float {
        return 48.0f;
    }
    
}


#mixin {targets: "thaumcraft.common.blocks.world.taint.TaintHelper"}
zenClass MixinTaintHelper {
    #mixin Overwrite
    function spreadFibres(world as World, pos as BlockPos, ignore as bool) as void {
		if(!ignore && ModConfig.CONFIG_MISC.wussMode){
			return;
		}
		val mod as float = AuraHandler.getFluxSaturation(world, pos) * 2.0F;
		if(!ignore && (world.rand.nextFloat() > ModConfig.CONFIG_WORLD.taintSpreadRate * mod)){
			return;
		}
		if(!TaintHelper.isNearTaintSeed(world, pos)){
			return;
		}
		val xx as int = pos.getX() + world.rand.nextInt(3) - 1;
		val yy as int = pos.getY() + world.rand.nextInt(3) - 1;
		val zz as int = pos.getZ() + world.rand.nextInt(3) - 1;
		val t as BlockPos = BlockPos(xx, yy, zz);
		if (t.equals(pos)) {
			return;
		}

		val blockState as IBlockState = world.getBlockState(t);
		val material as Material = blockState.getMaterial();
		val hardness as float = blockState.getBlockHardness(world, t);
		if (hardness < 0.0F || hardness > 10.0F) {
			return;
		}

		if (!blockState.getBlock().isLeaves(blockState, world, t) && !material.isLiquid() && (world.isAirBlock(t) || blockState.getBlock().isReplaceable(world, t) || blockState.getBlock() instanceof BlockFlower || blockState.getBlock() instanceof IPlantable) && BlockUtils.isAdjacentToSolidBlock(world, t) && !BlockTaintFibre.isOnlyAdjacentToTaint(world, t)) {
			world.setBlockState(t, BlocksTC.taintFibre.getDefaultState());
			world.addBlockEvent(t, BlocksTC.taintFibre, 1, 0);
			AuraHelper.drainFlux(world, t, 0.01F, false);
			return;
		}

		var entity as EntityTaintSeed;
		if (blockState.getBlock().isLeaves(blockState, world, t)) {
			var face as EnumFacing;
			if (world.rand.nextFloat() as double < 0.6D && (face = BlockUtils.getFaceBlockTouching(world, t, BlocksTC.taintLog)) != null) {
				world.setBlockState(t, BlocksTC.taintFeature.getDefaultState().withProperty(IBlockFacing.FACING, face.getOpposite()));
			} else {
				world.setBlockState(t, BlocksTC.taintFibre.getDefaultState());
				world.addBlockEvent(t, BlocksTC.taintFibre, 1, 0);
				AuraHelper.drainFlux(world, t, 0.01F, false);
			}

			return;
		}

		if (BlockTaintFibre.isHemmedByTaint(world, t) && Utils.isWoodLog(world, t) && blockState.getMaterial() != ThaumcraftMaterials.MATERIAL_TAINT) {
			world.setBlockState(t, BlocksTC.taintLog.getDefaultState().withProperty(BlockTaintLog.AXIS, BlockUtils.getBlockAxis(world, t)));
			return;
		}
		//TODO: Make the max hardness dependent on taint evolution
		if (BlockTaintFibre.isHemmedByTaint(world, t) && blockState.getBlockHardness(world, t) < 5.0F) {
			if (blockState.getBlock() == Blocks.RED_MUSHROOM_BLOCK || blockState.getBlock() == Blocks.BROWN_MUSHROOM_BLOCK || material == Material.GOURD || material == Material.CACTUS || material == Material.CORAL || material == Material.SPONGE || material == Material.WOOD) {
				world.setBlockState(t, BlocksTC.taintCrust.getDefaultState());
				world.addBlockEvent(t, BlocksTC.taintCrust, 1, 0);
				AuraHelper.drainFlux(world, t, 0.01F, false);
				return;
			}

			if (material == Material.SAND || material == Material.GROUND || material == Material.GRASS || material == Material.CLAY) {
				world.setBlockState(t, BlocksTC.taintSoil.getDefaultState());
				world.addBlockEvent(t, BlocksTC.taintSoil, 1, 0);
				AuraHelper.drainFlux(world, t, 0.01F, false);
				return;
			}

			if (material == Material.ROCK && mod > TFUtilsConfig.rockTaintificationThreashold) {
				world.setBlockState(t, BlocksTC.taintRock.getDefaultState());
				world.addBlockEvent(t, BlocksTC.taintRock, 1, 0);
				AuraHelper.drainFlux(world, t, 0.02F, false);
				return;
			}

			if (material == Material.IRON && mod > TFUtilsConfig.rockTaintificationThreashold && world.getGameRules().getInt("taintEvo") > TFUtilsConfig.metalMinEvo){
				world.setBlockState(t, BlocksTC.taintCrust.getDefaultState());
				world.addBlockEvent(t, BlocksTC.taintRock, 1, 0);
				AuraHelper.drainFlux(world, t, 0.02F, false);
				return;
			}

			if (material == Material.GLASS && mod > TFUtilsConfig.rockTaintificationThreashold && world.getGameRules().getInt("taintEvo") > TFUtilsConfig.metalMinEvo){
				world.setBlockState(t, BlocksTC.taintRock.getDefaultState());
				world.addBlockEvent(t, BlocksTC.taintRock, 1, 0);
				AuraHelper.drainFlux(world, t, 0.02F, false);
				return;
			}
		}

		if (
			(blockState.getBlock() == BlocksTC.taintFibre || blockState.getBlock() == BlocksTC.taintSoil || blockState.getBlock() == BlocksTC.taintRock)
		 && world.isAirBlock(t.up())
		 && AuraHelper.getFlux(world, t) >= 5.0F
		 && (world.rand.nextFloat() as double) < ((ModConfig.CONFIG_WORLD.taintSpreadRate as double) / 100.0F) * 0.33D
		 && TaintHelper.isAtTaintSeedEdge(world, t)
		){
			entity = EntityTaintSeed(world);
			entity.setLocationAndAngles(t.getX() as float + 0.5F, t.up().getY(), t.getZ() as float + 0.5F, world.rand.nextInt(360) as float, 0.0F);
			if (entity.getCanSpawnHere()) {
				AuraHelper.drainFlux(world, t, 5.0F, false);
				world.spawnEntity(entity);
			}
		}
    }
}





