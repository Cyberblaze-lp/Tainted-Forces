import crafttweaker.events.IEventManager;
import crafttweaker.block.IBlock;
import crafttweaker.item.IItemStack;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.BlockNeighborNotifyEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;
import crafttweaker.world.IWorld;
import crafttweaker.world.IWorldInfo;

import native.net.minecraftforge.common.DimensionManager;

zenClass RestrictionEntry {
	val isWhitelist as bool; 
	val dims as int[];

	zenConstructor(isWhitelistIn as bool, dimsIn as int[]) {
		isWhitelist = isWhitelistIn;
		dims = dimsIn;
	}
}

static dimMap as RestrictionEntry[IBlockState] = {} as RestrictionEntry[IBlockState];


function addRestriction (isWhitelist as bool, ignoreMeta as bool, dims as int[], item as IItemStack) {
	val entry as RestrictionEntry = RestrictionEntry(isWhitelist, dims);

	if !ignoreMeta {
		val blockstate as IBlockState = item.asBlock().definition.getStateFromMeta(item.asBlock().meta) as IBlockState;
		dimMap[blockstate] = entry;
	}
	else {
		for i in 0 to 16 {
			val varState = item.asBlock().definition.getStateFromMeta(i);
			dimMap[varState] = entry;
		}
	}
	
	addLabel(item, dims, isWhitelist);
}


function addLabel (item as IItemStack, dims as int[], whitelist as bool) {
	if !whitelist {
		item.addTooltip(format.darkRed(format.bold("Surface Conditions: NOT Placeable in")));
		for dim in dims{
			item.addAdvancedTooltip(function(item) {
				val dimName as string = DimensionManager.getProviderType(dim).getName();
				return "§4-"+dimName;
			});
		}
	} else {
		item.addTooltip(format.darkAqua(format.bold("Surface Conditions: Placeable in")));
		for dim in dims{
			item.addAdvancedTooltip(function(item) {
				val dimName as string = DimensionManager.getProviderType(dim).getName();
				return "§3-"+dimName;
			});
		}
	}
}



function isDenied(block as IBlock, world as IWorld) as bool {
	val blockstate = block.definition.getStateFromMeta(block.meta);

	if isNull(dimMap[blockstate]){
		return false;
	}

	val dims as int[] = dimMap[blockstate].dims;

	return dims has world.getDimension();
}

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
	if(isDenied(event.item.asBlock(), event.world)){
		event.cancel();
		event.player.sendRichTextStatusMessage(format.red("Surface Conditions not met, cannot place!"));
		event.player.setCooldown(event.item, 200);
		
		return;
	}
});

//anti-chese through fake players
events.onBlockNeighborNotify(function(event as crafttweaker.event.BlockNeighborNotifyEvent) {
	if (isDenied(event.block, event.world)){
		print("Cheese- meet Grater");
		event.world.setBlockState(<blockstate:minecraft:air>, event.position);
		event.world.performExplosion(null, event.position.getX(),event.position.getY() , event.position.getZ(), 4.0, true, true);
		return;
	}
});




//flux-producing machines exclusive to realms with taint nests
val thaumstuff = [
	<thaumcraft:smelter_basic>,
	<thaumcraft:smelter_thaumium>,
	<thaumcraft:smelter_void>,
	<thaumcraft:mirror>,
	<thaumcraft:mirror_essentia>,
	<thaumcraft:infusion_matrix>,
	<thaumcraft:stabilizer>
] as IItemStack[];
for item in thaumstuff {
	addRestriction(true, true, [0], item);
}


//nether-exclusives (dawnstone-related machinery)
val netherStuff = [
	<embers:ember_injector>,
	<embers:alchemy_tablet>,
	<embers:alchemy_pedestal>,
	<embers:dawnstone_anvil>,
	<embers:inferno_forge>
] as IItemStack[];
for item in netherStuff {
	addRestriction(true, true, [-1], item);
}

val netherStuffWithMeta = [
	<mekanism:basicblock:15>,
	<mekanism:basicblock2>,
	<mekanism:basicblock:14>
] as IItemStack[];
for item in netherStuffWithMeta {
	addRestriction(true, false, [-1], item);
}

<embers:ingot_dawnstone>.addTooltip(format.yellow("It cries out for the Heat of the Nether"));



//water generators that are prohibited in the nether and other waterless worlds
val waterstuff = [
	<thaumcraft:everfull_urn>//,
	//<magneticraft:water_generator>
] as IItemStack[];

for item in waterstuff {
	addRestriction(false, true, [-1], item);
}




