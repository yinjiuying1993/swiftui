//
//  UrlConfig.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/16.
//

import Foundation
enum GOAHost:String {
    case test = "http://oav2-api.gaeamobile-inc.net"
    case production = "https://oa2.gaeamobile-inc.net"
}
//环境变量
let kEnv = GOAHost.production
//
func GOALog(log:Any)  {
    switch kEnv {
    case .test:
        print(log)
    case .production:
        return 
    }
}
//URL路径
let kLaunchImageUrlStr = "/mobile/get-start-img"
let kPayOneSalaryUrlStr = "/mobile/pass-login"

