import Foundation


func divisionBy3(_ a: Int) {
    
    if a % 3 == 0 {
        print("Число \(a) делится на 3 без остатка")
    } else {
        print("Число \(a) делится на три с остатком")
    }
    
}

var a = 11
let a1 = a
divisionBy3(a1)
