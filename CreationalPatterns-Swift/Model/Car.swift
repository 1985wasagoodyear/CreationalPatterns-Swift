//
//  Car.swift
//  Created 5/8/20
//  Using Swift 5.0
// 
//  Copyright © 2020 yu. All rights reserved.
//
//  https://github.com/1985wasagoodyear
//

import Foundation

// Car definition

protocol Car: CustomStringConvertible {
    var name: String { get }
    var parts: [CarPart] { get }
}

extension Car {
    var description: String {
        """
        Name: \(name)
        Parts count: \(parts.count)
        """
    }
}

// Actual types of cars we can make

struct Tesla: Car {
    let name = "Tesla"
    var parts: [CarPart] = []
}

struct Ford: Car {
    let name = "Ford"
    var parts: [CarPart] = []
}
