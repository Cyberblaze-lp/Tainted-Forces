#loader mixin

#mixin {targets: "mctmods.immersivetechnology.common.multiblocks.metal.tileentities.TileEntitySteamTurbineMaster"}
zenClass MixinTurbine {
    #mixin Overwrite 
    function isValidAlternator() as bool {
        return true;
    }
}
