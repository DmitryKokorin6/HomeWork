//
//  main.swift
//  6l_Кокорин_Дмитрий_
//
//  Created by Сыночек on 09.05.2022.
//

import Foundation

struct Queue <E> { //1. Реализую свой тип коллекции «очередь» (Queue) c использованием дженериков.
    var array: [E] = []
    mutating func addElement(_ element: E){
        array.append(element)
    }
    mutating func deleteElement() {
        array.removeFirst()
    }
    subscript(_ index: Int) -> E?{ //3 Добавил свой subscript, //который будет возвращать nil в случае обращения к
        //несуществующему индексу
        if index < 0 || index > array.count - 1 {
            return nil
        } else{
            return array[index]
        }
    }
}
var element = Queue<Int>()
element.addElement(10)
print(element)
element.addElement(20)
print(element)
element.deleteElement()
print(element)
print(element[0])
element.addElement(5)
element.addElement(3)
element.addElement(2)
element.addElement(4)
element.addElement(6)
element.addElement(1)
element.addElement(8)
element.addElement(7)
element.addElement(9)

//2. Добавил методы высшего порядка
let a = element.array.filter { element in
    return element % 2 == 0
}
print(a)
element.array.sort{$0 < $1}
print(element)

let b = element.array.filter { element in
    return element % 2 != 0
}
print(b)
