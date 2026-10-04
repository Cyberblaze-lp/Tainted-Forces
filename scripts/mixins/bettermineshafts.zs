#loader mixin

 #mixin {targets:"com.yungnickyoung.minecraft.bettermineshafts.util.SurfaceUtil"}
zenClass noSurfaceEntrance{
    #mixin Static
    #mixin ModifyConstant{method:"getSurfaceHeight", constant: {intValue:255}}
    function noKratosSimulator(galue as int) as int{
        return 60;
    }
}