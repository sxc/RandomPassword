//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Shen Xiaochun on 15/5/6.
//  Copyright (c) 2015年 Sigutian. All rights reserved.
//

import Foundation

private let characters = Array("0123456789abcdefghijklmonopqrestuvwxyzABCDEFGHIJKLMNOPQRESTUVWXYZ")

func generateRandomString(length: Int) -> String {
    // Start with an empty string
    var string = ""
    
    // Append 'lengh' number of random characters 
    for index in 0..<length {
        string.append(generateRandomCharacter())
    }
    
    return string
}
    
func generateRandomCharacter() -> Character {
    // Create a random index in to the characters array
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    
    // get and return a random character
    let character = characters[index]
    return character
}


