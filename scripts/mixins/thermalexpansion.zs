#modloaded thermalexpansion
#loader mixin

import native.net.minecraft.item.ItemStack;
import native.cofh.thermalexpansion.util.managers.machine.PulverizerManager;
import native.cofh.thermalexpansion.util.managers.machine.SmelterManager;

#mixin {targets: "cofh.thermalexpansion.block.dynamo.TileDynamoNumismatic"}
zenClass MixinTileDynamoNumismatic {
    #mixin Static
    #mixin ModifyConstant {method: "config", constant: {intValue: 1000}}
    function modifyBaseEnergy0(value as int) as int {
        return 2000;
    }

    #mixin ModifyConstant {method: "installAugmentToSlot", constant: {intValue: 4}}
    function modifyBaseEnergy1(value as int) as int {
        return 2;
    }
}



#mixin {targets: "cofh.thermalexpansion.util.managers.machine.PulverizerManager"}
zenClass MixinPulverizerManager {
    #mixin Static
    #mixin Redirect
    #{
    #    method: "initialize",
    #    at: {
    #        value: "INVOKE",
    #        target: "Lcofh/thermalexpansion/util/managers/machine/PulverizerManager;addRecycleRecipe(ILnet/minecraft/item/ItemStack;Lnet/minecraft/item/ItemStack;I)V"
    #    }
    #}
    function removeThermalTools(energy as int, item as ItemStack, output as ItemStack, outputSize as int) as void {
        if (!isNull(item) && !item.empty && !isNull(item.item.registryName) && item.item.registryName.namespace == "minecraft") {
            PulverizerManager.addRecycleRecipe(energy, item, output, outputSize);
        }
    }
}

#mixin {targets: "cofh.thermalexpansion.util.managers.machine.SmelterManager"}
zenClass MixinSmelterManager {
    #mixin Static
    #mixin Redirect
    #{
    #    method: "initialize",
    #    at: {
    #        value: "INVOKE",
    #        target: "Lcofh/thermalexpansion/util/managers/machine/SmelterManager;addRecycleRecipe(ILnet/minecraft/item/ItemStack;Lnet/minecraft/item/ItemStack;I)V"
    #    }
    #}
    function removeThermalTools(energy as int, item as ItemStack, output as ItemStack, outputSize as int) as void {
        if (!isNull(item) && !item.empty && !isNull(item.item.registryName) && item.item.registryName.namespace == "minecraft") {
            SmelterManager.addRecycleRecipe(energy, item, output, outputSize);
        }
    }
}