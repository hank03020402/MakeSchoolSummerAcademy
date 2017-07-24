//
//  Homework.swift
//  
//
//  Created by Hank on 2017/7/24.
//
//
import UIKit
import Foundation

func paidrome(string:String)->Bool{
    var count = 0
    let characters = Array(string.characters)
    for _ in characters{
        count = count+1
    }
    for i in 1...characters.count{
        guard characters[i-1] == characters[count-i] else{
            return false
        }
    }
    return true
}


paidrome(string: "racecar")
