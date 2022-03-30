//
//  PersonalCenterHeaderView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/28.
//

import SwiftUI

struct PersonalCenterHeaderView: View {
    var body: some View {
        HStack{
            ZStack {
                Image("grzx_tx_mr").resizable().frame(width:60,height:60).clipShape(Circle())
                Image("grzx_tx_z").resizable().frame(width: 16, height: 13).padding(EdgeInsets(top: 39, leading: 39, bottom: 0, trailing: 0))
            }.padding(.leading,10)
            VStack {
                Text("姓名").padding(.bottom,5)
                Text("部门")
            }.padding(.leading,15)
            Spacer()
            Image("geren_fh_h").resizable().frame(width: 8, height: 15, alignment: .center).padding(.trailing,20)
        }.background(Color.white).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0)).background(Color.white)
    }
}

struct PersonalCenterHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalCenterHeaderView()
    }
}
