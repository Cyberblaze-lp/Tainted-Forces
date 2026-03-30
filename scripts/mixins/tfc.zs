#loader mixin
import native.net.dries007.tfc.api.capability.size.Weight;

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



