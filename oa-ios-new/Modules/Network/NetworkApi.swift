//
//  NetworkApi.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/16.
//

import Foundation
import Moya
let kGOARequestSecretKey = "gaeamobile"
public enum BaseNetApi {
    case launchImageUrl(params:[String:Any]?)
    case payOneSalaryUrl(params:[String:Any]?)
    case homeBannerUrls
}
extension BaseNetApi: TargetType {
    public var baseURL: URL {
        return URL(string: kEnv.rawValue)!
    }
    
    public var sampleData: Data {
        return "{}".data(using: .utf8)!
    }
    
    public var headers: [String : String]? {
        return nil
    }
    
    public var path: String {
        switch self {
        case .launchImageUrl:
            return kLaunchImageUrlStr
        case .payOneSalaryUrl:
            return kPayOneSalaryUrlStr
        default:
            return ""
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .payOneSalaryUrl:
            return .post
        default:
            return .get
        }
    }
    
    public var task: Task {
        switch self {
        case .launchImageUrl:
            return initTask(params: nil)
        case .payOneSalaryUrl(let params):
           return initTask(params: params,signature: true)
        default:
            return .requestPlain
        }
    }
    
    func initTask(params:[String:Any]?,signature:Bool = false) -> Task {
        let defaultParams = params ?? ["":""]
        let finalParams = signature ? signatureParams(params: defaultParams): defaultParams
        
        return .requestParameters(parameters:  finalParams, encoding: URLEncoding.default)
    }
    
    func signatureParams(params:[String:Any]) -> [String:Any] {
        var signParams = params
        let keyArray = params.keys.sorted()
        var signStr = ""
        for key in keyArray {
            if key != "sign", let obj = params[key] {
                signStr += "\(key)=\(String(describing: obj))&"
            }
        }
        signStr += "key=\(kGOARequestSecretKey)"
        signParams["sign"] = signStr.md5
        return signParams
    }
    
   
    
}
