//
//  GOAHomeViewController.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/16.
//

import UIKit
import SwiftUI
class GOAHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
            
        NetworkManager.shared.request(.payOneSalaryUrl(params: ["password":"GYbj001713.","username":"jiuying.yin"])) { res in
            print("登录信息:\(res)")
        } error: { errorCode in
            
        } failure: { fail in
            
        }
        
        //
        let hView = HomeView().onAppear {
            let app = UINavigationBarAppearance()
            app.configureWithOpaqueBackground()
            app.backgroundColor = .systemGray6
            
            let attrs:[NSAttributedString.Key : Any] = [.foregroundColor:UIColor.black]
            app.titleTextAttributes = attrs
            UINavigationBar.appearance().scrollEdgeAppearance = app
            UINavigationBar.appearance().barTintColor = .white
        }
        let hVC = UIHostingController(rootView: hView)
        self.addChild(hVC)
        self.view.addSubview(hVC.view)
        hVC.view.frame = UIScreen.main.bounds
    
    }
    
 
}
