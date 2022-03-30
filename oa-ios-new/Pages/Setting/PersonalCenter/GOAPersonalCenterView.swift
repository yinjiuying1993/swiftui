//
//  GOAPersonalCenterView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/21.
//

import SwiftUI

struct GOAPersonalCenterView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
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
        }.navigationBarTitle("个人中心").background(kDefaultBGColor).navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image("navigation_back").resizable().frame(width: 12, height: 19, alignment: .center)
        })).navigationBarBackButtonHidden(true)
      
    }
}

struct GOAPersonalCenterView_Previews: PreviewProvider {
    static var previews: some View {
        GOAPersonalCenterView()
    }
}
