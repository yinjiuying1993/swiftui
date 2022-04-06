//
//  HomeCell.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/18.
//

import SwiftUI

struct HomeItemHeaderView:View {
    var title:String
    var body: some View {
        HStack {
            Text(title).padding(.leading,20)
            Spacer()
        }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0)).background(Color.white)
    }
}

struct HomeIetmView: View {
    var item: HomeItemModel
    var body: some View {
        VStack {
            Image(item.imageUrl).resizable().aspectRatio(contentMode: .fit).frame(width: 30)
            Text(item.title).font(Font.system(size: 12))
        }.frame(width: (kScreenWidth + 6) / 4.0,height: kScreenWidth / 4.0 - 20 ).background(Color.white).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0)).background(Color.white)
    }
}

struct HomeCell: View {
    var dataSource:[HomeItemModel]
    var columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    var body: some View {
        VStack {
            Section(header: HomeItemHeaderView(title: "常用应用")) {
                LazyVGrid(columns: columns, spacing: 0.5) {
                    
                    ForEach(dataSource) { item  in
                        HomeIetmView(item: item)
                    }
                }.padding(EdgeInsets(top: 0.5, leading: 0, bottom: 0, trailing: 0)).background(Color.gray).padding(.top,-10)
                
            }
        }
       
    }
}

struct HomeCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeCell(dataSource:HomeData().data)
    }
}
