//
//  TestViewController.swift
//  SwiftBasics
//
//  Created by flowerflower on 2018/10/26.
//  Copyright © 2018年 flowerflower. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
view.backgroundColor = UIColor.red
        
        
    }
    func loadData(finished:()->())
    {
        print("执行耗时操作")
        
        finished()
    }
    
    //    class  func loadStatusFromNetwork(findished:@escaping ( _ result:[[String :AnyObject]]? ,_ error: Error?)->()){


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
   
      
        let name = "flowerflower"
        let age = 18
        let userInfo = ["name": name,"age":age] as [String : Any]

     
        

        NotificationCenter.default.post(name: NSNotification.Name("TestNotification"), object: nil)

        NotificationCenter.default.post(name: NSNotification.Name("Test1Notification"), object: name)

        NotificationCenter.default.post(name: NSNotification.Name("Test2Notification"), object: nil, userInfo: userInfo)
        
        navigationController?.popViewController(animated: true)
    }


}
