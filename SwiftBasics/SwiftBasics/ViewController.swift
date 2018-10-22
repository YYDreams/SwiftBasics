//
//  ViewController.swift
//  SwiftBasics
//
//  Created by flowerflower on 2018/10/16.
//  Copyright © 2018年 flowerflower. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()



    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        setupArrayAndDictDemo()
        
        optionalDemo()
        
        
        repeatDemo()
        
        
    }


}

//MARK: Array and Dict
extension ViewController{
    
    private func setupArrayAndDictDemo(){
        
        let emptyArray = [String]()
        let emptyDict = [String:Any]()
        
        
        print("emptyArray:\(emptyArray) emptyDict:\(emptyDict)")
        
        
        
    }
    
    
    
}

//MARK: --------------
extension ViewController{
    
    private func optionalDemo(){
 
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
            ]
        
        print("interestingNumbers:\(interestingNumbers)")

        var  largest = 0
        
        
        for (kind,numbers) in interestingNumbers {
            
            for number in numbers {
                
                if number > largest {
                    
                largest = number
                    
                }
            }
            print("kind:\(kind) numbers:\(numbers)")
        }
        print("largest:\(largest)")

    }
    
    
    
    private func repeatDemo(){
        
        var m = 2
        repeat {
            m = m * 2
            
            print("m:\(m)")

        } while m < 100
        
        print(m)
        
    }

    
    
    
    
}
