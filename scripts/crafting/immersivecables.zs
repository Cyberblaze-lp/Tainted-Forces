import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


//Mixined away all recipes because crashes
//For the time being, those are the defaults

val fluixCrystal as IItemStack = <appliedenergistics2:material:12>;
val denseFluixCrystal as IItemStack = <appliedenergistics2:material:7>;

for i in 0 to 3{
    val coilBlock as IItemStack = <immersivecables:coil_block>.definition.makeStack(i);
    val coil as IItemStack = <immersivecables:wire_coil>.definition.makeStack(i);
    val wire as IIngredient = ([<ore:wireAluminum>, <ore:wireSteel>, <ore:wireCopper>] as IIngredient[])[i];
    val cond as IIngredient = ([fluixCrystal, denseFluixCrystal, <appliedenergistics2:material:11>] as IIngredient[])[i];
    
    recipes.addShaped(coilBlock, [
        [coil, coil, coil],
        [coil, <ore:ingotIron>, coil],
        [coil, coil, coil]
    ]);
    recipes.addShaped(coil * 4, [
        [null, cond, null],
        [wire, <ore:stickWood>.or(<ore:stickTreatedWood>), wire],
        [null, cond, null]
    ]);
}

recipes.addShaped(<immersivecables:connector_quartz> * 4, [
    [null, <appliedenergistics2:material:11>, null],
    [<ore:blockGlass>, <appliedenergistics2:material:11>, <ore:blockGlass>]
]);

recipes.addShaped(<immersivecables:relay_fluix> * 8, [
    [null, fluixCrystal, null],
    [<appliedenergistics2:sky_stone_block>, fluixCrystal, <appliedenergistics2:sky_stone_block>]
]);
recipes.addShaped(<immersivecables:relay_fluix:1> * 8, [
    [null, denseFluixCrystal, null],
    [<appliedenergistics2:sky_stone_block>, denseFluixCrystal, <appliedenergistics2:sky_stone_block>]
]);

recipes.addShaped(<immersivecables:transformer_fluix>, [
    [null, <immersivecables:relay_fluix>, null],
    [<ore:ingotIron>, <immersivecables:coil_block>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);

recipes.addShaped(<immersivecables:transformer_fluix:1>, [
    [null, <immersivecables:relay_fluix:1>, null],
    [<ore:ingotIron>, <immersivecables:coil_block:1>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
