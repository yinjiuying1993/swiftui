//
//  BaseTabBarController.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/22.
//

import UIKit

class BaseTabBarController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor = .white
        setAppearance()
        self.delegate = self
    }
    

    func setAppearance() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.gray.cgColor
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if(viewController.title == "发现"){
            print("发现两个新国家...")
        }
        
        return true
    }
    
    
}
