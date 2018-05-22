//
//  LogoViewController.swift
//  TestBuddy
//
//  Created by 朱江 on 2018/5/22.
//  Copyright © 2018年 zj. All rights reserved.
//

import Foundation
import UIKit

class LogoViewController : UIViewController {
    
    override func viewDidLoad() {
        let  thread1 : Thread = Thread{
            //当前时间的时间戳
            var now : Date = Date()
            var timeInterval:TimeInterval = now.timeIntervalSince1970
            var timeStamp = Int(timeInterval)
            print("时间\(timeStamp)")
            Thread.sleep(forTimeInterval: 1)
            
            now = Date()
            timeInterval = now.timeIntervalSince1970
            timeStamp = Int(timeInterval)
            print("时间2 \(timeStamp)")
            
            let userDefault = UserDefaults()
//            if (userDefault.dictionary(forKey: "isFirst") != nil) {
                //不存在key， 就跳转引导页
                //let vc = GuideViewController()
                //self.present(vc, animated: true, completion: nil)
//                userDefault.set(false, forKey: "isFirst")
//            } else {
                let vc = LoginNavigation()
                self.navigationController?.pushViewController(vc, animated: false)
//            }
//            self.dismiss(animated: false, completion: nil)
            
        }
        thread1.start()
    }
    
   
    
    
}
