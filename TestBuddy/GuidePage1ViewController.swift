//
//  GuidePage1ViewController.swift
//  TestBuddy
//
//  Created by 朱江 on 2018/5/22.
//  Copyright © 2018年 zj. All rights reserved.
//

import Foundation
import UIKit

class GuidePage1ViewController : UIViewController {
    
    @IBAction func btnSkip(sender: AnyObject) {
        let loginController = LoginViewController()
        self.present(loginController, animated: false, completion: nil)
        self.dismiss(animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        
    }
    
}
