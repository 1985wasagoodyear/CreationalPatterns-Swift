//
//  CarFactoryMethod.swift
//  Created 5/8/20
//  Using Swift 5.0
// 
//  Copyright © 2020 yu. All rights reserved.
//
//  https://github.com/1985wasagoodyear
//

import Foundation

/*
 "Define an interface for creating an object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses."
 
 The subclass determines what type of object is made.
 In Swift, we can use factory method with a protocol defintion.
 */

protocol CarFactoryMethod {
    func makeCar() -> Car
}

struct FordFactory: CarFactoryMethod {
    func makeCar() -> Car {
        return Ford()
    }
}

struct TeslaFactory: CarFactoryMethod {
    func makeCar() -> Car {
        return Tesla()
    }
}
