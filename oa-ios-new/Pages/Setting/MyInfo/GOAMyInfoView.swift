//
//  GOAMyInfoView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/30.
//

import SwiftUI

struct GOAMyInfoView: View {
    var body: some View {
      let mainView =  VStack {
            List{
                Section(header: GOAMyInfoHeaderView()) {
                    ForEach(baseInfo) {item in
                        GOAMyInfoCellView(model: item)
                    }
                }
            }.listStyle(.insetGrouped).background(Color.white)
            Spacer()
        }
        
        return BaseNavigationBarView(content: mainView, barTitle: "个人资料")
    }
}

struct GOAMyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        GOAMyInfoView()
    }
}
