#loader mixin

#mixin {targets: "mctmods.immersivetechnology.common.multiblocks.metal.tileentities.TileEntitySteamTurbineMaster"}
zenClass MixinDioptra {
    #mixin Overwrite 
    function isValidAlternator() as bool {
        return true;
    }
}
