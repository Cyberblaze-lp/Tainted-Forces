#loader mixin
import native.java.util.ArrayList;
import native.java.util.Iterator;
import native.net.minecraft.block.BlockFlower;
import native.net.minecraft.block.material.Material;
import native.net.minecraft.entity.Entity;
import native.net.minecraft.init.Blocks;
import native.net.minecraft.util.math.BlockPos;
import native.net.minecraft.world.World;
import native.net.minecraftforge.common.IPlantable;
import native.thaumcraft.api.ThaumcraftMaterials;
import native.thaumcraft.api.aura.AuraHelper;
import native.thaumcraft.api.blocks.BlocksTC;
import native.thaumcraft.common.blocks.IBlockFacing;
import native.thaumcraft.common.config.ModConfig.CONFIG_MISC;
import native.thaumcraft.common.config.ModConfig.CONFIG_WORLD;
import native.thaumcraft.common.entities.monster.tainted.EntityTaintSeed;
import native.thaumcraft.common.lib.utils.BlockUtils;
import native.thaumcraft.common.lib.utils.EntityUtils;
import native.thaumcraft.common.lib.utils.Utils;
import native.thaumcraft.common.world.aura.AuraHandler;
import native.thaumcraft.common.world.aura.AuraThread;
import native.net.minecraft.block.Block;
import native.net.minecraft.util.BlockRenderLayer;





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
        return(2.0f* 7.0f);
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


#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaintFibre"}
zenClass func_180664 {
    #mixin Overwrite 
    function func_180664_k() as BlockRenderLayer {
        return BlockRenderLayer.TRANSLUCENT;
    }
}

//taint aesthetics

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








//misc

#mixin {targets: "thaumcraft.common.blocks.misc.BlockFluidDeath"}
zenClass MixinFluidDeath {
    #mixin ModifyConstant {method: "func_180634_a",  constant:{intValue: 4}}
    function relocateData(value as int) as int {
        return 30;
    }
}



#mixin {targets: "blusunrize.immersiveengineering.common.util.compat.ThaumcraftHelper"}
zenClass MixinFluidDeathChemthrower {
    #mixin ModifyConstant {method: "init",  constant:{floatValue: 4.0}}
    function relocateData(value as float) as float {
        return 12.0f;
    }
}


#mixin {targets: "thaumcraft.common.blocks.world.taint.BlockTaint"}
zenClass MixinSoilSpread{
    #mixin Redirect {method: "func_180650_b", at:{value:"FIELD", target:"thaumcraft.api.blocks.BlocksTC.taintRock"}} 
    function modifyBlockType() as Block {
        return (native.thaumcraft.api.blocks.BlocksTC.taintSoil);
    }
}



#mixin {targets: "thaumcraft.common.entities.construct.EntityTurretCrossbowAdvanced"}
zenClass MixinAdvCrossbowRange {
    #mixin ModifyConstant {method: "func_184651_r",  constant:{floatValue: 24.0}}
    function relocateData(value as float) as float {
        return 48.0f;
    }
    
}









