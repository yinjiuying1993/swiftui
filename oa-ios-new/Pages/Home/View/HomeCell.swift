//
//  HomeCell.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/18.
//

import SwiftUI

struct HomeIetmView: View {
    var item: HomeItemModel
    var body: some View {
        VStack {
            Image(item.imageUrl).resizable().aspectRatio(contentMode: .fit).frame(width: 30)
            Text(item.title).font(Font.system(size: 12))
        }
    }
}

struct HomeCell: View {
    @ObservedObject var dataSource = HomeData()
     var columns = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible()),
                    GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            let items = dataSource.data
            ForEach(items) { item  in
                HomeIetmView(item: item)
            }
        }
    }
}

struct HomeCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeCell()
    }
}
