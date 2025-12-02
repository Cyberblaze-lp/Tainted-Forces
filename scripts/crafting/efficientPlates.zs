import mods.terrafirmacraft.ItemRegistry;
import mods.embers.DawnstoneAnvil;
import mods.terrafirmacraft.Anvil;

//remove too cheap unidict recipes
recipes.removeByRecipeName("unidict:platebrass_x3_shape.aaa");
recipes.removeByRecipeName("unidict:plateiron_x3_shape.aaa");
recipes.removeByRecipeName("unidict:plateiron_x1_size.2");
recipes.removeByRecipeName("unidict:platezinc_x1_size.2");
recipes.removeByRecipeName("unidict:platebrass_x1_size.2");
recipes.removeByRecipeName("unidict:plateplatinum_x1_size.2");


// efficient sheet recipes
	//tier 1
	Anvil.addRecipe("eplatebismuth", <ore:ingotBismuth>, <tfc:metal/sheet/bismuth>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatenickel", <ore:ingotNickel>, <tfc:metal/sheet/nickel>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatelead", <ore:ingotLead>, <tfc:metal/sheet/lead>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplategold", <ore:ingotGold>, <tfc:metal/sheet/gold>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatecopper", <ore:ingotCopper>, <tfc:metal/sheet/copper>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatebrass", <ore:ingotBrass>, <tfc:metal/sheet/brass>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateantimony", <ore:ingotAntimony>, <tfc:metal/sheet/antimony>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplaterosegold", <ore:ingotRoseGold>, <tfc:metal/sheet/rose_gold>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatesilver", <ore:ingotSilver>, <tfc:metal/sheet/silver>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatesterlingsilver", <ore:ingotSterlingSilver>, <tfc:metal/sheet/sterling_silver>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatezinc", <ore:ingotZinc>, <tfc:metal/sheet/zinc>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatetin", <ore:ingotTin>, <tfc:metal/sheet/tin>, 2,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	
	//tier 2
	Anvil.addRecipe("eplatebronze", <ore:ingotBrone>, <tfc:metal/sheet/bronze>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatebismuthbronze", <ore:ingotBismuthBronze>, <tfc:metal/sheet/bismuth_bronze>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateblackbronze", <ore:ingotBlackBronze>, <tfc:metal/sheet/black_bronze>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatelithium", <ore:ingotLithium>, <tfc:metal/sheet/lithium>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateconstantan", <ore:ingotConstantan>, <tfc:metal/sheet/constantan>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateelectrum", <ore:ingotElectrum>, <tfc:metal/sheet/electrum>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatenickelsilver", <ore:ingotNickelSilver>, <tfc:metal/sheet/nickel_silver>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateredalloy", <ore:ingotRedAlloy>, <tfc:metal/sheet/red_alloy>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatemithril", <ore:ingotMithril>, <tfc:metal/sheet/mithril>, 3,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	
	//tier 3
	Anvil.addRecipe("eplatewroughtiron", <ore:ingotIron>, <tfc:metal/sheet/wrought_iron>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatepigiron", <ore:ingotPigIron>, <tfc:metal/sheet/pig_iron>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatealubrass", <ore:ingotAluminiumBrass>, <tfc:metal/sheet/aluminium_brass>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatecobalt", <ore:ingotCobalt>, <tfc:metal/sheet/cobalt>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatealu", <ore:ingotAluminium>, <tfc:metal/sheet/aluminium>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateardite", <ore:ingotArdite>, <tfc:metal/sheet/ardite>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateinvar", <ore:ingotInvar>, <tfc:metal/sheet/invar>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatemagnesium", <ore:ingotMagnesium>, <tfc:metal/sheet/magnesium>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatemanganese", <ore:ingotManganese>, <tfc:metal/sheet/manganese>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateboron", <ore:ingotBoron>, <tfc:metal/sheet/boron>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatemagbor", <ore:ingotMagnesiumDiboride>, <tfc:metal/sheet/magnesium_diboride>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatethorium", <ore:ingotThorium>, <tfc:metal/sheet/thorium>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateuranium", <ore:ingotUranium>, <tfc:metal/sheet/uranium>, 4,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	
	//tier 4
	Anvil.addRecipe("eplatemanyullyn", <ore:ingotManyullyn>, <tfc:metal/sheet/manyullyn>, 5,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateSteel", <ore:ingotSteel>, <tfc:metal/sheet/steel>, 5,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	
	//tier 5
	Anvil.addRecipe("eplateblacksteel", <ore:ingotBlackSteel>, <tfc:metal/sheet/black_steel>, 6,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateplat", <ore:ingotPlatinum>, <tfc:metal/sheet/platinum>, 6,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplateferbo", <ore:ingotFerroBoron>, <tfc:metal/sheet/ferroboron>, 6,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	Anvil.addRecipe("eplatehslasteel", <ore:ingotHslaSteel>, <tfc:metal/sheet/hsla_steel>, 6,"general","HIT_ANY","HIT_ANY","UPSET_ANY");
	
	//tier 6 is made using other means
//Done!

//dawnstone anvil recipes
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/bismuth>],<ore:ingotBismuth>,<ore:ingotBismuth>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/bismuth>*3],<ore:ingotDoubleBismuth>,<ore:ingotDoubleBismuth>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/nickel>],<ore:ingotNickel>,<ore:ingotNickel>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/nickel>*3],<ore:ingotDoubleNickel>,<ore:ingotDoubleNickel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/lead>],<ore:ingotLead>,<ore:ingotLead>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/lead>*3],<ore:ingotDoubleLead>,<ore:ingotDoubleLead>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/gold>],<ore:ingotGold>,<ore:ingotGold>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/gold>*3],<ore:ingotDoubleGold>,<ore:ingotDoubleGold>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/copper>],<ore:ingotCopper>,<ore:ingotCopper>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/copper>*3],<ore:ingotDoubleCopper>,<ore:ingotDoubleCopper>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/brass>],<ore:ingotBrass>,<ore:ingotBrass>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/brass>*3],<ore:ingotDoubleBrass>,<ore:ingotDoubleBrass>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/antimony>],<ore:ingotAntimony>,<ore:ingotAntimony>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/antimony>*3],<ore:ingotDoubleAntimony>,<ore:ingotDoubleAntimony>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/rose_gold>],<ore:ingotRoseGold>,<ore:ingotRoseGold>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/rose_gold>*3],<ore:ingotDoubleRoseGold>,<ore:ingotDoubleRoseGold>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/silver>],<ore:ingotSilver>,<ore:ingotSilver>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/silver>*3],<ore:ingotDoubleSilver>,<ore:ingotDoubleSilver>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/sterling_silver>],<ore:ingotSterlingSilver>,<ore:ingotSterlingSilver>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/sterling_silver>*3],<ore:ingotDoubleSterlingSilver>,<ore:ingotDoubleSterlingSilver>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/zinc>],<ore:ingotZinc>,<ore:ingotZinc>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/zinc>*3],<ore:ingotDoubleZinc>,<ore:ingotDoubleZinc>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/tin>],<ore:ingotTin>,<ore:ingotTin>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/tin>*3],<ore:ingotDoubleTin>,<ore:ingotDoubleTin>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/bronze>],<ore:ingotBronze>,<ore:ingotBronze>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/bronze>*3],<ore:ingotDoubleBronze>,<ore:ingotDoubleBronze>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/bismuth_bronze>],<ore:ingotBismuthBronze>,<ore:ingotBismuthBronze>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/bismuth_bronze>*3],<ore:ingotDoubleBismuthBronze>,<ore:ingotDoubleBismuthBronze>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/black_bronze>],<ore:ingotBlackBronze>,<ore:ingotBlackBronze>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/black_bronze>*3],<ore:ingotDoubleBlackBronze>,<ore:ingotDoubleBlackBronze>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/lithium>],<ore:ingot>,<ore:ingot>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/lithium>*3],<ore:ingotDouble>,<ore:ingotDouble>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/lithium>],<ore:ingotLithium>,<ore:ingotLithium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/lithium>*3],<ore:ingotDoubleLithium>,<ore:ingotDoubleLithium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/constantan>],<ore:ingotConstantan>,<ore:ingotConstantan>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/constantan>*3],<ore:ingotDoubleConstantan>,<ore:ingotDoubleConstantan>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/electrum>],<ore:ingotElectrum>,<ore:ingotElectrum>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/electrum>*3],<ore:ingotDoubleElectrum>,<ore:ingotDoubleElectrum>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/nickel_silver>],<ore:ingotNickelSilver>,<ore:ingotNickelSilver>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/nickel_silver>*3],<ore:ingotDoubleNickelSilver>,<ore:ingotDoubleNickelSilver>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/red_alloy>],<ore:ingotRedAlloy>,<ore:ingotRedAlloy>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/red_alloy>*3],<ore:ingotDoubleRedAlloy>,<ore:ingotDoubleRedAlloy>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/mithril>],<ore:ingotMithril>,<ore:ingotMithril>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/mithril>*3],<ore:ingotDoubleMithril>,<ore:ingotDoubleMithril>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/wrought_iron>],<ore:ingotIron>,<ore:ingotIron>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/wrought_iron>*3],<ore:ingotDoubleIron>,<ore:ingotDoubleIron>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/pig_iron>],<ore:ingotPigIron>,<ore:ingotPigIron>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/pig_iron>*3],<ore:ingotDoublePigIron>,<ore:ingotDoublePigIron>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/aluminium_brass>],<ore:ingotAluminiumBrass>,<ore:ingotAluminiumBrass>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/aluminium_brass>*3],<ore:ingotDoubleAluminiumBrass>,<ore:ingotDoubleAluminiumBrass>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/aluminium>],<ore:ingotAluminium>,<ore:ingotAluminium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/aluminium>*3],<ore:ingotDoubleAluminium>,<ore:ingotDoubleAluminium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/cobalt>],<ore:ingotCobalt>,<ore:ingotCobalt>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/cobalt>*3],<ore:ingotDoubleCobalt>,<ore:ingotDoubleCobalt>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/ardite>],<ore:ingotArdite>,<ore:ingotArdite>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/ardite>*3],<ore:ingotDoubleArdite>,<ore:ingotDoubleArdite>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/invar>],<ore:ingotInvar>,<ore:ingotInvar>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/invar>*3],<ore:ingotDoubleInvar>,<ore:ingotDoubleInvar>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/magnesium>],<ore:ingotMagnesium>,<ore:ingotMagnesium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/magnesium>*3],<ore:ingotDoubleMagnesium>,<ore:ingotDoubleMagnesium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/manganese>],<ore:ingotManganese>,<ore:ingotManganese>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/manganese>*3],<ore:ingotDoubleManganese>,<ore:ingotDoubleManganese>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/boron>],<ore:ingotBoron>,<ore:ingotBoron>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/boron>*3],<ore:ingotDoubleBoron>,<ore:ingotDoubleBoron>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/magnesium_diboride>],<ore:ingotMagnesiumDiboride>,<ore:ingotMagnesiumDiboride>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/magnesium_diboride>*3],<ore:ingotDoubleMagnesiumDiboride>,<ore:ingotDoubleMagnesiumDiboride>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/thorium>],<ore:ingotThorium>,<ore:ingotThorium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/thorium>*3],<ore:ingotDoubleThorium>,<ore:ingotDoubleThorium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/uranium>],<ore:ingotUranium>,<ore:ingotUranium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/uranium>*3],<ore:ingotDoubleUranium>,<ore:ingotDoubleUranium>);
	
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/manyullyn>],<ore:ingotManyullyn>,<ore:ingotManyullyn>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/manyullyn>*3],<ore:ingotDoubleManyullyn>,<ore:ingotDoubleManyullyn>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/steel>],<ore:ingotSteel>,<ore:ingotSteel>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/steel>*3],<ore:ingotDoubleSteel>,<ore:ingotDoubleSteel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/black_steel>],<ore:ingotBlackSteel>,<ore:ingotBlackSteel>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/black_steel>*3],<ore:ingotDoubleBlackSteel>,<ore:ingotDoubleBlackSteel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/platinum>],<ore:ingotPlatinum>,<ore:ingotPlatinum>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/platinum>*3],<ore:ingotDoublePlatinum>,<ore:ingotDoublePlatinum>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/ferroboron>],<ore:ingotFerroboron>,<ore:ingotFerroboron>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/ferroboron>*3],<ore:ingotDoubleFerroboron>,<ore:ingotDoubleFerroboron>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/red_steel>],<ore:ingotRedSteel>,<ore:ingotRedSteel>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/red_steel>*3],<ore:ingotDoubleRedSteel>,<ore:ingotDoubleRedSteel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/blue_steel>],<ore:ingotBlueSteel>,<ore:ingotBlueSteel>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/blue_steel>*3],<ore:ingotDoubleBlueSteel>,<ore:ingotDoubleBlueSteel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/beryllium>],<ore:ingotBeryllium>,<ore:ingotBeryllium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/beryllium>*3],<ore:ingotDoubleBeryllium>,<ore:ingotDoubleBeryllium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/beryllium_copper>],<ore:ingotBerylliumCopper>,<ore:ingotBerylliumCopper>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/beryllium_copper>*3],<ore:ingotDoubleBerylliumCopper>,<ore:ingotDoubleBerylliumCopper>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/osmium>],<ore:ingotOsmium>,<ore:ingotOsmium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/osmium>*3],<ore:ingotDoubleOsmium>,<ore:ingotDoubleOsmium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/titanium>],<ore:ingotTitanium>,<ore:ingotTitanium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/titanium>*3],<ore:ingotDoubleTitanium>,<ore:ingotDoubleTitanium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/tungsten>],<ore:ingotTungsten>,<ore:ingotTungsten>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/tungsten>*3],<ore:ingotDoubleTungsten>,<ore:ingotDoubleTungsten>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/tungsten_steel>],<ore:ingotTungstenSteel>,<ore:ingotTungstenSteel>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/tungsten_steel>*3],<ore:ingotDoubleTungstenSteel>,<ore:ingotDoubleTungstenSteel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/zirconium>],<ore:ingotZirconium>,<ore:ingotZirconium>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/zirconium>*3],<ore:ingotDoubleZirconium>,<ore:ingotDoubleZirconium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/zircaloy>],<ore:ingotZircaloy>,<ore:ingotZircaloy>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/zircaloy>*3],<ore:ingotDoubleZircaloy>,<ore:ingotDoubleZircaloy>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_ingot/tough_alloy>],<ore:ingottough_alloy>,<ore:ingottough_alloy>);
	mods.embers.DawnstoneAnvil.add([<tfc:metal/sheet/tough_alloy>*3],<ore:ingotDoubletough_alloy>,<ore:ingotDoubletough_alloy>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/bismuth>],<ore:sheetBismuth>,<ore:sheetBismuth>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/nickel>],<ore:sheetNickel>,<ore:sheetNickel>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/lead>],<ore:sheetLead>,<ore:sheetLead>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/gold>],<ore:sheetGold>,<ore:sheetGold>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/copper>],<ore:sheetCopper>,<ore:sheetCopper>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/brass>],<ore:sheetBrass>,<ore:sheetBrass>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/antimony>],<ore:sheetAntimony>,<ore:sheetAntimony>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/rose_gold>],<ore:sheetRoseGold>,<ore:sheetRoseGold>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/silver>],<ore:sheetSilver>,<ore:sheetSilver>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/sterling_silver>],<ore:sheetSterlingSilver>,<ore:sheetSterlingSilver>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/zinc>],<ore:sheetZinc>,<ore:sheetZinc>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/tin>],<ore:sheetTin>,<ore:sheetTin>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/bronze>],<ore:sheetBronze>,<ore:sheetBronze>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/bismuth_bronze>],<ore:sheetBismuthBronze>,<ore:sheetBismuthBronze>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/black_bronze>],<ore:sheetBlackBronze>,<ore:sheetBlackBronze>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/lithium>],<ore:sheet>,<ore:sheet>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/lithium>],<ore:sheetLithium>,<ore:sheetLithium>);

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/constantan>],<ore:sheetConstantan>,<ore:sheetConstantan>);

	

	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/electrum>],<ore:sheetElectrum>,<ore:sheetElectrum>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/nickel_silver>],<ore:sheetNickelSilver>,<ore:sheetNickelSilver>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/red_alloy>],<ore:sheetRedAlloy>,<ore:sheetRedAlloy>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/mithril>],<ore:sheetMithril>,<ore:sheetMithril>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/wrought_iron>],<ore:sheetIron>,<ore:sheetIron>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/pig_iron>],<ore:sheetPigIron>,<ore:sheetPigIron>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/aluminium_brass>],<ore:sheetAluminiumBrass>,<ore:sheetAluminiumBrass>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/aluminium>],<ore:sheetAluminium>,<ore:sheetAluminium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/cobalt>],<ore:sheetCobalt>,<ore:sheetCobalt>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/ardite>],<ore:sheetArdite>,<ore:sheetArdite>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/invar>],<ore:sheetInvar>,<ore:sheetInvar>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/magnesium>],<ore:sheetMagnesium>,<ore:sheetMagnesium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/manganese>],<ore:sheetManganese>,<ore:sheetManganese>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/boron>],<ore:sheetBoron>,<ore:sheetBoron>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/magnesium_diboride>],<ore:sheetMagnesiumDiboride>,<ore:sheetMagnesiumDiboride>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/thorium>],<ore:sheetThorium>,<ore:sheetThorium>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/uranium>],<ore:sheetUranium>,<ore:sheetUranium>);
	
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/manyullyn>],<ore:sheetManyullyn>,<ore:sheetManyullyn>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/steel>],<ore:sheetSteel>,<ore:sheetSteel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/black_steel>],<ore:sheetBlackSteel>,<ore:sheetBlackSteel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/platinum>],<ore:sheetPlatinum>,<ore:sheetPlatinum>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/ferroboron>],<ore:sheetFerroboron>,<ore:sheetFerroboron>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/red_steel>],<ore:sheetRedSteel>,<ore:sheetRedSteel>);
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/blue_steel>],<ore:sheetBlueSteel>,<ore:sheetBlueSteel>);

	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/beryllium>],<ore:sheetBeryllium>,<ore:sheetBeryllium>);
	
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/beryllium_copper>],<ore:sheetBerylliumCopper>,<ore:sheetBerylliumCopper>);

	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/osmium>],<ore:sheetOsmium>,<ore:sheetOsmium>);

	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/titanium>],<ore:sheetTitanium>,<ore:sheetTitanium>);
	
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/tungsten>],<ore:sheetTungsten>,<ore:sheetTungsten>);

	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/tungsten_steel>],<ore:sheetTungstenSteel>,<ore:sheetTungstenSteel>);
	
	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/zirconium>],<ore:sheetZirconium>,<ore:sheetZirconium>);

	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/zircaloy>],<ore:sheetZircaloy>,<ore:sheetZircaloy>);

	
	mods.embers.DawnstoneAnvil.add([<tfc:metal/double_sheet/tough_alloy>],<ore:sheettough_alloy>,<ore:sheettough_alloy>);
	
//Done!	

//special items
ItemRegistry.registerItemMetal(<minecraft:iron_bars>,"wrought_iron",18,true);

ItemRegistry.registerItemMetal(<tfc:ore/borax>,"boron",200,true);









