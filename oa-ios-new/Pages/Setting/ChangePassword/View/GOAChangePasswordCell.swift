//
//  GOAChangePasswordCell.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/31.
//

import SwiftUI

struct GOAChangePasswordCell: View {
    @Binding var model: GOAChangePasswordModel
    @State private var isShow = false
    
    var body: some View {
        HStack {
            Text(model.title)
            if(isShow){
                TextField(model.placehodler, text: $model.value)
            }else {
                SecureField(model.placehodler, text: $model.value)
            }
             
            let str = isShow ? "xgmma_kq_h":"xgmma_gb_h"
            Image(str).resizable().frame(width: 20, height: 7, alignment: .center).onTapGesture {
                isShow = !isShow
            }
        }.frame(height: 60)
    }
}

