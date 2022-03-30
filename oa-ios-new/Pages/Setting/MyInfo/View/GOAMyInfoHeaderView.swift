//
//  GOAMyInfoHeaderView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/30.
//

import SwiftUI

struct GOAMyInfoHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image("009").resizable().frame(width: 60, height: 60).clipShape(Circle()).padding(.leading,15)
                VStack {
                    HStack {
                        Text("胡歌").foregroundColor(Color.black).fontWeight(.bold)
                        Spacer()
                    }
                        //
                    HStack {
                        Image("geren_icon_q").resizable().frame(width: 20, height: 21, alignment: .center)
                        Text("绿地中心")
                        Spacer()
                    }.padding(.top,-10)
                    //
                    HStack {
                        Image("geren_icon_q").resizable().frame(width: 20, height: 21, alignment: .center)
                        Text("绿地中心")
                        Spacer()
                    }.padding(.top,-10)
                    //
                    HStack {
                        Image("geren_icon_q").resizable().frame(width: 20, height: 21, alignment: .center)
                        Text("绿地中心")
                        Spacer()
                    }.padding(.top,-10)
                }.padding().foregroundColor(Color.gray)
                Spacer()
            }
            Spacer().frame(
                width:kScreenWidth-65,
                height: 0.5, alignment: .center).background(Color.gray).padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8).frame(width:60, height: 60, alignment: .center).foregroundColor(Color.yellow)
                    VStack {
                        Text("试用期")
                        Text("员工状态")
                    }.foregroundColor(Color.white)
                    
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 8).frame(width:60, height: 60, alignment: .center).foregroundColor(Color.green)
                    VStack {
                        Text("正常")
                        Text("账号状态")
                    }.foregroundColor(Color.white)
                    
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 8).frame(width:60, height: 60, alignment: .center).foregroundColor(Color.blue)
                    VStack {
                        Text("司龄")
                        Text("2月")
                    }.foregroundColor(Color.white)
                    
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 8).frame(width:60, height: 60, alignment: .center).foregroundColor(Color.gray)
                   
                    
                }
            }.padding().font(Font.system(size: 13))
            
        }.background(Color.white).cornerRadius(8)
    }
}

struct GOAMyInfoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GOAMyInfoHeaderView()
    }
}
