//
//  GOANewsModel.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/4/6.
//

import Foundation

struct GOANewsModel:Hashable, Codable, Identifiable {
    var id = UUID()
    var imageUrl: String
    var name: String
    var title: String
    var date: String
}
