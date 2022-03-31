//
//  GOAChangePasswordView.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/31.
//

import SwiftUI

struct GOAChangePasswordView: View {
    @State var rows = changePasswordRows
   
    var body: some View {
      let mainView =  VStack {
            List {
                Section(header: Text("请设定薪密码").frame(height: 40).foregroundColor(.black)) {
                    ForEach($rows) {item in
                        GOAChangePasswordCell(model: item)
                    }
                }
                
            }.listStyle(.plain).frame(height: 300)
            Text("注意：密码不少于6位，必须包含数字和大小写字母和一个特殊字符，不能与邮箱地址和前三次密码相同，特殊字符可包含($,@,#,!,%,*,?,&,.)").padding(EdgeInsets(top: -10, leading: 15, bottom: 0, trailing: 15)).foregroundColor(.red).font(.system(size: 13))
            Button {
                print("输入框的内容:\(rows)")
                
            } label: {
                Spacer()
                Text("确定").fontWeight(.bold)
                Spacer()
            }.foregroundColor(.white).frame(height: 50, alignment: .center).background(kDefaultThemeColor).padding()

            Spacer()
            
        }
        
        return BaseNavigationBarView(content: mainView, barTitle: "修改密码")
    }
}

struct GOAChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        GOAChangePasswordView()
    }
}
