#loader mixin
import native.net.minecraftforge.fluids.Fluid;
import native.net.minecraftforge.fluids.FluidRegistry;


#mixin {targets: "teamroots.embers.tileentity.TileEntityBoilerBottom"}
zenClass MixinTilePlugBase {
    #mixin Redirect {method: "func_73660_a", at:{value:"FIELD", target:"net.minecraftforge.fluids.FluidRegistry.WATER"}} 
    function modifyInputFluid() as Fluid {
        return native.net.minecraftforge.fluids.FluidRegistry.LAVA;
    }
}