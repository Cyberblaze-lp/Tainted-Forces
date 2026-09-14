#reloadable
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.EntityLivingHurtEvent;
import mods.ctutils.utils.Math;





events.onPlayerTick(function(event as PlayerTickEvent)
{
    if event.side == "CLIENT" || Math.getRandom().nextInt(0, 150) != 0
    {
        return;
    }
    for i in 0 to 37
    {
        val item = event.player.getInventoryStack(i);
        
        if !isNull(item) && !isNull(item.definition)
        {
            val def = item.definition.id;
            if def == <contenttweaker:taint_tendril>.definition.id || def == <contenttweaker:taint_goo>.definition.id
            {
                if item.isRotten()
                {
                    val amount = item.amount;
                    val taintpoison = <potion:thaumcraft:fluxtaint>.makePotionEffect(max( 90, Math.sqrt(amount)* 50), min( 2, Math.sqrt(amount)- 1) ,true, true);
                    val entity = event.entityLivingBase;
                    entity.addPotionEffect(taintpoison);
                    item.mutable().shrink(amount);
                    if def == <contenttweaker:taint_tendril>.definition.id
                    {
                    event.player.sendRichTextStatusMessage(format.darkPurple("Decaying Tendrils have infected you with Taint"));
                    }
                    else
                    {
                        event.player.sendRichTextStatusMessage(format.darkPurple("Decaying Goo has infected you with Taint"));
                    }

                }
            }
        }
    }

});

events.onPlayerTick(function(event as PlayerTickEvent)
{
    if event.player.world.getWorldTime() % 16 != 0 
    {
        return;
    }
    var inCombat as bool = false;
    for effect in event.player.activePotionEffects
    {
        if effect.potion.name has "in_combat"
        {
            inCombat = true;
            break;
        }
    }
    if inCombat == true 
    {
        return;
    }
    event.player.heal(0.5f);


});

events.onEntityLivingHurt(function(event as crafttweaker.event.EntityLivingHurtEvent){
    if ! isNull(event.entity.definition)
    {
        return;
    }
    val inCombatEffect = <potion:contenttweaker:in_combat>.makePotionEffect(200,0 ,true, false);
                    val entity = event.entityLivingBase;
                    entity.addPotionEffect(inCombatEffect);

});