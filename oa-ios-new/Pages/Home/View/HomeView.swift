//
//  HomeView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/17.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HomeHeaderView()
                HomeCell(dataSource: HomeData().data)
                HomeCell(dataSource: HomeData().otherData)
                Spacer()
                
            }.background(kDefaultBGColor).navigationBarTitle("OA",displayMode: .inline).navigationBarItems(leading: Button(action: {
                
            }, label: {
                Image("home_icon_xiaoxi").resizable()
            }), trailing: HStack{
                //
                Button {
                    
                } label: {
                    Image("sys").resizable().frame(width: 20, height: 20, alignment: .center)
                }
                
                NavigationLink {
                    GOAPersonalCenterView()
                } label: {
                    Image("home_icon_wode").resizable().frame(width: 24, height: 24, alignment: .center)
                }
                
            }).ignoresSafeArea(.all, edges:.bottom)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
