import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;

val forged =
[
<tetra:forged_wall>,
<tetra:forged_crate:*>,
<tetra:forged_pillar:1>,
<tetra:forged_pillar:2>,
<tetra:forged_pillar>,
<tetra:forged_platform>,
<tetra:forged_platform_slab>,
<tetra:forged_platform_slab:1>,
<tetra:extractor_pipe>,
<tetra:extractor_pipe:1>,
<tetra:extractor_pipe:2>,
<tetra:extractor_pipe:3>,
<tetra:extractor_pipe:4>,
<tetra:extractor_pipe:5>,
<tetra:extractor_pipe:6>,
<tetra:extractor_pipe:7>,
<tetra:extractor_pipe:8>,
<tetra:extractor_pipe:9>,
<tetra:extractor_pipe:10>,
<tetra:extractor_pipe:11>,
<tetra:extractor_pipe:12>,
<tetra:extractor_pipe:13>,
<tetra:core_extractor>,
<tetra:core_extractor:1>,
<tetra:core_extractor:2>,
<tetra:core_extractor:3>,
<tetra:extractor_piston>,
<tetra:transfer_unit>,
<tetra:transfer_unit:1>,
<tetra:transfer_unit:2>,
<tetra:transfer_unit:3>,
<tetra:forged_container>,
<tetra:forged_container:1>,
<tetra:forged_container:2>,
<tetra:forged_container:3>,
<tetra:forged_vent>,
<tetra:forged_vent:1>,
<tetra:forged_vent:2>,
<tetra:forged_vent:3>,
<tetra:forged_vent:4>,
<tetra:forged_vent:5>,
<tetra:forged_vent:6>,
<tetra:forged_vent:7>,
<tetra:hammer_base>,
<tetra:hammer_base:1>,
<tetra:hammer_base:2>,
<tetra:hammer_base:3>,
<tetra:hammer_head>
]
as IBlock[];
for block in forged {

block.definition.resistance = 0.0;
}
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:2>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:3>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:4>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:5>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:6>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:7>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:8>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:9>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:10>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:11>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:12>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_pipe>, <tetra:extractor_pipe:13>, 100);

mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:extractor_piston>, <tetra:extractor_piston>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:core_extractor>, <tetra:core_extractor>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:core_extractor>, <tetra:core_extractor:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:core_extractor>, <tetra:core_extractor:2>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:core_extractor>, <tetra:core_extractor:3>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:transfer_unit>.withTag({BlockEntityTag: {plate: 0 as byte, id: "tetra:transfer_unit", config: "A"}}),<tetra:transfer_unit>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:transfer_unit>.withTag({BlockEntityTag: {plate: 0 as byte, id: "tetra:transfer_unit", config: "A"}}),<tetra:transfer_unit:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:transfer_unit>.withTag({BlockEntityTag: {plate: 0 as byte, id: "tetra:transfer_unit", config: "A"}}),<tetra:transfer_unit:2>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:transfer_unit>.withTag({BlockEntityTag: {plate: 0 as byte, id: "tetra:transfer_unit", config: "A"}}),<tetra:transfer_unit:3>, 100);

mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:workbench:1>, <tetra:workbench:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:hammer_head>, <tetra:hammer_head>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe( <tetra:hammer_base>.withTag({BlockEntityTag: {platee: 0 as byte, slots: [], confige: "A", configw: "A", id: "tetra:hammer_base", platew: 0 as byte}}),<tetra:hammer_base>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe( <tetra:hammer_base>.withTag({BlockEntityTag: {platee: 0 as byte, slots: [], confige: "A", configw: "A", id: "tetra:hammer_base", platew: 0 as byte}}),<tetra:hammer_base:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe( <tetra:hammer_base>.withTag({BlockEntityTag: {platee: 0 as byte, slots: [], confige: "A", configw: "A", id: "tetra:hammer_base", platew: 0 as byte}}),<tetra:hammer_base:2>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe( <tetra:hammer_base>.withTag({BlockEntityTag: {platee: 0 as byte, slots: [], confige: "A", configw: "A", id: "tetra:hammer_base", platew: 0 as byte}}),<tetra:hammer_base:3>, 100);




mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_container>.withTag({BlockEntityTag: {lock_integrity0: 0, stacks: [], id: "tetra:forged_container", lock_integrity2: 0, lock_integrity1: 0, lock_integrity3: 0, lid_integrity: 0}}),<tetra:forged_container>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_container>.withTag({BlockEntityTag: {lock_integrity0: 0, stacks: [], id: "tetra:forged_container", lock_integrity2: 0, lock_integrity1: 0, lock_integrity3: 0, lid_integrity: 0}}),<tetra:forged_container:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_container>.withTag({BlockEntityTag: {lock_integrity0: 0, stacks: [], id: "tetra:forged_container", lock_integrity2: 0, lock_integrity1: 0, lock_integrity3: 0, lid_integrity: 0}}),<tetra:forged_container:2>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_container>.withTag({BlockEntityTag: {lock_integrity0: 0, stacks: [], id: "tetra:forged_container", lock_integrity2: 0, lock_integrity1: 0, lock_integrity3: 0, lid_integrity: 0}}),<tetra:forged_container:3>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_platform_slab>, <tetra:forged_platform_slab>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_platform_slab>, <tetra:forged_platform_slab:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_platform>, <tetra:forged_platform>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_pillar>, <tetra:forged_pillar>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_pillar>, <tetra:forged_pillar:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_pillar>, <tetra:forged_pillar:2>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_wall>, <tetra:forged_wall>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_crate>, <tetra:forged_crate>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_crate>, <tetra:forged_crate>, 100);

mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_vent>, <tetra:forged_vent>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_vent>, <tetra:forged_vent:1>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_vent>, <tetra:forged_vent:2>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_vent>, <tetra:forged_vent:3>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_vent>, <tetra:forged_vent:4>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_vent>, <tetra:forged_vent:5>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_vent>, <tetra:forged_vent:6>, 100);
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<tetra:forged_vent>, <tetra:forged_vent:7>, 100);
