//
//  main.swift
//  CourseOne
//
//  Created by Vadym Kovalenko on 18.10.2021.
//

import Foundation

//ДЗ № 3
//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

struct Car {
    let carModel: String
    let trunkVolume: UInt
    let engineStatus: String
    let windowsStatus: String
    let yearOfCarProduction: Int
    let trunkVolumeFree: Int
}

let sportCar = Car(carModel: "Ferrari", trunkVolume: 50, engineStatus: "on", windowsStatus: "down", yearOfCarProduction: 2021, trunkVolumeFree: 50)
let truckCar = Car(carModel: "MAN", trunkVolume: 3500, engineStatus: "off", windowsStatus: "up", yearOfCarProduction: 2010, trunkVolumeFree: 1000)
let sedanCar = Car(carModel: "Opel", trunkVolume: 375, engineStatus: "off", windowsStatus: "up", yearOfCarProduction: 2018, trunkVolumeFree: 300)
let wagonCar = Car(carModel: "BMW", trunkVolume: 480, engineStatus: "on", windowsStatus: "down", yearOfCarProduction: 2005, trunkVolumeFree: 30)

print("объем багажника грузовика \(truckCar.trunkVolume) литров")

var volumeOfCargo: UInt = 2000
var previosuVolumeOfCargo = truckCar.trunkVolume
var freeVolumeOfCargo = previosuVolumeOfCargo - volumeOfCargo
if freeVolumeOfCargo <= 3500 {
    print("Осталось \(freeVolumeOfCargo) литров свободного объема кузова")
} else {
    print("Превышен допустипый объем груза")
}
// ВЖОПУ ЭТОТ guard!!! Так и не пообедил его... крутил-крутил... в итоге все закомитил и забыл!!!
// буду разбираться позже! Но так и не обезопасил код от краша (при превышении объема груза) =(

//funk var freeVolumeOfCargo = previosuVolumeOfCargo - volumeOfCargo {
//print(freeVolumeOfCargo: freeVolumeOfCargo) {
//    switch freeVolumeOfCargo {
//case volumeOfCargo:
//        guard freeVolumeOfCargo >= 0 else { return }
//        print("Превышен допустимый объем груза")
//}

//guard case freeVolumeOfCargo >= 0 else { print("Превышен допустимый объем груза")}
//print("Свободный объем кузова \(freeVolumeOfCargo) литров")

struct windowsStatusChange {
    var windowsStatus: String {
        willSet {
            print("сейчас окна \(newValue)")
        }
        didSet {
            print("теперь окна \(oldValue)")
        }
    }
}

var newWindowStatus = windowsStatusChange(windowsStatus: "up")
newWindowStatus.windowsStatus = "down"

if wagonCar.engineStatus == "on" {
    print("Двигатель сейчас включен")
} else {
    print("Двигатель заглушен")
}

    
