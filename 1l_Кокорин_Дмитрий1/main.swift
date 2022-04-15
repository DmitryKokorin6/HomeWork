//
//  main.swift
//  the quadratic equation
//
//  Created by Сыночек on 15.04.2022.
//

import Foundation

// 2x^2 + 3x + 1 = 0
let a:Double = 2
let b:Double = 3
let c:Double = 1
let D:Double = pow(b, 2) - (4 * a * c)
let x1:Double = (-b + sqrt(D))/(2 * a)
let x2:Double = (-b - sqrt(D))/(2 * a)

print("2x^2 + 3x + 1 = 0")
print("Дискриминант =", D)
print("X1 =", x1)
print("X2 =", x2)
