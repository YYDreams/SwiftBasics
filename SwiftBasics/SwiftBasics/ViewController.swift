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


        loadData {
         print("被回调了")
        }
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(testDemo), name: NSNotification.Name("TestNotification"), object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(testDemo1), name: NSNotification.Name("Test1Notification"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(testDemo2), name: NSNotification.Name("Test2Notification"), object: nil)

    }
    
    
    func loadData(finished:()->())
    {
        print("执行耗时操作")
        
        finished()
    }
    
    
    
    deinit {
        
        print("deinitdeinitdeinit")

        NotificationCenter.default.removeObserver(self)
    }
    
}
    
extension ViewController {
        
        @objc func testDemo(){
            
            print("testDemotestDemo")
        }
    
    @objc func testDemo1(noti:Notification){
        
        
        guard let str = noti.object as? String else {
            return
        }
        
        print("noti \(str)")
    }
    @objc func testDemo2(noti:Notification){
        
        print("noti:\(noti.userInfo!)")

        let name = noti.userInfo!["name"] as!  String
        let age = noti.userInfo!["age"]  as! Int
        
        print("name:\(name)  age:\(age)")
    }
    
    @IBAction func btnOnClick() {
        
        
        let testVC = TestViewController()
         testVC.delegate = self
        
        testVC.testBlockCallBackDemo = { () ->Void in
            
            
            print("testBlockCallBackDemo")
        }
        
        
 
      
        
        navigationController?.pushViewController(testVC, animated: true)
        
        
        
        
    }
}

extension ViewController:TestViewControllerDelegate{

    
 
    func testDelegateDemo() {
        print("TestViewControllerDelegate: testDelegateDemo")
        
    }

    func testDelegateDemo1(name: String) {
        
        print("TestViewControllerDelegate: name\(name)")
    }
    func testDelegateDemo2(userInfo: [String : Any]) {
        
        print("TestViewControllerDelegate: userInfo\(userInfo)")
    }
    
}



