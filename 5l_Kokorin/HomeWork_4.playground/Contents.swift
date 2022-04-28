import Foundation

enum Box{
    case auto
    case mechanik
}

enum Engine: String { // 3) Взял enum из прошлого домашнего задания
    case on = "Включен"
    case off = "Выключен"
}
enum Mode{
    case sport
    case normal
}
enum Petrol{
    case full
    case empty
}
enum longRangeHeadlights{
    case on
    case off
}

class Car { //1 Описываю класс Car с общими свойствами свойствами автомобилей
    var brand: String
    var body: String
    var box: Box
    var Headlights: longRangeHeadlights
    
    init(brand: String, body: String, box: Box, Headlights: longRangeHeadlights){
        self.brand = brand
        self.body = body
        self.box = box
        self.Headlights = Headlights
    }
    func buyCar(){ //1 пустым методом действия по аналогии с прошлым заданием
        print("Поздравляем с приобретением \(brand) !")
    }
    func noLongRange(){
        Headlights = .off
    }
    
    func yesLongRange(){
        Headlights = .on
    }
    func action(engine: Engine, mode: Mode, petrol: Petrol){
        switch engine { // Добавляю метод enum в перчисление
        case .on:
            print("Двигатель включен!")
        case .off:
            print("Двигатель выключен")
        }
        switch mode {
        case .sport:
            print("Включен спортивный режим")
        case .normal:
            print("Обычный режим")
        }
        switch petrol {
        case .full:
            print("Машина заправлена!")
        case .empty:
            print("Необходимо горючее!")
        }
    }
    
    
}



class SportCar: Car {
    let weight: Double// 2 описываю наследовательный класс SportCar
    let height: Double
    var engine: Engine
    
    init(brand: String, body: String, box: Box, weight: Double, height: Double, engine: Engine){
        self.weight = weight
        self.height = height
        self.engine = engine
        super.init(brand: brand, body: body, box: box, Headlights: .on)
    }
    override func noLongRange() { // 4 переопределяю метод
        super.noLongRange()
        print("Впереди машина, включать дальний свет нельзя")
    }
    
    
    
}


class TrunkCar: Car { // 2 описываю наследовательный класс TrunkCar
    let weight: Double
    let height: Double
    var engine: Engine
    init(brand: String, body: String, box: Box, weight: Double, height: Double, engine: Engine){
        self.weight = weight
        self.height = height
        self.engine = engine
        super.init(brand: brand, body: body, box: box, Headlights: .on)
    }
    
    override func yesLongRange() {
        super.yesLongRange()
        print("Можно включить дальний свет, машин нет")
    }
    
}

let wheelbarrow1: SportCar = SportCar(brand: "Ford", body: "Аллюминий", box: .auto, weight: 2300, height: 1.7, engine: .on) // 5 создаю объект
let wheelbarrow2 = TrunkCar(brand: "Mercedes", body: "Металл", box: .mechanik, weight: 5000, height: 5, engine: .off) // 5 создаю объект

wheelbarrow1.buyCar()
wheelbarrow2.buyCar()
wheelbarrow1.noLongRange() // 5 применяю к ним действия
wheelbarrow2.yesLongRange() // 5 применяю к ним действия



wheelbarrow1.engine = .off // 5 применяю к ним действия
wheelbarrow2.engine = .on // 5 применяю к ним действия
