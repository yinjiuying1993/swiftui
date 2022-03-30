//
//  GOAVacationCell.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/28.
//

import SwiftUI

struct GOAVacationCell: View {
    var model: GOAVacationCellModel
    var body: some View {
        HStack {
            Spacer()
            Text(model.title)
            Spacer()
            Spacer()
            Text(model.value)
            Spacer()
        }.frame(height: 44).background(Color.white)
    }
}

struct GOAVacationCell_Previews: PreviewProvider {
    static var previews: some View {
        GOAVacationCell(model: GOAVacationCellModel(title: "法定年假", value: "4.5"))
    }
}
