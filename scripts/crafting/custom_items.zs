#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.randomtweaker.cote.IPotion;
import crafttweaker.block.IBlock;



var lumen = VanillaFactory.createFluid("liquefacted_lumen", Color.fromHex("2B2551"));

lumen.register();


VanillaFactory.createItem("ignatius_fuel").register();

VanillaFactory.createItemFood("taint_tendril", 0).register();

VanillaFactory.createItemFood("taint_goo", 0).register();


var combatpotion as IPotion = VanillaFactory.createPotion("in_combat", 0x552020);
combatpotion.shouldRender = true;
combatpotion.beneficial = false;
combatpotion.instant = false;
combatpotion.shouldRenderHUD = false;
combatpotion.badEffectIn = true;
combatpotion.isReady = function(duration, amplifier) {
    return true;
};
combatpotion.performEffect = function(living, amplifier) {};

combatpotion.register();


val artiBlock = VanillaFactory.createBlock("artichoke_block", <blockmaterial:grass>);
artiBlock.blockSoundType = <soundtype:plant>;
artiBlock.toolClass=null;
artiBlock.toolLevel=0;
artiBlock.blockHardness=1.0;
artiBlock.register();
