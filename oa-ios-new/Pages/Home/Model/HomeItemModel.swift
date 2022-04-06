//
//  HomeItemModel.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/18.
//

import Foundation
struct HomeItemModel:Hashable, Codable, Identifiable {
    var id = UUID()
    var title: String
    var imageUrl: String
    var type: Int
}
