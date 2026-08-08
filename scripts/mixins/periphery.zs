#modloaded thaumicperiphery
#loader mixin

import native.baubles.api.BaubleType;


// make pauldron able to be put in any bauble slot bc i think it looks cool

#mixin {targets: ["thaumicperiphery.items.ItemPauldron","thaumicperiphery.items.ItemPauldronRepulsion" ]}
zenClass MixinBaubleSlot {
    #mixin Redirect {method: "getBaubleType", at:{value:"FIELD", target:"baubles.api.BaubleType.BODY"}} 
    function modifyBauble() as BaubleType {
        return BaubleType.TRINKET;
    }
}