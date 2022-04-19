import Foundation

import CoreGraphics

//Возрастающий массив из 100 чисел
var array = [Int]()
array.append(contentsOf: 1...100)
// Удаление из массива четных чисел и чисел, которые не деляться 3
array = array.filter { elem in
    return elem  % 2 != 0 && elem % 3 == 0
}

print(array)
