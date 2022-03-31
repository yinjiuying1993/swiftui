//
//  BaseNavigationBarView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/31.
//

import SwiftUI

struct BaseNavigationBarView<Content:View>: View {
    var content: Content
    var barTitle:String
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        content.navigationBarTitle(barTitle).navigationBarBackButtonHidden(true).navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image("navigation_back").resizable().frame(width: 12, height: 19, alignment: .center)
        })).background(kDefaultBGColor)
    }
}


