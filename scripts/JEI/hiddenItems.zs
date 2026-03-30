import mods.jei.JEI;
import crafttweaker.item.IItemStack;

JEI.hide(<thermalexpansion:augment:352>);
JEI.hide(<ic2:crafting:2>);
JEI.hide(<advancedrocketry:thermite>);
JEI.hide(<tfctech:latex/vulcanizing_agents>);


//JEI.hide(<props:props:*>);
//JEI.hide(<techguns:itemshared:65>);
JEI.removeAndHide(<mekanism:filterupgrade>);
//JEI.hide(<randomthings:diviningrod:*>);
JEI.removeAndHide(<tconstruct:fancy_frame:*>);


JEI.hide(<immersiveengineering:metal_device1:13>);
JEI.hide(<immersiveengineering:metal:20>);
JEI.hide(<immersiveengineering:metal:21>);
JEI.hide(<immersiveengineering:metal:22>);
JEI.hide(<immersiveengineering:metal:23>);
JEI.hide(<immersiveengineering:metal:24>);
JEI.hide(<immersiveengineering:metal:25>);
JEI.hide(<immersiveengineering:metal:26>);
JEI.hide(<immersiveengineering:metal:27>);
JEI.hide(<immersiveengineering:metal:28>);
JEI.hide(<immersiveengineering:metal:29>);

JEI.hide(<immersivecables:coil_block:3>);
JEI.hide(<immersivecables:wire_coil:3>);

JEI.hide(<magneticraft:sluice_box>);
JEI.hide(<magneticraft:crushing_table>);
JEI.hide(<magneticraft:stone_hammer>);
JEI.hide(<magneticraft:iron_hammer>);
JEI.hide(<magneticraft:steel_hammer>);
JEI.hide(<ic2:forge_hammer>);
JEI.hide(<ic2:cutter>);
JEI.hide(<ic2:te:50>);

JEI.hide(<tfc:metal/bucket/blue_steel>);
JEI.hide(<tfc:metal/bucket/red_steel>);

JEI.removeAndHide(<extrautils2:angelring:*>);
JEI.hide(<camping:campfire_wood_off>);
JEI.hide(<camping:campfire_cook>);

JEI.hide(<travelersbackpack:sleeping_bag_bottom>);

for item in [
    <advancedrocketry:concrete>

] as IItemStack[]
{
 JEI.removeAndHide(item);
}