//
//  AbstractCarFactory.swift
//  Created 5/8/20
//  Using Swift 5.0
// 
//  Copyright © 2020 yu. All rights reserved.
//
//  https://github.com/1985wasagoodyear
//

import Foundation

/*
 "Provide an interface for creating families of related or dependent objects without specifying their concrete classes."
 
 In other words, it can make several related-things.
 Here, it can make many different types of `Cars`.
 */

class AbstractCarFactory {
    
    var parts: [CarPart] = []
    
    func makeFord() -> Car {
        return Ford(parts: parts)
    }
    
    func makeTesla() -> Car {
        return Tesla(parts: parts)
    }
}
