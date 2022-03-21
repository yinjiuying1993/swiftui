//
//  NetworkManager.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/23.
//

import UIKit
import Moya
import SwiftyJSON

let BaseNetProvider = MoyaProvider<BaseNetApi>()

class NetworkManager: NSObject {
    
    static let shared = NetworkManager()
    
    func request(
        _ target:BaseNetApi,
        showLoading: Bool = true,
        success successCallback: @escaping (JSON) -> Void,
        error errorCallback:@escaping (Int?) -> Void,
        failure failureCallback:@escaping (MoyaError) -> Void
    )  {
        if(showLoading) {
            BaseToast.showLoading()
        }
        
        BaseNetProvider.request(target) { result in
            //
            if(showLoading){
                BaseToast.hideLoading()
            }
            //
            switch result {
            case let .success(response):
                let json = try? JSON(data: response.data)
                
                guard let resData = json  else {
                    return
                }
                
                if resData["retCode"] == 0 {
                    successCallback(resData["data"])
                }else {
                    errorCallback(resData["retCode"].int)
                   
                    guard let msg = resData["retCn"].string else {
                        return
                    }
                    BaseToast.showToast(title: msg)
                }
                break
            case let .failure(error):
                    failureCallback(error)
                BaseToast.showToast(title: "网络异常,请稍后重试~")
                break
            }
        }
    }
    
}
