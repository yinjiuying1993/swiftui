//
//  GOAPersonalCenterView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/21.
//

import SwiftUI

struct GOAPersonalCenterView: View {
    var body: some View {
      let mainView =  VStack {
            NavigationLink {
                GOAMyInfoView()
            } label: {
                PersonalCenterHeaderView().foregroundColor(Color.black)
            }

            ForEach(pcRows){ item in
                PersonalCenterCell(title: item.title, iconName: item.iconName)
            }
            Button {
                
            } label: {
                Spacer()
                Text("退出登录")
                Spacer()
            }.foregroundColor(Color.red).frame(height: 44, alignment: .center).background(Color.white)

            Spacer()
        }
        
      return BaseNavigationBarView(content: mainView, barTitle: "个人中心")
    }
}

struct GOAPersonalCenterView_Previews: PreviewProvider {
    static var previews: some View {
        GOAPersonalCenterView()
    }
}
