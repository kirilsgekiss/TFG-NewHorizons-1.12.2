import postInit.Utility.Array.ItemArray


// --- Добавление

// Стеклянный кабель
for (glassCable in ItemArray.glassCables) {
    ore('ae2.cable.glass').add(glassCable)
    if (glassCable == item('appliedenergistics2:part', 16)) {}
    else {
        ore('ae2.cable.glass.colors').add(glassCable)
    }
}

// Закрытый кабель
for (coveredCable in ItemArray.coveredCables) {
    ore('ae2.cable.covered').add(coveredCable)
    if (coveredCable == item('appliedenergistics2:part:', 36)) {}
    else {
        ore('ae2.cable.covered.colors').add(coveredCable)
    }
}

// Умный кабель
for (smartCable in ItemArray.smartCables) {
    ore('ae2.cable.smart').add(smartCable)
    if (smartCable == item('appliedenergistics2:part', 56)) {}
    else {
        ore('ae2.cable.smart.colors').add(smartCable)
    }
}

// Плотный закрытый кабель
for (denseCoveredCable in ItemArray.denseCoveredCables) {
    ore('ae2.cable.dense.covered').add(denseCoveredCable)
    if (denseCoveredCable == item('appliedenergistics2:part', 516)) {}
    else {
        ore('ae2.cable.dense.covered.colors').add(denseCoveredCable)
    }
}

// Плотный умный кабель
for (denseSmartCable in ItemArray.denseSmartCables) {
    ore('ae2.cable.dense.smart').add(denseSmartCable)
    if (denseSmartCable == item('appliedenergistics2:part', 76)) {}
    else {
        ore('ae2.cable.dense.smart.colors').add(denseSmartCable)
    }
}

// Шарик с краской
for (paintBall in ItemArray.paintBalls) {
    ore('ae2.paint.ball.colors').add(paintBall)
}

// Люмен шарик с краской
for (paintBallLumen in ItemArray.paintBallsLumen) {
	ore('ae2.paint.ball.colors').add(paintBallLumen)
    ore('ae2.paint.ball.colors.lumen').add(paintBallLumen)
}

// Изменчивый кристал
ore('gemFluix').add(item('appliedenergistics2:material', 7))
ore('blockFluix').add(item('appliedenergistics2:fluix_block'))

// Заряженный изменчивый кристал
ore('gemChargedCertusQuartz').add(item('appliedenergistics2:material', 1))

// Квартцевые стержни
ore('stickQuartz').add([
    metaitem('stickCertusQuartz'),
    metaitem('stickNetherQuartz')
])

// Интерфейсы
ore('crystalFluix').add(item('appliedenergistics2:material', 12))

// Интерфейсы
ore('ae2.interface.item').add([
    item('appliedenergistics2:interface'),
    item('appliedenergistics2:part', 440)
])

// Жидкостные интерфейсы

ore('ae2.interface.fluid').add([
    item('appliedenergistics2:fluid_interface'),
    item('appliedenergistics2:part', 441)
])

// --- Удаление

// Пыль жемчуга эндера
ore('dustEnder').remove(item('appliedenergistics2:material', 46))
ore('dustEnderPearl').remove(item('appliedenergistics2:material', 46))
// Истинный кварц
ore('crystalCertusQuartz').remove(item('appliedenergistics2:material'))
// Силикон
ore('itemSilicon').remove(item('appliedenergistics2:material', 5))