#priority 255
import native.java.lang.Class;
import native.java.util.Objects;
import native.net.dries007.tfc.api.capability.food.CapabilityFood;
import native.net.dries007.tfc.api.capability.food.IFood;
import native.net.minecraft.item.ItemStack;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;




global rocktypes as string[] =
[
    "granite",
    "diorite",
    "gabbro",
    "shale",
    "claystone",
    "rocksalt",
    "limestone",
    "conglomerate",
    "dolomite",
    "chert",
    "chalk",
    "rhyolite",
    "basalt",
    "andesite",
    "dacite",
    "quartzite",
    "slate",
    "phyllite",
    "schist",
    "gneiss",
    "marble"
];



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

/* Provided natively as part of TFUtils for performance reasons

//Returns the native class of an entity. Mostly useful for maps or arrays. 
//Note that you cannot == two class objects
//For knowing if an entity is of a specific definition, prefer using IEntity$hasDefinition
$expand IEntity$getClass() as Class {
    return this.native.class;
}
*/
$expand IEntityDefinition$getClass() as Class {
    return this.native.getEntityClass();
}

