#loader mixin

import native.net.minecraft.item.ItemStack;
import native.baubles.api.cap.IBaublesItemHandler;
import native.thaumicperiphery.render.LayerExtraBaubles;
import native.thaumicperiphery.ModContent;
import native.thecodex6824.thaumicaugmentation.common.item.ItemThaumostaticHarness;
import native.baubles.api.BaubleType;

 //makes the pauldron actually render in any bauble slot
 
#mixin {targets: "thaumicperiphery.render.LayerExtraBaubles"}
zenClass MixinPauldron
{
    #mixin Redirect
    # {method:"doRenderLayer", at:{value: "INVOKE", ordinal: 2, target: "Lbaubles/api/cap/IBaublesItemHandler;getStackInSlot(I)Lnet/minecraft/item/ItemStack;"}}
    function redirectSlot(instance as IBaublesItemHandler, i as int) as ItemStack
    {
        for m in 0 to 7
        {
            val item = instance.getStackInSlot(m).getItem();
            if (item == ModContent.pauldron || item == ModContent.pauldron_repulsion)
            {
                return instance.getStackInSlot(m);
            }
        }
        return ItemStack.EMPTY;
    }
}

// make pauldron able to be put in any bauble slot bc i think it looks cool

#mixin {targets: ["thaumicperiphery.items.ItemPauldron","thaumicperiphery.items.ItemPauldronRepulsion" ]}
zenClass MixinBaubleSlot {
    #mixin Redirect {method: "getBaubleType", at:{value:"FIELD", target:"baubles.api.BaubleType.BODY"}} 
    function modifyBauble() as BaubleType {
        return BaubleType.TRINKET;
    }
}