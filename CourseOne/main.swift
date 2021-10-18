//
//  main.swift
//  CourseOne
//
//  Created by Vadym Kovalenko on 18.10.2021.


import Foundation

//Квадратное уровнение 2b - 4(ac)= d

let a: Float = 5
let b: Float = 16
let c: Float = 6
var x1: Float
var x2: Float
var d: Float
var discriminant: Float
d = b * b - (4 * a * c)
if d >= 0 {
    discriminant = sqrt(d)
    x1 = (-b + discriminant) / (2 * a)
    x2 = (-b - (discriminant)) / (2 * a)
print(x1, x2)
}
    else if d < 0 {
    d = ((4 * a * c) - pow(b,2)) / (2 * a)
print(d)
}

//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника

let leg1: Float = 5
let leg2: Float = 7
let leg3: Float
let AreaOfTriangl: Float
leg3 = sqrt(pow(leg1, 2) + pow(leg2, 2))
AreaOfTriangl = leg1 + leg2 + leg3
print("Гипотенуза равна \(leg3) см")
print("Площадь равна \(AreaOfTriangl) см")

// Вклад депозита на 5 лет

let summDep: Double = 250000
let percentsForYear: Double = 8
let monthsInYear: Double = 12
let numberOfYear: Double = 5
let totalNumberOfMonthes = monthsInYear * numberOfYear
let amountForMonth = (summDep * percentsForYear / monthsInYear) / 100
let totalAmount = amountForMonth * totalNumberOfMonthes + summDep
print("Через 5 лет Вы получите \(totalAmount) USD")

