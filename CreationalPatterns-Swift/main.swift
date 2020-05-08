//
//  main.swift
//  Created 5/8/20
//  Using Swift 5.0
// 
//  Copyright © 2020 yu. All rights reserved.
//
//  https://github.com/1985wasagoodyear
//

import Foundation

let driver = Driver()

func validInput() -> CreationOption? {
    guard let line = readLine(),
        let input = Int(line) else {
            return nil
    }
    return CreationOption(rawValue: input)
}

print("------------------------------------")
print("Welcome to Creational Patterns - Swift!")
print("Enter a valid number to try out a pattern!")
print("1 - Abstract Factory")
print("2 - Builder")
print("3 - Factory Method")
print("------------------------------------")
print(">", separator: "", terminator: "")

while let option = validInput() {
    let car = driver.makeCar(option: option)
    print("Was able to make car: \n\(car)\n")
    print(">", separator: "", terminator: "")
}

print("Invalid input.\nGoodbye!\n")
