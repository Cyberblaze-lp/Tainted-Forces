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
	
	
//sheets

ItemRegistry.registerItemMetal(<tfc:metal/sheet/bismuth>,"bismuth",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/bismuth_bronze>,"bismuth_bronze",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/black_bronze>,"black_bronze",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/brass>,"brass",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/bronze>,"bronze",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/copper>,"copper",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/gold>,"gold",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/lead>,"lead",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/nickel>,"nickel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/rose_gold>,"rose_gold",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/silver>,"silver",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/tin>,"tin",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/zinc>,"zinc",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/sterling_silver>,"sterling_silver",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/wrought_iron>,"wrought_iron",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/pig_iron>,"pig_iron",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/steel>,"steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/platinum>,"platinum",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/black_steel>,"black_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/blue_steel>,"blue_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/red_steel>,"red_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/antimony>,"antimony",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/lithium>,"lithium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/constantan>,"constantan",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/electrum>,"electrum",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/nickel_silver>,"nickel_silver",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/red_alloy>,"red_alloy",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/mithril>,"mithril",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/invar>,"invar",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/aluminium>,"aluminium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/aluminium_brass>,"aluminium_brass",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/magnesium>,"magnesium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/manganese>,"manganese",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/boron>,"boron",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/magnesium_diboride>,"magnesium_diboride",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/thorium>,"thorium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/uranium>,"uranium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/cobalt>,"cobalt",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/ardite>,"ardite",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/manyullyn>,"manyullyn",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/hsla_steel>,"hsla_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/ferroboron>,"ferroboron",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/beryllium>,"beryllium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/beryllium_copper>,"beryllium_copper",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/osmium>,"osmium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/titanium>,"titanium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/tungsten>,"tungsten",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/tungsten_steel>,"tungsten_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/zirconium>,"zirconium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/zircaloy>,"zircaloy",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/sheet/tough_alloy>,"tough_alloy",100,true);


//double sheets

ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/bismuth>,"bismuth",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/bismuth_bronze>,"bismuth_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/black_bronze>,"black_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/brass>,"brass",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/bronze>,"bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/copper>,"copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/gold>,"gold",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/lead>,"lead",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/nickel>,"nickel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/rose_gold>,"rose_gold",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/silver>,"silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/tin>,"tin",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/zinc>,"zinc",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/sterling_silver>,"sterling_silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/wrought_iron>,"wrought_iron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/pig_iron>,"pig_iron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/steel>,"steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/platinum>,"platinum",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/black_steel>,"black_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/blue_steel>,"blue_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/red_steel>,"red_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/antimony>,"antimony",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/lithium>,"lithium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/constantan>,"constantan",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/electrum>,"electrum",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/nickel_silver>,"nickel_silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/red_alloy>,"red_alloy",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/mithril>,"mithril",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/invar>,"invar",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/aluminium>,"aluminium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/aluminium_brass>,"aluminium_brass",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/magnesium>,"magnesium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/manganese>,"manganese",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/boron>,"boron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/magnesium_diboride>,"magnesium_diboride",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/thorium>,"thorium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/uranium>,"uranium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/cobalt>,"cobalt",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/ardite>,"ardite",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/manyullyn>,"manyullyn",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/hsla_steel>,"hsla_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/ferroboron>,"ferroboron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/beryllium>,"beryllium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/beryllium_copper>,"beryllium_copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/osmium>,"osmium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/titanium>,"titanium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/tungsten>,"tungsten",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/tungsten_steel>,"tungsten_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/zirconium>,"zirconium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/zircaloy>,"zircaloy",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/double_sheet/tough_alloy>,"tough_alloy",200,true);



//tuyeres

ItemRegistry.registerItemMetal(<tfc:metal/tuyere/bismuth_bronze>,"bismuth_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/black_bronze>,"black_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/bronze>,"bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/copper>,"copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/wrought_iron>,"wrought_iron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/steel>,"steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/black_steel>,"black_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/blue_steel>,"blue_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/red_steel>,"red_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/nickel_silver>,"nickel_silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/mithril>,"mithril",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/invar>,"invar",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/aluminium>,"aluminium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/boron>,"boron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/cobalt>,"cobalt",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/manyullyn>,"manyullyn",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/beryllium_copper>,"beryllium_copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/osmium>,"osmium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/titanium>,"titanium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/tungsten>,"tungsten",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/tungsten_steel>,"tungsten_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/zircaloy>,"zircaloy",200,true);


//blowpipes

ItemRegistry.registerItemMetal(<tfctech:metal/wrought_iron_blowpipe>,"wrought_iron",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/steel_blowpipe>,"steel",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_steel_blowpipe>,"black_steel",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/blue_steel_blowpipe>,"blue_steel",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/red_steel_blowpipe>,"red_steel",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/invar_blowpipe>,"invar",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/aluminium_blowpipe>,"aluminium",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/boron_blowpipe>,"boron",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/cobalt_blowpipe>,"cobalt",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/manyullyn_blowpipe>,"manyullyn",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/beryllium_copper_blowpipe>,"beryllium_copper",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/osmium_blowpipe>,"osmium",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/titanium_blowpipe>,"titanium",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/tungsten_blowpipe>,"tungsten",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/tungsten_steel_blowpipe>,"tungsten_steel",100,true);
ItemRegistry.registerItemMetal(<tfctech:metal/zircaloy_blowpipe>,"zircaloy",100,true);

//shields

ItemRegistry.registerItemMetal(<tfc:metal/shield/bismuth_bronze>,"bismuth_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/black_bronze>,"black_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/bronze>,"bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/copper>,"copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/wrought_iron>,"wrought_iron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/steel>,"steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/black_steel>,"black_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/blue_steel>,"blue_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/red_steel>,"red_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/nickel_silver>,"nickel_silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/mithril>,"mithril",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/invar>,"invar",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/aluminium>,"aluminium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/boron>,"boron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/cobalt>,"cobalt",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/manyullyn>,"manyullyn",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/beryllium_copper>,"beryllium_copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/osmium>,"osmium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/titanium>,"titanium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/tungsten>,"tungsten",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/tungsten_steel>,"tungsten_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/zircaloy>,"zircaloy",200,true);



//unfinished helmets

ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/bismuth_bronze>,"bismuth_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/black_bronze>,"black_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/bronze>,"bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/copper>,"copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/wrought_iron>,"wrought_iron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/steel>,"steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/black_steel>,"black_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/blue_steel>,"blue_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/red_steel>,"red_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/nickel_silver>,"nickel_silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/mithril>,"mithril",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/invar>,"invar",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/aluminium>,"aluminium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/boron>,"boron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/cobalt>,"cobalt",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/manyullyn>,"manyullyn",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/beryllium_copper>,"beryllium_copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/osmium>,"osmium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/titanium>,"titanium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/tungsten>,"tungsten",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/tungsten_steel>,"tungsten_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/zircaloy>,"zircaloy",200,true);

//helmets

ItemRegistry.registerItemMetal(<tfc:metal/helmet/bismuth_bronze>,"bismuth_bronze",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/black_bronze>,"black_bronze",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/bronze>,"bronze",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/copper>,"copper",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/wrought_iron>,"wrought_iron",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/steel>,"steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/black_steel>,"black_steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/blue_steel>,"blue_steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/red_steel>,"red_steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/nickel_silver>,"nickel_silver",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/mithril>,"mithril",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/invar>,"invar",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/aluminium>,"aluminium",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/boron>,"boron",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/cobalt>,"cobalt",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/manyullyn>,"manyullyn",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/beryllium_copper>,"beryllium_copper",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/osmium>,"osmium",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/titanium>,"titanium",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/tungsten>,"tungsten",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/tungsten_steel>,"tungsten_steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/zircaloy>,"zircaloy",300,true);

//unfinished chestplates

ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/bismuth_bronze>,"bismuth_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/black_bronze>,"black_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/bronze>,"bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/copper>,"copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/wrought_iron>,"wrought_iron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/steel>,"steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/black_steel>,"black_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/blue_steel>,"blue_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/red_steel>,"red_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/nickel_silver>,"nickel_silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/mithril>,"mithril",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/invar>,"invar",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/aluminium>,"aluminium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/boron>,"boron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/cobalt>,"cobalt",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/manyullyn>,"manyullyn",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/beryllium_copper>,"beryllium_copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/osmium>,"osmium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/titanium>,"titanium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/tungsten>,"tungsten",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/tungsten_steel>,"tungsten_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/zircaloy>,"zircaloy",200,true);

//chestplates

ItemRegistry.registerItemMetal(<tfc:metal/chestplate/bismuth_bronze>,"bismuth_bronze",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/black_bronze>,"black_bronze",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/bronze>,"bronze",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/copper>,"copper",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/wrought_iron>,"wrought_iron",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/steel>,"steel",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/black_steel>,"black_steel",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/blue_steel>,"blue_steel",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/red_steel>,"red_steel",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/nickel_silver>,"nickel_silver",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/mithril>,"mithril",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/invar>,"invar",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/aluminium>,"aluminium",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/boron>,"boron",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/cobalt>,"cobalt",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/manyullyn>,"manyullyn",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/beryllium_copper>,"beryllium_copper",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/osmium>,"osmium",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/titanium>,"titanium",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/tungsten>,"tungsten",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/tungsten_steel>,"tungsten_steel",400,true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/zircaloy>,"zircaloy",400,true);

//unfinished greaves

ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/bismuth_bronze>,"bismuth_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/black_bronze>,"black_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/bronze>,"bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/copper>,"copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/wrought_iron>,"wrought_iron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/steel>,"steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/black_steel>,"black_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/blue_steel>,"blue_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/red_steel>,"red_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/nickel_silver>,"nickel_silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/mithril>,"mithril",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/invar>,"invar",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/aluminium>,"aluminium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/boron>,"boron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/cobalt>,"cobalt",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/manyullyn>,"manyullyn",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/beryllium_copper>,"beryllium_copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/osmium>,"osmium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/titanium>,"titanium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/tungsten>,"tungsten",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/tungsten_steel>,"tungsten_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/zircaloy>,"zircaloy",200,true);

//greaves

ItemRegistry.registerItemMetal(<tfc:metal/greaves/bismuth_bronze>,"bismuth_bronze",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/black_bronze>,"black_bronze",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/bronze>,"bronze",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/copper>,"copper",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/wrought_iron>,"wrought_iron",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/steel>,"steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/black_steel>,"black_steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/blue_steel>,"blue_steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/red_steel>,"red_steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/nickel_silver>,"nickel_silver",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/mithril>,"mithril",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/invar>,"invar",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/aluminium>,"aluminium",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/boron>,"boron",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/cobalt>,"cobalt",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/manyullyn>,"manyullyn",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/beryllium_copper>,"beryllium_copper",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/osmium>,"osmium",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/titanium>,"titanium",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/tungsten>,"tungsten",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/tungsten_steel>,"tungsten_steel",300,true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/zircaloy>,"zircaloy",300,true);

//unfinished boots

ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/bismuth_bronze>,"bismuth_bronze",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/black_bronze>,"black_bronze",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/bronze>,"bronze",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/copper>,"copper",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/wrought_iron>,"wrought_iron",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/steel>,"steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/black_steel>,"black_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/blue_steel>,"blue_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/red_steel>,"red_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/nickel_silver>,"nickel_silver",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/mithril>,"mithril",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/invar>,"invar",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/aluminium>,"aluminium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/boron>,"boron",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/cobalt>,"cobalt",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/manyullyn>,"manyullyn",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/beryllium_copper>,"beryllium_copper",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/osmium>,"osmium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/titanium>,"titanium",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/tungsten>,"tungsten",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/tungsten_steel>,"tungsten_steel",100,true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/zircaloy>,"zircaloy",100,true);

//boots

ItemRegistry.registerItemMetal(<tfc:metal/boots/bismuth_bronze>,"bismuth_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/black_bronze>,"black_bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/bronze>,"bronze",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/copper>,"copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/wrought_iron>,"wrought_iron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/steel>,"steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/black_steel>,"black_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/blue_steel>,"blue_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/red_steel>,"red_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/nickel_silver>,"nickel_silver",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/mithril>,"mithril",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/invar>,"invar",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/aluminium>,"aluminium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/boron>,"boron",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/cobalt>,"cobalt",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/manyullyn>,"manyullyn",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/beryllium_copper>,"beryllium_copper",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/osmium>,"osmium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/titanium>,"titanium",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/tungsten>,"tungsten",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/tungsten_steel>,"tungsten_steel",200,true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/zircaloy>,"zircaloy",200,true);

//special items
ItemRegistry.registerItemMetal(<minecraft:iron_bars>,"wrought_iron",10,true);

ItemRegistry.registerItemMetal(<tfc:ore/borax>,"boron",200,true);









