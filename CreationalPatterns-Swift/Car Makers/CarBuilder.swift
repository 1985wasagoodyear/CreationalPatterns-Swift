//
//  CarBuilder.swift
//  Created 5/8/20
//  Using Swift 5.0
// 
//  Copyright © 2020 yu. All rights reserved.
//
//  https://github.com/1985wasagoodyear
//

import Foundation

/*
 "Separate the construction of a complex object from its representation so that the same construction process cancreate different representations."
 
 It builds something bit-by-bit.
 You don't know what is made until you actually build it,
 based on what parts you've given it.
 */

class CarBuilder {
    var parts: [CarPart] = []
    
    func add(part: CarPart) {
        parts.append(part)
    }
    
    func build() -> Car {
        if parts.isEmpty {
            return Ford()
        }
        return Tesla(parts: parts)
    }
}
