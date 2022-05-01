var stockSport1 = SportCar(tires: .summer, music: .yes, engine: .on, window: .open, spoiler: .yes)

print(stockSport1.engine.rawValue) // действия с двигателем
stockSport1.onOffEngine()
print(stockSport1.engine.rawValue)

print(stockSport1.window) // действия с окном
stockSport1.windowFunc()
print(stockSport1.window)

print(stockSport1.description)

print("-----------------------")

var stockSport2 = SportCar(tires: .summer, music: .yes, engine: .on, window: .open, spoiler: .no)

stockSport2.helloDriver()// приветствие пользователя

stockSport2.onOffEngine()// выключение двигателя
print(stockSport2.engine.rawValue)
stockSport2.onOffEngine()// включение двигателя
print(stockSport2.engine.rawValue)

print("-----------------------")

var stockTrunk1 = TrunkCar(tires: .winter, music: .no, engine: .off, window: .open, ladle: .yes)

stockTrunk1.helloDriver()// приветствие водителя

stockTrunk1.onOffEngine()// включение двигателя
print(stockTrunk1.engine.rawValue)
stockTrunk1.onOffEngine()// выключение двигателя
print(stockTrunk1.engine.rawValue)

stockTrunk1.windowFunc()// действия с окном
print(stockTrunk1.window)
stockTrunk1.windowFunc()
print(stockTrunk1.window)

print(stockTrunk1.description)

print("-----------------------")

var stockTrunk2 = TrunkCar(tires: .summer, music: .yes, engine: .on, window: .open, ladle: .no)

stockTrunk1.helloDriver()// приветствие водителя

stockTrunk1.onOffEngine()// включение двигателя
print(stockTrunk1.engine.rawValue)
stockTrunk1.onOffEngine()// выключение двигателя
print(stockTrunk1.engine.rawValue)

stockTrunk1.windowFunc()// действия с окном
print(stockTrunk1.window)
stockTrunk1.windowFunc()
print(stockTrunk1.window)

print(stockTrunk1.description)


