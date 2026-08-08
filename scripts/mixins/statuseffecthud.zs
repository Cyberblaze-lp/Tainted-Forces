#sideonly client
#loader mixin
import mixin.CallbackInfo;
import mixin.CallbackInfoReturnable;
import native.net.minecraft.client.gui.inventory.GuiInventory;
import native.net.minecraft.util.ResourceLocation;
import native.net.minecraft.client.renderer.GlStateManager;
import native.net.minecraft.client.Minecraft;

#mixin {targets: "bspkrs.statuseffecthud.StatusEffectHUD" }
zenClass MixinRespectF1 {

    
    #mixin Static
    #mixin Inject {method: "onTickInGame", at: {value: "HEAD"}, cancellable: true}
    function respectF1(mc as Minecraft, cir as CallbackInfoReturnable) as void {

        // plaintext: Minecraft.gameSettings.HideGUI (aka whether F1 mode is on)
        if mc.field_71474_y.field_74319_N
        {
        cir.setReturnValue(true);
        }
        return;
    }
}