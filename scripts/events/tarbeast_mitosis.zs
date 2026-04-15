import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.zenutils.LiquidHandler;
import crafttweaker.item.IMutableItemStack;

events.onPlayerInteractEntity(function(event as crafttweaker.event.PlayerInteractEntityEvent){

if(isNull(event.item) || isNull(event.item.liquid)) ||isNull(event.target.definition) {
        return;
    }


if (event.target.definition.id == <entity:thebetweenlands:tar_beast>.id &&
event.item.liquid.amount >= 1000 && event.item.liquid.name =="tar" )
{


if event.player.currentItem.definition.id == "forge:bucketfilled"
{
event.player.currentItem.mutable().shrink(1);
event.player.give(<minecraft:bucket>);
}
else if event.player.currentItem.definition.id == "thebetweenlands:bl_bucket"
{
if event.player.currentItem.metadata == 0
{
event.player.currentItem.mutable().shrink(1);
event.player.give(<thebetweenlands:bl_bucket>.withTag({Fluid: {}}));
}
else if event.player.currentItem.metadata == 1
{
event.player.currentItem.mutable().shrink(1);
event.player.give(<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}));
}
else
{
return;
}

}
else
	{
	event.player.currentItem.mutable().fluidHandler.drain(event.player.currentItem.liquid.definition*1000, true);
	}
if !event.world.isRemote(){
<entity:thebetweenlands:tar_beast>.spawnEntity(event.world, event.target.position);
}





}});