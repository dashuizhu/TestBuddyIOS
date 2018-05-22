//
//  GuidePage3ViewController.swift
//  TestBuddy
//
//  Created by 朱江 on 2018/5/22.
//  Copyright © 2018年 zj. All rights reserved.
//

import Foundation
import UIKit

class GuidePage3ViewController: UIViewController {
    @IBAction func btnSkip(sender: AnyObject) {
        //let loginNagivationVC = UIStoryboard(name: "Main",bundle:nil).instantiateViewController(withIdentifier: String);
//        (withIdentifier:  "loginVC");
        let loginController = LoginViewController()
        self.present(loginController, animated: false, completion: nil)
        self.dismiss(animated: false, completion: nil)
    }
}
