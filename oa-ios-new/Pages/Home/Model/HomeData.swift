//
//  HomeData.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/18.
//

import Foundation
class HomeData:ObservableObject {
    @Published var data:[HomeItemModel]
    @Published var otherData:[HomeItemModel]
    init(){
        data = [
            HomeItemModel( title: "待我审批", imageUrl: "home_icon_dwsp", type: 1),
            HomeItemModel(title: "考勤管理", imageUrl: "home_icon_kqgl", type: 2),
            HomeItemModel(title: "发起的流程", imageUrl: "home_icon_fqlc", type: 3),
            HomeItemModel(title: "请假", imageUrl: "home_icon_qj", type: 4),
            HomeItemModel(title: "加班", imageUrl: "home_icon_jb", type: 1),
            HomeItemModel(title: "资讯", imageUrl: "home_icon_zx", type: 2),
            HomeItemModel(title: "打卡", imageUrl: "dk_ls", type: 3),
            HomeItemModel(title: "薪人薪事", imageUrl: "xinrenxinshi", type: 4),
        ]
        otherData = [
            HomeItemModel(title: "意见箱", imageUrl: "home_icon_dwsp", type: 1),
            HomeItemModel(title: "盖娅汇", imageUrl: "home_icon_kqgl", type: 2),
            HomeItemModel(title: "", imageUrl: "", type: 2),
            HomeItemModel(title: "", imageUrl: "", type: 2),
        ]
    }
}
