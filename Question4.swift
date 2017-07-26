//
//  Question4.swift
//  Makestagram
//
//  Created by Hank on 2017/7/26.
//  Copyright © 2017年 Hank. All rights reserved.
//

import Foundation
func combineAndSort(firstArr:[Int],secondArr:[Int]){
    var bigArray = firstArr+secondArr
    for firstNum in 0...bigArray.count-2{
        for secondNum in firstNum+1...bigArray.count-1{
            if bigArray[firstNum] > bigArray[secondNum]{
                let sample = bigArray[secondNum]
                bigArray[secondNum] = bigArray[firstNum]
                bigArray[firstNum] = sample
            }
        }
    }
    print(bigArray)
}

