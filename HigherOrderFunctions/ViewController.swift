//
//  ViewController.swift
//  HigherOrderFunctions
//
//  Created by vamsi on 12/07/19.
//  Copyright © 2019 vamsi. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    var intArray = [1,2,10,20,50,4,6]
    var names = ["xyz","def","bhk","abc"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //       getSumOfEvenNumbers()
        
        //
        //
        
        //       map()
        //        sort()
//        filter()
        reduce()
    }
    
    func map(){
        // It will return new array after transforming
        print(intArray.map{$0 - 1})
        print(names.map{$0 + "map"})
        
        let result = names.map { (a) -> String in
            return a + "result"
        }
        print(result)
    }
    
    func sort(){
        // It will return new array after sorting
        
        //        print(intArray.sorted{$0 < $1})
        //        let sortedArray = intArray.sorted { (a, b) -> Bool in
        //                        print(a)
        //                        print(b)
        //                        print(a > b)
        //                        return a > b
        //                    }
        //        print(sortedArray)
        //        intArray.sorted()
        print(intArray)
    }
    
    func filter(){
        //returns new array after filtering
        
        let result = intArray.filter { (num) -> Bool in
            return num > 2
        }
        print(result)
    }
    
    func reduce(){
        //reduce array and returns single value
        let result = intArray.reduce(0, {$0 + $1})
        print(intArray.reduce(1, {$0 * $1}))
        print(result)
    }
    func getSumOfEvenNumbers(){
        let sum = intArray.filter{$0 % 2 == 0}.reduce(0, +)
        print(intArray)
        print(sum)
    }
    
    
}

