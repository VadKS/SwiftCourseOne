//
//  main.swift
//  CourseOne
//
//  Created by Vadym Kovalenko on 18.10.2021.
//

import Foundation

//Домашнее задание №2
//1. Написать функцию, которая определяет, четное число или нет.

let number: Int = 7
if number % 2 > 0 {
    print ("Число \(number) не четное")
} else {
    print ("Число \(number) четное")
}

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

let newNumber: Int = 21
if newNumber % 3 > 0 {
    print ("Число \(newNumber) не делится на 3 без остатка")
} else {
    print ("Число \(newNumber) делится на 3 без остатка")
}

//3. Создать возрастающий массив из 100 чисел.

var myArray: [Int] = []
for risingNumbe in 0...100 {
    myArray.append(risingNumbe)
}
print(myArray)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for value in myArray {
    if value % 3 != 0 && value % 2 == 0 {
        myArray.remove(at: myArray.firstIndex(of: value)!) //не помню как привести myArray к Int (чтобы не ставить !)
    }
}
print(myArray)

//5. *Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов (подробности на странице урока).

// Пытался разобраться в примере с урока, поэтому вписал его сюда (но есть вопрос - он чуть ниже)
func fibonachi(n: Int) {
    var num1 = 0
    var num2 = 1
    
    for _ in 0 ..< n { // Если не сложно - расскажите на след. уроке - как тут работает знак "_"
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    
    print("Результат = \(num2)")
}
fibonachi(n: 50)

// Само решение задачи но по нему тоже есть вопросы.

class FibIterator: IteratorProtocol {
    var (a, b) = (0, 1)

    func next() -> Int? { // если можно - объясните что тут выполняется
        (a, b) = (b, a + b)
        return a
    }
}

let fibs = AnySequence {
    FibIterator()
}
print(Array(fibs.prefix(50)))

//6. *Заполнить массив из 100 элементов различными простыми числами (подробности на странице урока).

func prime(myArray: [Int]) -> [Int] {
    var primes: [Int] = []
    var newArray = myArray
    while let numeric = newArray.first {
        primes.append(numeric)
        newArray = newArray.filter {
            $0 % numeric != 0
        }
    }
    return primes
}
print(prime(myArray: Array(2...100)))
