//
//  GOAChangePasswordModel.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/31.
//

import Foundation

struct GOAChangePasswordModel:Identifiable,Hashable {
    var id = UUID()
    var title: String
    var value: String
    var placehodler: String
}
