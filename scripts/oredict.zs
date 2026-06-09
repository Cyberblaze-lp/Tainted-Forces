#priority 253

//Removal
    <ore:circuitAdvanced>.remove(<ic2:crafting:2>);
    <ore:circuitBasic>.remove(<ic2:crafting:1>);
    <ore:plateSilicon>.remove(<libvulpes:productplate:3>);
    <ore:ingotSilicon>.remove(<libvulpes:productingot:3>);
    <ore:nuggetSilicon>.remove(<libvulpes:productnugget:3>);
    <ore:bouleSilicon>.remove(<libvulpes:productboule:3>);
    <ore:gearCopper>.remove(<immersiveintelligence:motor_gear>);
    <ore:gearBrass>.remove(<immersiveintelligence:motor_gear:1>);
    <ore:gearIron>.remove(<immersiveintelligence:motor_gear:2>);
    <ore:gearSteel>.remove(<immersiveintelligence:motor_gear:3>);
    <ore:gearTungsten>.remove(<immersiveintelligence:motor_gear:4>);
    <ore:ingotAdvancedElectronicAlloy>.remove(<immersiveintelligence:material_ingot>);
    <ore:plateAdvancedElectronicAlloy>.remove(<immersiveintelligence:material_plate>);
    <ore:dustAdvancedElectronicAlloy>.remove(<immersiveintelligence:material_dust>);
    <ore:nuggetAdvancedElectronicAlloy>.remove(<immersiveintelligence:material_nugget>);
//Done!


//Addition
    <ore:circuitUltimate>.add(<pneumaticcraft:printed_circuit_board>, <pneumaticcraft:transistor>);
    <ore:stone>.add(<immersiveengineering:stone_decoration:5>);
    <ore:seed>.addItems(itemUtils.getItemsByRegexRegistryName(".*crop/seeds.*"));
    <ore:fabricHemp>.add(<tfc:crop/product/burlap_cloth>);
    <ore:logWoodTannin>.add(<botania:livingwood>, <thaumcraft:log_greatwood>);
    <ore:blockGlass>.add(<betternether:quartz_glass>);
    <ore:blockGlassColorless>.add(<betternether:quartz_glass>);
    <ore:itemRubber>.add(<tfctech:latex/rubber>);
    <ore:sheetPlastic>.add(<mekanism:polyethene:2>);
    <ore:circuitBasic>.add(<cyberware:component:3>);
    <ore:materialNuke>.add(<ic2:quad_mox_fuel_rod>);
    <ore:tallow>.add(<thaumcraft:tallow>);
    <ore:pressurePlateStone>.add(
        <thaumicaugmentation:pressure_plate_arcane_stone>,
        <thaumicaugmentation:warded_pressure_plate_arcane_stone>,
        <thebetweenlands:betweenstone_pressure_plate>
    );
    <ore:arrowBL>.add(
        <thebetweenlands:angler_tooth_arrow>,
        <thebetweenlands:poisoned_angler_tooth_arrow>,
        <thebetweenlands:octine_arrow>,
        <thebetweenlands:basilisk_arrow>,
        <thebetweenlands:sludge_worm_arrow>
    );

    <ore:rockMetamorphic>.addAll(<ore:coinIron>);
    <ore:rockSedimentary>.addAll(<ore:coinGold>);
    <ore:rockIgneousIntrusive>.addAll(<ore:coinCopper>);
    <ore:rockIgneousExtrusive>.addAll(<ore:coinTin>);

    
    //Damage type
    <ore:damageTypeCrushing>.add(<tconstruct:battlesign>,<tconstruct:frypan>);
    <ore:damageTypeSlashing>.add(<tconstruct:broadsword>,<tconstruct:longsword>,<tconstruct:cleaver>);
    <ore:damageTypePiercing>.add(<tconstruct:rapier>);

    //Metal
    <ore:dustDiamond>.add(<tfcthings:diamond_grit>);
    
    <ore:dustSulfur>.add(<thebetweenlands:items_misc:18>);
  
    <ore:stickIron>.addAll(<ore:stickWroughtIron>);
    <ore:ingotAdvancedElectronicAlloy>.add(<tfc:metal/ingot/blue_steel>);
    <ore:plateAdvancedElectronicAlloy>.add(<tfc:metal/sheet/blue_steel>);
    <ore:gearIron>.add(<tfctech:metal/wrought_iron_gear>);
    <ore:dustAdvancedElectronicAlloy>.add(<tfc:metal/dust/blue_steel>);
    <ore:nuggetAdvancedElectronicAlloy>.add(<tfc:metal/nugget/blue_steel>);

    val bismuth = <ore:oreBismuth>;
    val bismuthinite = <ore:oreBismuthinite>;
    bismuth.addAll(bismuthinite);
    bismuth.add(<tfc:ore/bismuthinite/gabbro>);
    bismuth.addAll(bismuthinite);
    bismuthinite.remove(<tfc:ore/bismuthinite/gabbro>);

    val metals = <ore:sheetToolMetal>;
    metals.addAll(<ore:plateIron>);
    metals.addAll(<ore:plateCopper>);
    metals.addAll(<ore:sheetAnyBronze>);
    metals.addAll(<ore:plateSteel>);
    metals.addAll(<ore:plateBlackSteel>);
    metals.addAll(<ore:plateBlueSteel>);
    metals.addAll(<ore:plateRedSteel>);
    metals.addAll(<ore:plateTungsten>);
    metals.addAll(<ore:plateCobalt>);
    metals.addAll(<ore:plateTungstenSteel>);
    metals.addAll(<ore:plateManyullyn>);
    metals.addAll(<ore:plateTitanium>);
//Done!

//Generally, separate the categories that are feature-significant

//BL Food
    <ore:categoryMeal>.add(
        <thebetweenlands:drinkable_brew:*>,
        <thebetweenlands:olmlette>,
        <thebetweenlands:mire_scramble>,
        <thebetweenlands:weeping_blue_petal_salad>,
        <thebetweenlands:sushi>,
        <thebetweenlands:marshmallow>,
        <thebetweenlands:marshmallow_pink>,
        <thebetweenlands:gerts_donut>,
        <thebetweenlands:jam_donut>,
        <thebetweenlands:christmas_pudding>,
        <thebetweenlands:mince_pie>,
        <thebetweenlands:candy_yellow>,
        <thebetweenlands:candy_red>,
        <thebetweenlands:candy_blue>
    );
    <ore:categoryCookedMeat>.add(
        <thebetweenlands:olm_egg_cooked>,
        <thebetweenlands:snail_flesh_cooked>,
        <thebetweenlands:snail_flesh_smoked>,
        <thebetweenlands:silt_crab_claw_smoked>,
        <thebetweenlands:crab_stick_smoked>,
        <thebetweenlands:anadia_meat_smoked>,
        <thebetweenlands:anadia_meat_cooked>,
        <thebetweenlands:puffshroom_tendril_smoked>,
        <thebetweenlands:barnacle_smoked>,
        <thebetweenlands:barnacle_cooked>,
        <thebetweenlands:mire_snail_egg_cooked>,
        <thebetweenlands:frog_legs_cooked>,
        <thebetweenlands:frog_legs_smoked>,
        <thebetweenlands:kraken_calamari>
    );
    <ore:categoryGrain>.add(
        <thebetweenlands:reed_donut>,
        <thebetweenlands:weeping_blue_petal>,
        <thebetweenlands:fried_swamp_kelp>,
        <thebetweenlands:nibblestick>
    );
    <ore:categoryFruit>.add(
        <thebetweenlands:middle_fruit>,
        <thebetweenlands:pearled_pear>,
        <thebetweenlands:spirit_fruit>,
        <thebetweenlands:forbidden_fig>
    );
    <ore:categoryVegetable>.add(
        <thebetweenlands:sludge_jello>,
        <thebetweenlands:sap_jello>,
        <thebetweenlands:black_hat_mushroom_item>,
        <thebetweenlands:flat_head_mushroom_item>
    );
    <ore:categoryDairy>.add(
        <thebetweenlands:yellow_dotted_fungus>,
        <thebetweenlands:bulb_capped_mushroom_item>
    );
    <ore:categoryMeat>.addAll(<ore:fish>);
    <ore:categoryCookedMeat>.addAll(<ore:listAllmeatcooked>);
//Done!


//Misc
<ore:ingetAnyBronze>.addAll(<ore:ingotAnyBronze>);
<ore:destAnyBronze>.addAll(<ore:dustAnyBronze>);
<ore:naggetAnyBronze>.addAll(<ore:nuggetAnyBronze>);
<ore:dustAnyBronze>.remove(<tfc:metal/dust/bronze>,<tfc:metal/dust/bismuth_bronze>,<tfc:metal/dust/black_bronze>);
<ore:ingotAnyBronze>.remove(<tfc:metal/ingot/bronze>,<tfc:metal/ingot/bismuth_bronze>,<tfc:metal/ingot/black_bronze>);
<ore:nuggetAnyBronze>.remove(<tfc:metal/nugget/bronze>,<tfc:metal/nugget/bismuth_bronze>,<tfc:metal/nugget/black_bronze>);


