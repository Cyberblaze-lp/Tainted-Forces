#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var lumen = VanillaFactory.createFluid("liquefacted_lumen", Color.fromHex("2B2551"));

lumen.register();


VanillaFactory.createItem("ignatius_fuel").register();

VanillaFactory.createItemFood("taint_tendril", 0).register();

VanillaFactory.createItemFood("taint_goo", 0).register();


