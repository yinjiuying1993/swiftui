//
//  AppDelegate.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        KeyWindow.shared.initRootView()
        return true
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("即将进入前台....")
        KeyWindow.shared.loadLaunchView()
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("即将进入后台....")
        LaunchViewManager.setLaunchViewImageUrl()
    }
   
}

