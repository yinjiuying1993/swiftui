//
//  LaunchViewManager.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/23.
//

import UIKit
import SwiftyJSON
class LaunchViewManager: NSObject {
    static let kLaunchViewImageUrl = "LaunchViewImageUrl"
    
    static func getLaunchViewImageUrl () -> URL? {
        guard let urlStr = UserDefaults.standard.string(forKey: kLaunchViewImageUrl) else { return nil}
        
       return URL(string: urlStr) ?? nil
    }
    static func setLaunchViewImageUrl() {
        
        NetworkManager.shared.request(.launchImageUrl(params: nil),showLoading: false) { res in
            
            let urlStr = res["img_url"].string
            UserDefaults.standard.set(urlStr, forKey: kLaunchViewImageUrl)
            UserDefaults.standard.synchronize()
            
        } error: { error in
            
        } failure: { fail in
            
        }
    }
 
}
