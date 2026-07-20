#loader mixin
import mixin.CallbackInfo;
import mixin.CallbackInfoReturnable;
import native.net.minecraft.util.ResourceLocation;
import native.net.minecraft.client.renderer.GlStateManager;
import native.tcb.spiderstpo.common.entity.mob.BetterSpiderEntity;
import native.tcb.spiderstpo.common.entity.mob.BetterCaveSpiderEntity;


#mixin {targets:"tcb.spiderstpo.client.BetterSpiderRenderer$LayerSpiderEyes"}
zenClass SpiderEyesRelocation {

#mixin Static
#mixin Final
#mixin Redirect {method: "doRenderLayer", at:{value:"FIELD", target:"tcb.spiderstpo.client.BetterSpiderRenderer$LayerSpiderEyes.SPIDER_EYES"}} 
function replaceEyes(instance as BetterSpiderEntity) as ResourceLocation
{
    
    if( instance instanceof BetterCaveSpiderEntity)
    {
        return ResourceLocation("thaumcraft", "textures/entity/spider_eyes2.png");
    }
    else
    {
        return ResourceLocation("minecraft", "textures/entity/spider_eyes.png");
    }


}
}





