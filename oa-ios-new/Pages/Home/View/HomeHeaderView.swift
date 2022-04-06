//
//  HomeHeaderView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/4/1.
//

import SwiftUI
import Kingfisher
struct HomeHeaderView: View {
    var body: some View {
        ZStack {
            KFImage(URL(string: "https://oa2.gaeamobile-inc.net/posts/image?url=20220308/c76ad4390bffd64c443ad45d19e615d7.png")!).resizable().frame( height: 180, alignment: .center)
            VStack {
                Spacer()
                HStack {
                    Text("OA使用说明").padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 0)).foregroundColor(Color.white)
                    Spacer()
                }.background(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.2))
                
            }
        }.frame( height: 180)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
