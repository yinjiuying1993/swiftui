//
//  GOAMyInfoView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/30.
//

import SwiftUI

struct GOAMyInfoView: View {
    var body: some View {
        VStack {
            List{
                Section(header: GOAMyInfoHeaderView()) {
                    ForEach(baseInfo) {item in
                        GOAMyInfoCellView(model: item)
                    }
                }
            }.listStyle(.insetGrouped).background(Color.white)
            Spacer()
        }.background(kDefaultBGColor).navigationTitle("个人资料").padding(.top,-10)
    }
}

struct GOAMyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        GOAMyInfoView()
    }
}
