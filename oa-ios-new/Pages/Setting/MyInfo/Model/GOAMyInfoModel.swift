//
//  GOAMyInfoModel.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/30.
//

import Foundation
struct GOAMyInfoCellModel:Identifiable,Hashable {
    var id = UUID()
    var title: String
    var value: String
}
