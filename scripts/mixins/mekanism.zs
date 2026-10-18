#loader mixin
import native.mekanism.api.gas.Gas;

#mixin {targets:"mekanism.common.MekanismFluids"}
zenClass FluidDictApply{

    #mixin Static
    #mixin ModifyConstant{method:"register",constant:{stringValue:"liquidoxygen"}}
    function dictOxygen(value as string) as string
    {
        return "oxygen";
    }
    #mixin Static
    #mixin ModifyConstant{method:"register",constant:{stringValue:"liquidhydrogen"}}
    function dictHydrogen(value as string) as string
    {
        return "hydrogen";
    }
    #mixin Static
    #mixin ModifyConstant{method:"register",constant:{stringValue:"liquidchlorine"}}
    function dictChlorine(value as string) as string
    {
        return "chlorine";
    }
    #mixin Static
    #mixin ModifyConstant{method:"register",constant:{stringValue:"liquidhydrofluricacid"}}
    function dictHF(value as string) as string
    {
        return "hydrofluoric_acid";
    }

    #mixin Static
    #mixin Final
    #mixin ModifyConstant{method:"<clinit>",constant:{stringValue:"sulfuricacid"}}
    function dictSulfuricAcid(value as string) as string
    {
        return "sulfuric_acid";
    }
}