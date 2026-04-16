#priority 255
import native.net.dries007.tfc.api.capability.food.IFood;
import native.net.dries007.tfc.api.capability.food.CapabilityFood;
import native.net.minecraft.item.ItemStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;



$expand IItemStack$fresh() as IIngredient
{
    return this.only(function(item as IItemStack) as bool
    {
        val cap  as IFood=item.native.getCapability(CapabilityFood.CAPABILITY, null);

        if isNull(cap)
        {
            return true;
        }
        return !cap.isRotten();
    });


}


$expand IItemStack$isRotten() as bool
{
    val cap  as IFood=this.native.getCapability(CapabilityFood.CAPABILITY, null);

        if isNull(cap)
        {
            return false;
        }
        return cap.isRotten();
    

}





