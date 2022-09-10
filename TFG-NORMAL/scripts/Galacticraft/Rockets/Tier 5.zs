import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val RocketT5 as IItemStack[] = [
  <extraplanets:item_tier5_rocket>,
  <extraplanets:item_tier5_rocket:1>,
  <extraplanets:item_tier5_rocket:2>,
  <extraplanets:item_tier5_rocket:3>,
];
val CrateT5 as IItemStack[] = [
  <metaitem:plateAluminium>,
  <metaitem:crate.aluminium>,
  <metaitem:crate.stainless_steel>,
  <metaitem:crate.titanium>
];
for i, RocketT5 in RocketT5 {
// Tier 4 - Ракета
assembly_line.recipeBuilder()
  .inputs(<extraplanets:nose_cone_tier5>) // Обтекатель
  .inputs(<contenttweaker:rocketbody_tier5> * 12) // Корпус
  .inputs(<extraplanets:tier5_items:2> * 6)  // Стабилизаторы
  .inputs(<extraplanets:tier5_items:1> * 4) // Ускорители
  .inputs(<extraplanets:tier5_items> * 4) // Двигатели
  .inputs(<galacticraftcore:oil_canister_partial:1001> * 32)
  .inputs(<contenttweaker:lander_tier3>)
  .inputs(<metaitem:electric.motor.zpm> * 4)
  .inputs(<metaitem:emitter.zpm> * 4)
  .inputs(<ore:circuitZpm> * 8)
  .inputs([CrateT5[i] * 15])
  .inputs(<contenttweaker:rocketcontrolcomputer_tier5>)
  .inputs(<extraplanets:schematic_tier5>)
  .fluidInputs([<liquid:americium> * 9216])
  .fluidInputs([<liquid:soldering_alloy> * 4608])
  .fluidInputs([<liquid:europium> * 4608])
  .outputs([RocketT5])
  .duration(1200).EUt(122880).buildAndRegister();
}
// Ракетный компьютер
assembler.recipeBuilder()
  .circuit(5)
  .inputs([
    <opencomputers:case2>,
    <opencomputers:keyboard>,
    <opencomputers:screen2>,
    <metaitem:emitter.zpm>,
    <metaitem:sensor.zpm>,
    <extraplanets:tier5_items:3>])
  .fluidInputs([<liquid:soldering_alloy> * 1728])
  .outputs(<contenttweaker:rocketcontrolcomputer_tier5>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(122880).buildAndRegister();
// Головоной обтекатель
assembler.recipeBuilder()
  .circuit(5)
  .inputs([
    <extraplanets:nose_cone_tier4>,
    <extraplanets:tier5_items:3> * 4,
    <metaitem:sensor.zpm> * 2,
    <ore:screwTungstenSteel> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<extraplanets:nose_cone_tier5>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(122880).buildAndRegister();
// Корпус
assembler.recipeBuilder()
  .circuit(5)
  .inputs([
    <extraplanets:tier5_items:3> * 2,
    <metaitem:voltage_coil.zpm> * 2,
    <metaitem:field.generator.zpm>])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<contenttweaker:rocketbody_tier5>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(122880).buildAndRegister();
// Стабилизаторы
assembler.recipeBuilder()
  .circuit(5)
  .inputs([
    <extraplanets:tier5_items:3> * 2,
    <extraplanets:tier4_items:3> * 2,
    <ore:screwRuridit> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<extraplanets:tier5_items:2>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(122880).buildAndRegister();
// Ракетные двигатели
assembler.recipeBuilder()
  .circuit(5)
  .inputs([
    <extraplanets:tier5_items:3> * 5,
    <galacticraftplanets:item_basic_asteroids:1> * 2,
    <galacticraftcore:engine:1> * 2,
    <metaitem:electric.pump.zpm> * 4,
    <ore:cableGtSingleAnnealedCopper> * 16])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<extraplanets:tier5_items>)
  .duration(300).EUt(122880).buildAndRegister();
// Ускорители
assembler.recipeBuilder()
  .circuit(5)
  .inputs([
    <galacticraftcore:engine:1>,
    <extraplanets:tier5_items:3> * 4,
    <ore:plateDenseIce> * 3])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<extraplanets:tier5_items:1>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(122880).buildAndRegister();
// Сплав сверх-прочных пластин
assembly_line.recipeBuilder()
  .inputs([
    <extraplanets:tier4_items:3>,
    <ore:plateDenseAmericium> * 4,
    <ore:plateDenseAmericium> * 4,
    <ore:boltEuropium> * 8])
  .fluidInputs([<liquid:soldering_alloy> * 36])
  .outputs(<contenttweaker:alloyingot_tier5>)
  .duration(300).EUt(122880).buildAndRegister();
// Сверх-прочные пластины
implosion_compressor.recipeBuilder()
	.inputs([<contenttweaker:alloyingot_tier5>])
	.outputs(
      <extraplanets:tier5_items:3>,
      <metaitem:dustTinyEuropium> * 5)
	.property("explosives", <minecraft:tnt> * 30)
	.duration(20).EUt(30).buildAndRegister();
// Схема ракеты
laser_engraver.recipeBuilder()
  .inputs([<contenttweaker:schematic_blank>])
  .notConsumable([<metaitem:glass_lens.yellow>])
  .outputs(<extraplanets:schematic_tier5>)
  .property("cleanroom", "cleanroom")
  .duration(9000).EUt(122880).buildAndRegister();