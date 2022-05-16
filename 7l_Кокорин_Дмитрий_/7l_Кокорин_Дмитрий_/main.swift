
import Foundation

enum WhereIs: LocalizedError {
   case incorrectName
   case city
   case outCity
   case highway
   case lessZero

   var errorDescription: String? {
       switch self {
       case .city:
           return "Снизте скорость! По городу не больше 90 км/ч"
       case .outCity:
           return "Снизте скорость! Вне города не больше 110 км/ч"
       case .highway:
           return "Снизте скорость! По магистрали не больше 130 км/ч"
       case .incorrectName:
           return "Введите Вашу скорость"
       case .lessZero:
           return "Скорость не может быть меньше нуля"
       }

   }
}

enum Petrol: LocalizedError {
   case wrong
   case fatal
   
   var errorDescription: String? {
       switch self {
       case .wrong:
           return "Неверный объем"
       case .fatal:
           return "Бензина нет! Нужно заправиться"
       }
   }
}

enum PlaceInCar: LocalizedError{
   case incorrectName
   case noPlaces
   
   var errorDescription: String? {
       switch self {
       case .incorrectName:
           return  "Введите число пассажиров"
       case .noPlaces:
           return "Нет мест"
       }
   }
}



struct Car {
   var petrol: Int
   var passegers: Int
}

func inTown() throws -> Int {
   print("Какая у Вас скорость по городу?")
   let velocity = readLine()
   
   guard let velocity = velocity, let velocity = Int(velocity) else {
       throw WhereIs.incorrectName
   }
   if velocity < 90 {
       print("Допустимая скорость!")
   }else {
       throw WhereIs.city
   }
   if velocity < 0  {
       throw WhereIs.lessZero
   }
   return velocity
}

func inOutTown() throws -> Int {
   print("Какая у Вас скорость за городом?")
   let velocity = readLine()
   
   guard let velocity = velocity, let velocity = Int(velocity) else {
       throw WhereIs.incorrectName
   }
   if velocity < 110{
       print("Допустимая скорость!")
   } else {
       throw WhereIs.outCity
   }
   if velocity < 0  {
       throw WhereIs.lessZero
   }
   return velocity
}

func highway() throws -> Int {
   print("Какая у Вас скорость на магистрале?")
   let velocity = readLine()
   
   guard let velocity = velocity, let velocity = Int(velocity) else {
       throw WhereIs.incorrectName
   }
   if velocity < 130 {
       print("Допустимая скорость!")
   }else {
       throw WhereIs.highway
   }
   if velocity < 0  {
       throw WhereIs.lessZero
   }
   return velocity
}

func placesInCar() throws -> Int{
   print("Сколько пассажиров поедет?")
   let countPassengers = readLine()

   guard let countPassengers = countPassengers, let count = Int(countPassengers) else {
       throw PlaceInCar.incorrectName
   }

   guard count <= 5 else {
       throw PlaceInCar.noPlaces
   }
   return count
}

func volumePetrol() throws -> Int {
   print("Сколько осталось бензина?")
   let volumePetrol = readLine()

   guard let volumePetrol = volumePetrol, let volume = Int(volumePetrol) else {
       throw Petrol.wrong
   }
   guard volume > 0 else{
       throw Petrol.fatal
   }
   return volume
}

func petrolAndPassegers() throws -> Car {
   let petrol = try volumePetrol()
   let place = try placesInCar()
   
   return Car(petrol: petrol, passegers: place)
}

func brand() -> String? {
   print("Введите бренд автомобиля")
   let brand = readLine()
   guard let brand = brand, !brand.isEmpty else {
       return nil
   }
   return brand
}

func mileage() -> Int? {
   print("Пробег")
   let mileage = readLine()
   guard let mileage = mileage, let mileage = Int(mileage) else {
       return nil
   }
   return mileage
}

// 1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
if let brand = brand(), let mileage = mileage() {
   print("Данные корректны!")
}else {
   print("Данные не корректны!")
}

//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.
do {
   var count = try petrolAndPassegers()
} catch (let error) {
   print("Ошибка: \(error.localizedDescription)")
}


do {
   var inCity = try inTown()

} catch (let error) {
   print("Предупреждение: \(error.localizedDescription)")
}


do {
   var outCity = try inOutTown()
} catch (let error) {
   print("Предупреждение: \(error.localizedDescription)")
}

do {
   var highway = try highway()
} catch (let error) {
   print("Предупреждение: \(error.localizedDescription)")
}
