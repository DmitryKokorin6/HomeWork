//Triangle ABG. AG - катет 8. BG - катет 6. AB - гипотенуза

//Нахождение гипотенузы
//AG - катет 8. BG - катет 6. AB - гипотенуза
import Foundation

let AG:Double = 8
let BG:Double = 6
let squareAG:Double = pow(AG, 2)
let squareBG:Double = pow(BG, 2)
let sumSquareAG_BG:Double = squareAG + squareBG
let hypotenuseAB = sqrt(sumSquareAG_BG)

print("Гипотенуза AB =", hypotenuseAB)

//Нахождение площади треугольника

let AG_:Double = 8
let BG_:Double = 6
let square:Double = (1/2) * (AG_ * BG_)

print("Площадь треугольника =", square)

//Нахождение периметра треугольника
let AG__:Double = 8
let BG__:Double = 6
let AB__:Double = 9
let perimeter:Double = AG__ + BG__ + AB__

print("Периметр треугольника =", perimeter)

