#loader mixin
import mixin.CallbackInfo;
import mixin.CallbackInfoReturnable;
import native.net.minecraft.client.gui.inventory.GuiInventory;
import native.net.minecraft.util.ResourceLocation;
import native.net.minecraft.client.renderer.GlStateManager;



//makes thequark oddities backpack render on the side of the inv. 
//better fills out the UI and less conflicts with other mods
#mixin {targets:"vazkii.quark.oddities.inventory.ContainerBackpack"}
zenClass MoveBackpackContainer {


    #mixin ModifyConstant {method: "<init>", constant:{intValue: 58}}
    function noOffsetY(value as int) as int
    {
        return 0;
    }


    #mixin ModifyConstant {method: "<init>", constant:{intValue: 3}}
    function swapHeight(value as int) as int
    {
        return 9;
    }


    #mixin ModifyConstant {method: "<init>", constant:{intValue: 9}}
    function swapWidth(value as int) as int
    {
        return 3;
    }


    #mixin ModifyVariable
    #{
    #    method: "<init>",
    #   name: "left",
    #    at: {      
    #        value: "STORE",
    #         ordinal: 0,
    #        target: "left"
    #    }
    #}
    function offsetX(value as int) as int {
        return value - 155;
    }


    #mixin ModifyVariable
    #{
    #    method: "<init>",
    #   name: "top",
    #    at: {      
    #        value: "STORE",
    #         ordinal: 0,
    #        target: "top"
    #    }
    #}
    function offsetY(value as int) as int {
        return (value - 33);
    }
}

// the same now on the client plz
#mixin {targets:"vazkii.quark.oddities.client.gui.GuiBackpackInventory"}
zenClass MoveBackpackGUI extends GuiInventory {


    #mixin Overwrite
    function func_146976_a(parttialTicks as float, mouseX as int, mouseY as int) as void
    {
        super.func_146976_a(parttialTicks, mouseX, mouseY);

        GlStateManager.func_179131_c(1.0F, 1.0F, 1.0F, 1.0F);
        val pic = ResourceLocation("quark", "textures/misc/backpack_gui_new.png");
        this0.field_146297_k.func_110434_K().func_110577_a(pic);
        val i as int = (this0.field_147003_i - 60); 
        val j as int = this0.field_147009_r;
        this0.func_73729_b(i, j, 0, 0, 60, this0.field_147000_g);
    }


    #mixin ModifyConstant {method: "func_73866_w_", constant:{intValue: 29}}
    function noOffsetY1(value as int) as int
    {
        return 0;
    }


    #mixin ModifyConstant {method: "func_73866_w_", constant:{intValue: 224}}
    function noOffsetY1(value as int) as int
    {
        return 166;
    }
}
