//
//  Homework.swift
//  
//
//  Created by Hank on 2017/7/24.
//
//

import Foundation

func paidrome(string:String)->Bool{
    let characters = Array(string.characters)
    for i in 1...characters.count{
        guard characters[i-1] == characters[characters.count-i] else{
            return false
        }
    }
    return true
}

paidrome(string: "racecar")
