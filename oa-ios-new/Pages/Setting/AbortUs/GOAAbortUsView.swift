//
//  GOAAbortUsView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/28.
//

import SwiftUI

struct GOAAbortUsView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Image("llogin_logo_g").resizable().frame(width: 80, height: 102, alignment: .center).padding(EdgeInsets(top: 50, leading: 0, bottom: 80, trailing: 0))
            VStack {
                HStack {
                    Text("官方网址")
                    Spacer()
                    Text("https://www.gaea.com").foregroundColor(.gray)
                }.padding(.top,10).frame(height: 44)
                RoundedRectangle(cornerRadius: 0)
                    .frame( height: 1).foregroundColor(.gray).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("检查更新")
                    VStack {
                        Text("new").foregroundColor(.white).padding(EdgeInsets(top: 3, leading: 8, bottom: 5, trailing: 8)).background(Color.red).cornerRadius(20)
                        Spacer()
                    }.frame(height: 44)
                    Spacer()
                    Text("v1.0.8").foregroundColor(.gray)
                    Image("geren_fh_h").resizable().frame(width: 8, height: 15, alignment: .center)
                }.padding(.bottom,10)
            }.padding().background(Color.white)
            Spacer()
        }.frame(width: kScreenWidth).background(kDefaultBGColor).navigationBarTitle(Text("关于")).navigationBarBackButtonHidden(true).navigationBarBackButtonHidden(true).navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image("navigation_back").resizable().frame(width: 12, height: 19, alignment: .center)
        }))
    }
}

struct GOAAbortUsView_Previews: PreviewProvider {
    static var previews: some View {
        GOAAbortUsView()
    }
}
