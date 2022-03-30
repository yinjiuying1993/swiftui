//
//  GOAMyInfoView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/30.
//

import SwiftUI

struct GOAMyInfoCellView: View {
    var model:GOAMyInfoCellModel
    var body: some View {
        HStack {
            Text("\(model.title):").frame(width: 100, alignment: .leading).foregroundColor(Color.gray)
            Text(model.value)
            Spacer()
        }.font(.system(size: 13))
    }
}

struct GOAMyInfoCellView_Previews: PreviewProvider {
    static var previews: some View {
        GOAMyInfoCellView(model: GOAMyInfoCellModel(title: "邮箱", value: "111@QQ.com"))
    }
}
