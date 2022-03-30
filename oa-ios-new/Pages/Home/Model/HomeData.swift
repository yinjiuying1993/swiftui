//
//  HomeData.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/18.
//

import Foundation
class HomeData:ObservableObject {
    @Published var data:[HomeItemModel]
    init(){
        data = [
            HomeItemModel(id: 1, title: "待我审批", imageUrl: "home_icon_dwsp", type: 1),
            HomeItemModel(id: 2,title: "考勤管理", imageUrl: "home_icon_kqgl", type: 2),
            HomeItemModel(id: 3,title: "发起的流程", imageUrl: "home_icon_fqlc", type: 3),
            HomeItemModel(id: 4,title: "请假", imageUrl: "home_icon_qj", type: 4),
            HomeItemModel(id: 5, title: "加班", imageUrl: "home_icon_jb", type: 1),
            HomeItemModel(id: 6,title: "资讯", imageUrl: "home_icon_zx", type: 2),
            HomeItemModel(id: 7,title: "打卡", imageUrl: "dk_ls", type: 3),
            HomeItemModel(id: 8,title: "薪人薪事", imageUrl: "xinrenxinshi", type: 4),
        ]
    }
}
