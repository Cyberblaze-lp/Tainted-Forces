
import mods.modularmachinery.IMachineController;                                                                  
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.RecipeTickEvent;
import native.net.dries007.tfc.objects.blocks.stone.BlockOreTFC;
import native.net.dries007.tfc.objects.items.metal.ItemOreTFC;
import native.net.dries007.tfc.world.classic.worldgen.WorldGenOreVeins;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlock;
import crafttweaker.world.IFacing;
import crafttweaker.util.Math;
import crafttweaker.data.IData;
import mods.modularmachinery.Sync;
import native.net.minecraft.tileentity.TileEntity;
import mods.zenutils.NetworkHandler;
import mods.zenutils.IByteBuf;

<modularmachinery:blockcasing:4>.displayName = "Firebox Casing";


mods.modularmachinery.RecipeBuilder.newBuilder("basicflux", "calcifier_t0", 300)
.addItemInput(<ore:powderMana>*8)
.addItemOutput(<tfc:powder/flux>)
.addFluxOutput(2,0)
.build();

//Cooling Tower

    //ic2 boiler to tower ratio should be ~ 16:1
    function addCloudsServer (controller as TileEntity) as void
    {
        /*
        if mods.ctutils.utils.Math.getRandom().nextInt(0, 2) != 0
        {
            return;
        }
        */
        var facing = IFacing.north;
        
        val block = controller.getWorld().getBlockState(controller.getPos());

        if block.wrapper.meta == 0
        {
            facing = IFacing.south;
        }
        else if block.wrapper.meta == 1
        {
            facing = IFacing.west;
        }
        else if block.wrapper.meta == 2
        {
            facing = IFacing.north;
        }
        else if block.wrapper.meta == 3
        {
            facing = IFacing.east;
        }

        
        val offset as IBlockPos = controller.getPos().wrapper   
        .getOffset(facing, -15)
        .getOffset(IFacing.up(), 22);
        
        //See modularmachines_client.zs for the client-side handling
        Sync.addSyncTask(
            function(){
                NetworkHandler.sendToAllAround(
                    "spawn_condensation_cloud",
                    offset.getX(),
                    offset.getY(),
                    offset.getZ(),
                    256.0d,
                    controller.getWorld().wrapper.getDimension(),
                    function(buffer as IByteBuf){
                        buffer.writeBlockPos(offset);
                    }
                );
            }
        );
                                
                                
    }
        


    mods.modularmachinery.RecipeBuilder.newBuilder("coolingtowerrecipe_waterfromSteamW", "cooling_tower_t2", 5)
    .addFluidInput(<liquid:water>*2000)
    .addFluidInput(<liquid:steam>*500)
    .addItemOutput(<thebetweenlands:items_misc:27>)
    .setChance(0.65)
    .addFluidOutput(<liquid:ic2distilled_water>*80)
    .addStartHandler(function (event as RecipeStartEvent){
        addCloudsServer(event.controller);
    })
    .build();
//Done!


//Buner Drill
    //Helper functions
    function checkVeins (iblockstate as IBlockState, controller as IMachineController, pos as IBlockPos) as IItemStack
    {
        val block as BlockOreTFC= iblockstate.getBlock().native as BlockOreTFC;
        val chunkX as int = Math.floor(pos.x as float /16.0) as int;
        val chunkZ as int = Math.floor(pos.z as float /16.0) as int;
        val veins = WorldGenOreVeins.getNearbyVeins(chunkX, chunkZ, controller.world.getWorldInfo().seed as long, 2);

        for vein in veins
        {
            if block.ore == vein.getType().getOre()
            {
                var item as IItemStack = ItemOreTFC.get(block.ore, 1) as IItemStack;
                return item; 
            }
        }
        return native.IItemStack.EMPTY;
    }

    function lookForOre(controller as IMachineController) as IItemStack
    {
        val offset = controller.pos
            .getOffset(controller.facing, -1)
            .getOffset(IFacing.down(), 3);

        val iblockstate = controller.world.getBlockState(offset);
        val blockstate = iblockstate.native;
        
        if (isNull(blockstate) || isNull(blockstate.getBlock()))
        {
            return native.IItemStack.EMPTY;
        }

        
        var item as IItemStack  = native.IItemStack.EMPTY;
        if iblockstate.getBlock().definition.id has "tfc:ore/"
        {
            item = checkVeins(iblockstate, controller, offset) as IItemStack;
        }

        return item;
    }

    function setPower(power as float, controller as IMachineController) as void
    {
        val drillPos = controller.pos
            .getOffset(controller.facing, -1)
            .getOffset(IFacing.down(), 1);
        val drill as IBlock = controller.world.getBlock (drillPos.x, drillPos.y, drillPos.z);

        val data = drill.data;
        val map1 as IData = {
            mech_power : power
        };
        val powerIn = data.memberGet("mech_power");

        val datamod as IData = ((data -"mech_power") + map1);

        controller.world.setBlockState(controller.world.getBlockState(drillPos), datamod, drillPos);
    }

    function isPowerEnough(powerMin as float, controller as IMachineController) as bool
    {
        val actuPos = controller.pos
            .getOffset(controller.facing, -1)
            .getOffset(IFacing.down(), -1);
        val actu as IBlock = controller.world.getBlock (actuPos.x, actuPos.y, actuPos.z);
        if actu.definition.id has "modularmachinery"
        {
            return false;
        }

        val data = actu.data;
        val powerIn = data.memberGet("mech_power1");
        return powerIn >= powerMin;

    }


    function setFireboxState(meta as int, controller as IMachineController) as void
    {
        val pos1 =  controller.pos
            .getOffset(controller.facing, -1)
            .getOffset(IFacing.up(), 1)
            .getOffset(IFacing.north, 1);
        val state as IBlockState = <modularmachinery:blockcasing>.asBlock().definition.getStateFromMeta(meta);
        if controller.world.getBlockState(pos1) == state
        {
            return;
        }
        
        val pos2 =  controller.pos 
            .getOffset(controller.facing, -1)
            .getOffset(IFacing.up(), 1)
            .getOffset(IFacing.south, 1);
        val pos3 =  controller.pos 
            .getOffset(controller.facing, -1)
            .getOffset(IFacing.up(), 1)
            .getOffset(IFacing.east, 1);
        val pos4 =  controller.pos 
            .getOffset(controller.facing, -1)
            .getOffset(IFacing.up(), 1)
            .getOffset(IFacing.west, 1);


        
        Sync.addSyncTask(function(){
            for pos in [pos1, pos2, pos3, pos4]
            {
                var data = controller.world.getBlock(pos).data;
                var blockstate = controller.world.getBlockState(pos).block.definition.getStateFromMeta(meta);
                controller.world.setBlockState(blockstate, data, pos);
            }
        });
    }


    //Perditio Drill
    mods.modularmachinery.RecipeBuilder.newBuilder("perditioDrilling", "burnerdrill_t1", 100)
    .addItemOutput(<betterquesting:placeholder>)
    .addItemModifier(function(controller as IMachineController, item as IItemStack) as IItemStack {
    
        if isNull (controller.customData)||isNull (controller.customData.item)
        {
            return null;
        }
        val itemOut as IItemStack = itemUtils.getItem(controller.customData.item as string);
        return itemOut;

    })
    .addItemInput(<thaumcraft:alumentum>)
    .setChance(1.5/32)
    .addAspectInput("perditio", 1)
    .addStartHandler(function (event as RecipeStartEvent){
        setFireboxState(4, event.controller);
        val item = lookForOre(event.controller);
        if !isNull(item)
        {
            val map1 as IData = {
                "item" : item.definition.id
            };
            event.controller.customData = map1;
            setPower(30.0, event.controller);
        }
        else 
        {
            val map1 as IData = {
                "item" : ""
            };
            event.controller.customData = map1;
        }
    })
    .addFinishHandler(function (event as RecipeFinishEvent){
        setPower(0.0, event.controller);
        event.controller.world.catenation()
        .sleep(2)
        .then(function(world, context){
            if event.controller.isWorking
            {
                return;
            }
            
            setFireboxState(2, event.controller);

        })
        .start();
    })
    .build();



    //Basic drilling
    mods.modularmachinery.RecipeBuilder.newBuilder("basicDrilling", "burnerdrill_t1", 300)

    .addItemOutput(<betterquesting:placeholder>)
    .addItemModifier(function(controller as IMachineController, item as IItemStack) as IItemStack {
        if isNull (controller.customData)||isNull (controller.customData.item)
        {
            return null;
        }
        val itemOut as IItemStack = itemUtils.getItem(controller.customData.item);
        return itemOut;
    })
    .addItemInput(<thaumcraft:alumentum>)
    .setChance(1.5/32)
    .addStartHandler(function (event as RecipeStartEvent){
        setFireboxState(4, event.controller);
        val item = lookForOre(event.controller);
        if !isNull(item)
        {
            val map1 as IData = {
                "item" : item.definition.id
            };
            event.controller.customData = map1;
            setPower(10.0, event.controller);
        }
        else 
        {
            val map1 as IData = {
                "item" : ""
            };
            event.controller.customData = map1;
        }
    })
    .addFinishHandler(function (event as RecipeFinishEvent){
        setPower(0.0, event.controller);
        event.controller.world.catenation()
        .sleep(2)
        .then(function(world, context){
            if event.controller.isWorking
            {
                return;
            }
            
            setFireboxState(2, event.controller);

        })
        .start();
    })
    .build();


    //Mechanical
    mods.modularmachinery.RecipeBuilder.newBuilder("basicDrillingMech", "burnerdrill_t1", 3)
    .addPostCheckHandler(function(event as RecipeCheckEvent)
    {
        if !isPowerEnough(20.0f, event.controller)
        {
            event.setFailed("no power or attempting to use solid fuel recipe");
        }

    })
    .addPreTickHandler(function(event as RecipeTickEvent)
    {
        if !isPowerEnough(20.0f, event.controller)
        {
            event.setFailed(false, "No power or attempting to use solid fuel recipe");
        }

    })
    .addItemOutput(<betterquesting:placeholder>)
    .addItemModifier(function(controller as IMachineController, item as IItemStack) as IItemStack {
    
        if isNull (controller.customData)||isNull (controller.customData.item)
        {
            return null;
        }
        val itemOut as IItemStack = itemUtils.getItem(controller.customData.item as string);
        return itemOut;
    })
    .setChance(1.0f/50)
    .addStartHandler(function (event as RecipeStartEvent){
        val item = lookForOre(event.controller);
        if !isNull(item)
        {
            val map1 as IData = {
                "item" : item.definition.id
            };
            event.controller.customData = map1;
            setPower(20.0, event.controller);
        }
        else 
        {
            val map1 as IData = {
                "item" : ""
            };
            event.controller.customData = map1;
        }
    })
    .addFinishHandler(function (event as RecipeFinishEvent){
        setPower(0.0, event.controller);
        
            
        setFireboxState(2, event.controller);

        })
    .build();
//Done!






