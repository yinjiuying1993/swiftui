//
//  GOAVacationView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/28.
//

import SwiftUI

struct GOAVacationView: View {
    var body: some View {
     let mainView =   VStack {
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
        }
        return BaseNavigationBarView(content: mainView, barTitle: "我的假期")
    }
}

struct GOAVacationView_Previews: PreviewProvider {
    static var previews: some View {
        GOAVacationView()
    }
}
