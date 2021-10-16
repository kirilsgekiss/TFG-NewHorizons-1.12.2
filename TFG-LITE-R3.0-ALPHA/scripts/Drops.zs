import mods.dropt.Dropt;

//Уголек
//Битумный уголь
Dropt.list("GTCoalToTFCCoal")
  .add(Dropt.rule()
      .matchBlocks(["gregtech:ore_coal_0"])
      .matchDrops([<gregtech:ore_coal_0>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop().items([<tfc:ore/bituminous_coal>])));
//Лигнитовый уголь
/*
Dropt.list("GTLigniteCoalToTFCCoalStyle")
  .add(Dropt.rule()
      .matchBlocks(["gregtech:ore_lignite_0"])
      .matchDrops([<gregtech:ore_lignite_0>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop().items([<gregtech:meta_item_1:8211>])));*/

Dropt.list("Dirt")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:dirt"]).addDrop(Dropt.drop().items([<tfc:dirt/granite>])));
Dropt.list("Chest")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:chest:*"]).addDrop(Dropt.drop().items([<tfc:wood/chest/oak>])));
Dropt.list("Spruce_Wood_Planks")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:planks:1"]).addDrop(Dropt.drop().items([<tfc:wood/planks/spruce>])));
Dropt.list("Oak_Log")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:log"]).addDrop(Dropt.drop().items([<tfc:wood/log/oak>])));
Dropt.list("Dark_Oak_Fence")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:dark_oak_fence"]).addDrop(Dropt.drop().items([<tfc:wood/fence/blackwood>])));
Dropt.list("Birch_Sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Oak_Sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling:1"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Spruce_Sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling:2"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Farmland")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:farmland:*"]).addDrop(Dropt.drop().items([<tfc:dirt/granite>])));
Dropt.list("Potatoes")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:potatoes:*"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Wheat")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:wheat"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Carrot")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:carrots:*"]).addDrop(Dropt.drop().items([<minecraft:stick>])));

//Дроп с поверхности, подповерхности и камня планет GC
//Луна
//Реголит
Dropt.list("Moon_Turf")
  .add(Dropt.rule()
  .matchBlocks(["galacticraftcore:basic_block_moon:5"])
  .addDrop(Dropt.drop().items([<contenttweaker:moonturf>])));
//Грунт
Dropt.list("Moon_Soil")
   .add(Dropt.rule()
   .matchBlocks(["galacticraftcore:basic_block_moon:3"])
   .addDrop(Dropt.drop().items([<contenttweaker:moonsoil>])));
   
//Марс
//Реголит
Dropt.list("Mars_Stone")
   .add(Dropt.rule()
   .matchBlocks(["galacticraftplanets:mars:5"])
   .addDrop(Dropt.drop().items([<contenttweaker:marsturf>])));
//Грунт
Dropt.list("Mars_Soil")
   .add(Dropt.rule()
   .matchBlocks(["galacticraftplanets:mars:6"])
   .addDrop(Dropt.drop().items([<contenttweaker:marssoil>])));

//Венера
//Мягкий камень
Dropt.list("Venus_Smooth_Stone")
   .add(Dropt.rule()
   .matchBlocks(["galacticraftplanets:venus"])
   .addDrop(Dropt.drop().items([<contenttweaker:venusturf>])));

//Меркурий
//Реголит
Dropt.list("Mercury_Turf")
   .add(Dropt.rule()
   .matchBlocks(["galaxyspace:mercuryblocks"])
   .addDrop(Dropt.drop().items([<contenttweaker:mercuryturf>])));
//Грунт
Dropt.list("Mercury_Soil")
   .add(Dropt.rule()
   .matchBlocks(["galaxyspace:mercuryblocks:1"])
   .addDrop(Dropt.drop().items([<contenttweaker:mercurysoil>])));
//Астероиды
//3x Астероиды
Dropt.list("Asteroids_stone_1")
   .add(Dropt.rule()
   .matchBlocks(["galacticraftplanets:asteroids_block:2"])
   .addDrop(Dropt.drop().items([<contenttweaker:asteroidstone1>])));
Dropt.list("Asteroids_stone_2")
   .add(Dropt.rule()
   .matchBlocks(["galacticraftplanets:asteroids_block:1"])
   .addDrop(Dropt.drop().items([<contenttweaker:asteroidstone2>])));
Dropt.list("Asteroids_stone_3")
   .add(Dropt.rule()
   .matchBlocks(["galacticraftplanets:asteroids_block"])
   .addDrop(Dropt.drop().items([<contenttweaker:asteroidstone3>])));