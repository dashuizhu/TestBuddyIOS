//
//  GuideViewController.swift
//  TestBuddy
//
//  Created by 朱江 on 2018/5/22.
//  Copyright © 2018年 zj. All rights reserved.
//

import Foundation
import UIKit

class GuideViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    
    
    private(set) lazy var allVC : [UIViewController] = {
        return [self.getViewControllerByStoryId("guidePage1"), self.getViewControllerByStoryId("guidePage2"), self.getViewControllerByStoryId("guidePage3")];
    }()
    
    override func viewDidLoad() {
        
        //数据源设置
        dataSource = self
        
        //设置首页
        if let firstVC = allVC.first {
            setViewControllers([firstVC] , direction: .forward, animated: true, completion: nil)
        }
        
    }
    
    func getViewControllerByStoryId(_ name : String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = allVC.index(of: viewController) else {
            return nil
        }
        let previousIndex = index - 1
        guard previousIndex >= 0 else {
            return nil
        }
        guard allVC.count > previousIndex else {
            return nil
        }
        return allVC[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = allVC.index(of: viewController) else {
            return nil
        }
        let afterIndex = index + 1
    
        guard allVC.count > afterIndex else {
            return nil
        }
        guard allVC.count != afterIndex  else {
            return nil
        }
        return allVC[afterIndex]
    }
    
}
