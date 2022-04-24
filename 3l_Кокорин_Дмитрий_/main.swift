import Foundation

//3. Перечисление Engine
enum Engine: String {
    case on = "Включен"
    case off = "Выключен"
}
//3. Перечисление Doors
enum Doors {
    case open, noOpen
}
enum Volue {
    case add(gruz: Int)
    case absence(gruz: Int)
}

//1. Описываю структуру SportCar
struct SportCar {
    //2. Константы и переменные структуры SportCar
    let brand: String
    let yearOfIssue: String
    // 5. Инциализация экземпляра структуры
    var trunkVolume: Double
    var filledVolume: Double
    // 5. Инциализация экземпляра структуры
    var doors: Doors
    var onOrOffEngine: Engine {
        didSet {
            forDriver()
        }
    }
    //4. Добавлен метод forDriver с одним аргументом типа перечисления,
    //который меняет свойства структуры в зависимости от действия
    func forDriver() {
        print("Статус двигателя перешел в состояние: \(onOrOffEngine.rawValue)")
    }
    // Метод погрузки
    func fillingVolume(){
        
        let volume = trunkVolume - filledVolume
        if volume < 0 {
            print("Богажник пустой")
        } else{
            print("Осталось всего места: \(volume)")
        }
    }
    // Метод разгрузки
    func unloadingVolume() {
        
        let volume = trunkVolume + filledVolume
        if volume > trunkVolume {
            print("Перебор")
        } else{
            print("Осталось места: \(volume)")
        }
    }
    //создаю конструктор с входящими параметрами. loaderTrunkVo - наполняю богаж
    /// Здесь загружается багаж
    init(brand: String, yearOfIssue: String, trunkVolume: Double, doors: Doors, onOrOffEngine: Engine, loaderTrunkVo: Double, filledVolume: Double){
        self.trunkVolume = trunkVolume - loaderTrunkVo
        if loaderTrunkVo > trunkVolume{
            print("Все заполнено")
        }
        self.brand = brand
        self.doors = doors
        self.onOrOffEngine = onOrOffEngine
        self.yearOfIssue = yearOfIssue
        self.filledVolume = filledVolume
    }
    //создаю конструктор с входящими параметрами. uploaderTrunkVo - разгружаю богаж
    /// Здесь разгружается багаж
    init(brand: String, yearOfIssue: String, trunkVolume: Double, doors: Doors, onOrOffEngine: Engine, uploaderTrunkVo: Double, filledVolume: Double){
        self.trunkVolume = trunkVolume + uploaderTrunkVo
        if uploaderTrunkVo > trunkVolume{
            print("error")
        }
        self.brand = brand
        self.doors = doors
        self.onOrOffEngine = onOrOffEngine
        self.yearOfIssue = yearOfIssue
        self.filledVolume = filledVolume
    }
}
var car1 = SportCar(brand: "Bugatti", yearOfIssue: "2022", trunkVolume: 5, doors: .open, onOrOffEngine: .on, loaderTrunkVo: 6, filledVolume: 3)
car1.onOrOffEngine
car1.onOrOffEngine = .off
car1.trunkVolume // 5. Изменил у экземпляра trunkVolume объем
car1 = SportCar(brand: "Bugatti", yearOfIssue: "2022", trunkVolume: 5, doors: .open, onOrOffEngine: .on, uploaderTrunkVo: 0, filledVolume: 3)
car1.trunkVolume
car1.onOrOffEngine = .on
car1.fillingVolume()
car1.unloadingVolume()

struct TrunkCar {
    //2. Константы и переменные структуры SportCar
    let brand: String
    let yearOfIssue: String
    // 5. Инциализация экземпляра структуры
    var trunkVolume: Double
    var filledVolume: Double
    // 5. Инциализация экземпляра структуры
    var doors: Doors
    var onOrOffEngine: Engine {
        didSet {
            forDriver()
        }
    }
    //4. Добавлен метод forDriver с одним аргументом типа перечисления,
    //который меняет свойства структуры в зависимости от действия
    func forDriver() {
        print("Статус двигателя перешел в состояние: \(onOrOffEngine.rawValue)")
    }
    // Метод погрузки
    func fillingVolume(){
        
        let volume = trunkVolume - filledVolume
        if volume < 0 {
            print("Богажник пустой")
        } else{
            print("Осталось всего места: \(volume)")
        }
    }
    // Метод разгрузки
    func unloadingVolume() {
        
        let volume = trunkVolume + filledVolume
        if volume > trunkVolume {
            print("Перебор")
        } else{
            print("Осталось места: \(volume)")
        }
    }
    //создаю конструктор с входящими параметрами. loaderTrunkVo - наполняю богаж
    /// Здесь загружается багаж
    init(brand: String, yearOfIssue: String, trunkVolume: Double, doors: Doors, onOrOffEngine: Engine, loaderTrunkVo: Double, filledVolume: Double){
        self.trunkVolume = trunkVolume - loaderTrunkVo
        if loaderTrunkVo > trunkVolume{
            print("Все заполнено")
        }
        self.brand = brand
        self.doors = doors
        self.onOrOffEngine = onOrOffEngine
        self.yearOfIssue = yearOfIssue
        self.filledVolume = filledVolume
    }
    //создаю конструктор с входящими параметрами. uploaderTrunkVo - разгружаю богаж
    /// Здесь разгружается багаж
    init(brand: String, yearOfIssue: String, trunkVolume: Double, doors: Doors, onOrOffEngine: Engine, uploaderTrunkVo: Double, filledVolume: Double){
        self.trunkVolume = trunkVolume + uploaderTrunkVo
        if uploaderTrunkVo > trunkVolume{
            print("error")
        }
        self.brand = brand
        self.doors = doors
        self.onOrOffEngine = onOrOffEngine
        self.yearOfIssue = yearOfIssue
        self.filledVolume = filledVolume
    }
}
var car2 = SportCar(brand: "GoldDragon", yearOfIssue: "2022", trunkVolume: 5, doors: .open, onOrOffEngine: .on, loaderTrunkVo: 6, filledVolume: 3)
car2.onOrOffEngine
car2.onOrOffEngine = .off
car2.trunkVolume // 5. Изменил у экземпляра trunkVolume объем
car2 = SportCar(brand: "GoldDragon", yearOfIssue: "2022", trunkVolume: 5, doors: .open, onOrOffEngine: .on, uploaderTrunkVo: 0, filledVolume: 3)
car2.trunkVolume
car2.onOrOffEngine = .on
car2.fillingVolume()
car2.unloadingVolume()
