//
//  PersonalCenterCell.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/21.
//

import SwiftUI

struct PersonalCenterCell: View {
    var title: String
    var iconName: String
    var body: some View {
        HStack {
            NavigationLink {
                if title == "关于GAEA-OA" {
                    GOAAbortUsView()
                }
                if title == "我的假期" {
                    GOAVacationView()
                }
            } label: {
                Image(iconName).resizable().frame(width: 20, height: 21, alignment: .center).padding(.leading,20)
                Text(title).padding().foregroundColor(.black)
                Spacer()
                Image("geren_fh_h").resizable().frame(width: 8, height: 15, alignment: .center).padding(.trailing,20)
            }

            
        }.background(Color.white)
    }
}

struct PersonalCenterCell_Previews: PreviewProvider {
    static var previews: some View {
        PersonalCenterCell(title: "我到假期", iconName: "grzx_jq_s")
    }
}
