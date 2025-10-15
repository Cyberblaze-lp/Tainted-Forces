#priority 20

mods.jei.JEI.createJei("randomtweaker:mob_melting", "Mob Melting")
    .setModid("tconstruct")
    .setIcon(<tconstruct:smeltery_controller>)
    .setBackground(mods.randomtweaker.jei.IJeiUtils.createBackground(100, 32))
    .addRecipeCatalyst(<tconstruct:smeltery_controller>)
    .addSlot(mods.randomtweaker.jei.IJeiUtils.createItemSlot("entity", 0, 8, true, false))
    .addElement(mods.randomtweaker.jei.IJeiUtils.createImageElement(25, 2, 16, 16, 0, 0, "contenttweaker:textures/inventory_heart", 9, 9))

    .addSlot(mods.randomtweaker.jei.IJeiUtils.createLiquidSlot(50, 8, 16, 16, 250, true, false, false))
.register();

mods.jei.JEI.createJei("smeltery_fuel", "Smeltery Fuel")
    .setModid("tconstruct")
    .setIcon(<tconstruct:seared_tank>)
    .setRecipeCatalysts([<tconstruct:seared_tank>, <tconstruct:seared_tank:1>, <tconstruct:seared_tank:2>])
    .setBackground(mods.randomtweaker.jei.IJeiUtils.createBackground(105, 32))
    .addSlot(mods.randomtweaker.jei.IJeiUtils.createLiquidSlot(5, 8, true, true))
.register();

mods.jei.JEI.createJei("blockTemp", "Block Temperature")
    .setModid("immersiveengineering")
    .setIcon(<immersiveengineering:metal_device1:3>)
    .setRecipeCatalysts([<immersiveengineering:metal_device1:3>])
    .setBackground(mods.randomtweaker.jei.IJeiUtils.createBackground(105, 32))
    .addSlot(mods.randomtweaker.jei.IJeiUtils.createItemSlot("block", 5, 8, true, true))
.register();

mods.jei.JEI.createJei("satiscraftory.cokeoven", "Coke Oven")
    .setModid("immersiveengineering")
    .setIcon(<immersiveengineering:stone_device>)
    .setRecipeCatalysts([<botania:pool>, <botania:alchemycatalyst>, <immersiveengineering:stone_decoration>, <immersiveengineering:stone_device>, <thermalexpansion:machine>, <thermalexpansion:augment:258>])
    .setBackground(mods.randomtweaker.jei.IJeiUtils.createBackground(0, 0, 147, 65, "contenttweaker:textures/gui/jei/coke_oven.png"))
    .addSlot(mods.randomtweaker.jei.IJeiUtils.createItemSlot("input", 27, 24, true, false))
    .addSlot(mods.randomtweaker.jei.IJeiUtils.createItemSlot("output", 82, 24, false, false))
    //.addSlot(mods.randomtweaker.jei.IJeiUtils.createLiquidSlot("creosote", 126, 9, 16, 51)) //Broken. Might be too large?
.register();