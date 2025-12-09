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


//Aura & Flux

#mixin {targets: "thaumcraft.common.world.aura.AuraThread"}
zenClass MixinFluxSpreadFactor {
    #mixin ModifyConstant {method: "processAuraChunk",  constant:{doubleValue: 1.75}}
    function relocateData(value as double) as double {
        return 1.003d;
    }
}



#mixin {targets: "thaumcraft.common.world.aura.AuraThread"}
zenClass MixinFluxGrace {
    #mixin ModifyConstant {method: "processAuraChunk",  constant:{floatValue: 5.0}}
    function relocateData(value as float) as float {
        return 20.0f;
    }
}

#mixin {targets: "thaumcraft.common.world.aura.AuraThread"}
zenClass MixinSpreadSpeed {
    #mixin ModifyConstant {method: "processAuraChunk",  constant:{floatValue: 1.0}}
    function relocateData(value as float) as float {
        return 10.0f;
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




//Taint


/*
#mixin {targets: "thaumcraft.common.blocks.world.taint.TaintHelper"}
zenClass MixinTaintRock {
    #mixin Redirect
    #{
    #    method: "spreadFibres",
    #    at: {
    #        value: "INVOKE",
    #        target: "func_175656_a{1}",
    #        ordinal: 6
    #    }
    #}
    function inhibitTaintRockFormation() as void {
        if(mod < 0.1){
        return;
        }
    }
}

#mixin {targets: "thaumcraft.common.blocks.world.taint.TaintHelper"}
zenClass MixinTaintSeed {
    #mixin Redirect
    #{
    #    method: "spreadFibres",
    #    at: {
    #        value: "INVOKE",
    #        target: "func_177230_c{1}",
    #        ordinal: 9
    #    }
    #}
    function taintSeedsSpawnOnFibers() as void {
        if(mod < 0.1){
        return;
        }
    }
}

*/









