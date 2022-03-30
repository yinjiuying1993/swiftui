//
//  GOAVacationView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/28.
//

import SwiftUI

struct GOAVacationView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("假期类型").foregroundColor(.white).font(.title3)
                Spacer()
                Spacer()
                Text("假期结余").foregroundColor(.white).font(.title3)
                Spacer()
            }.frame(height: 50).background(kDefaultHeadBGColor)
            List(vacationRows) {item  in
                GOAVacationCell(model: item)
            }.frame(width: kScreenWidth).listStyle(PlainListStyle())
            Spacer()
        }.background(kDefaultBGColor).navigationTitle(Text("我的假期")).navigationBarBackButtonHidden(true).navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image("navigation_back").resizable().frame(width: 12, height: 19, alignment: .center)
        }))
    }
}

struct GOAVacationView_Previews: PreviewProvider {
    static var previews: some View {
        GOAVacationView()
    }
}
