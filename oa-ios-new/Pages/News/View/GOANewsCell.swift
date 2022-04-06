//
//  GOANewsCell.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/4/6.
//

import SwiftUI

struct GOANewsCell: View {
    var mode: GOANewsModel
    var body: some View {
        HStack {
            Image(mode.imageUrl).resizable().frame(width: 50, height: 50, alignment: .center)
            VStack {
                HStack {
                    Text("申请人:").foregroundColor(.gray)
                    Text(mode.name).foregroundColor(.orange)
                    Spacer()
                    HStack {
                        Image("fksq_s_h").resizable().frame(width: 13, height: 13, alignment: .top)
                        Text(mode.date).font(.system(size: 13)).foregroundColor(.gray)
                    }
                }
                HStack {
                    Text("流程标题: ").foregroundColor(.gray)
                    Text(mode.title).font(.system(size: 14))
                    Spacer()
                }.padding(.top,5)
            }
            
        }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)).background(Color.white).font(.system(size: 13))
    }
}

struct GOANewsCell_Previews: PreviewProvider {
    static var previews: some View {
        GOANewsCell(mode: newsList[0])
    }
}
