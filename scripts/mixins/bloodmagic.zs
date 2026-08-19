#modloaded bloodmagic
#loader mixin


#mixin {targets:"WayofTime.bloodmagic.ritual.types.RitualFullStomach"}
zenClass MixinFeederRitual
{
     #mixin Overwrite
    function getRefreshCost() as int
    {
        return 0;
    }

    #mixin Redirect {method:"performRitual", at:{value:"INVOKE", target:"LWayofTime/bloodmagic/core/data/SoulNetwork;getCurrentEssence()I"}}
    function infiniteEssence(network as native.WayofTime.bloodmagic.core.data.SoulNetwork) as int
    {
        return 2147483647;
    }

    #mixin Redirect {method:"performRitual", at:{value:"INVOKE",ordinal:0, target:"LWayofTime/bloodmagic/ritual/types/RitualFullStomach;getRefreshCost()I"}}
    function noDivideByZero(instance as native.WayofTime.bloodmagic.ritual.types.RitualFullStomach) as int
    {
        return 1;
    }

   
    function getActivationCost() as int
    {
        return 0;
    }



   
}

