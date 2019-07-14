//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Christoph Wottawa on 14.07.19.
//  Copyright © 2019 Christoph Wottawa. All rights reserved.
//

import Foundation

let numbers = [1, 4, 5, 7, 9, 10, 12, 13, 14, 17, 20, 24, 27, 28, 29, 40]

func linearSearch(for searchValue: Int, in array: [Int]) -> Bool {
    for num in array {
        if num == searchValue {
            return true
        }
    }
    return false
}

func binarySearch(for searchValue: Int, in array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let searchIndex = (leftIndex + rightIndex) / 2
        let foundValue = array[searchIndex]
        
        //debug print
        print("foundValue: \(foundValue) leftIndex: \(leftIndex) rightIndex: \(rightIndex), [\(array[leftIndex]), \(array[rightIndex])]")
        
        if foundValue == searchValue {
            return true
        }
        if searchValue < foundValue {
            rightIndex = searchIndex - 1
        }
        
        if searchValue > foundValue {
            leftIndex = searchIndex + 1
        }
    }
    
    return false
}
