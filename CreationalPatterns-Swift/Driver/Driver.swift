//
//  Driver.swift
//  Created 5/8/20
//  Using Swift 5.0
//
//  Copyright © 2020 yu. All rights reserved.
//
//  https://github.com/1985wasagoodyear
//

import Foundation

class Driver {
    
    private let abstractFactory = AbstractCarFactory()
    private let builder = CarBuilder()
    private var factoryMethod: CarFactoryMethod {
        random ? FordFactory() : TeslaFactory()
    }
    
    // helper
    private var random: Bool {
        let int = Int.random(in: 0...1)
        return (int == 0) ? true : false
    }
    
    // main method for driver
    func makeCar(option: CreationOption) -> Car {
        switch option {
        case .abstractFactory:
            return makeCar(with: abstractFactory)
        case .builder:
            return makeCar(with: builder)
        case .factoryMethod:
            return makeCar(with: factoryMethod)
        }
    }
    
    // randomly chooses a type of `Car` for the factory to make
    private func makeCar(with factory: AbstractCarFactory) -> Car {
        if random {
            return abstractFactory.makeFord()
        }
        return abstractFactory.makeTesla()
    }
    
    // randomly decides if part(s) should be added
    private func makeCar(with factory: CarBuilder) -> Car {
        defer { builder.parts.removeAll(keepingCapacity: true) }
        if random {
            builder.add(part: CarPart())
        }
        return builder.build()
    }
    
    // builds with a random factory
    private func makeCar(with factory: CarFactoryMethod) -> Car {
        return factoryMethod.makeCar()
    }
    
}



