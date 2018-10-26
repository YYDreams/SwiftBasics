//
//  TestViewController.swift
//  SwiftBasics
//
//  Created by flowerflower on 2018/10/26.
//  Copyright © 2018年 flowerflower. All rights reserved.
//

import UIKit


/**
 
 注意 如果是可选实现的方法 则 protocol TestViewControllerDelegate:NSObjectProtocol 前要加上@objc
 如果没有则前面可不加@objc
 
 如果必须实现的方法没有实现的话 会报错 xcode会自动补全没有实现的方法

 */
 @objc protocol TestViewControllerDelegate:NSObjectProtocol {
 
    // 必须实现
    func testDelegateDemo()

    func testDelegateDemo1(name: String)
 
    //可选
    @objc optional func testDelegateDemo2(userInfo: [String : Any])

    
}


typealias TestBlockCallBackDemo = () -> Void
typealias TestBlockCallBackDemo1 = (name:String) -> Void
typealias TestBlockCallBackDemo2 = ([String: Any]) -> Void

class TestViewController: UIViewController {
    
    var testBlockCallBackDemo : TestBlockCallBackDemo?
    
    var testBlockCallBackDemo1: TestBlockCallBackDemo1?
    
    var testBlockCallBackDemo2 : TestBlockCallBackDemo2?
    
    
    var delegate: TestViewControllerDelegate?
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     view.backgroundColor = UIColor.red
        
        
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
  
        let name = "flowerflower"
        let age = 18
        let userInfo = ["name": name,"age":age] as [String : Any]
        if  self.testBlockCallBackDemo != nil {
            
            self.testBlockCallBackDemo!()
            
        }
        if self.testBlockCallBackDemo1 != nil {
        self.testBlockCallBackDemo1!(name)
            
        }
        
        if self.testBlockCallBackDemo2 != nil {
            self.testBlockCallBackDemo2!(userInfo)
        }

        delegate?.testDelegateDemo()
        delegate?.testDelegateDemo1(name: name)
        delegate?.testDelegateDemo2?(userInfo: userInfo)

        NotificationCenter.default.post(name: NSNotification.Name("TestNotification"), object: nil)

        NotificationCenter.default.post(name: NSNotification.Name("Test1Notification"), object: name)

        NotificationCenter.default.post(name: NSNotification.Name("Test2Notification"), object: nil, userInfo: userInfo)
        
        navigationController?.popViewController(animated: true)
    }


}
