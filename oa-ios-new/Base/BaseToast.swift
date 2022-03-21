//
//  BaseToos.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/25.
//

import UIKit
import NVActivityIndicatorView
import Toast_Swift
class BaseToast: NSObject {
    static let window = KeyWindow.shared
    static var hud = NVActivityIndicatorView(frame: .zero, type: .audioEqualizer, color: .orange, padding: 30)
    
    static func showToast(title:String,duration:TimeInterval = 2) {
        window.makeToast(title,duration: duration,position: .bottom)
    }
    static func showLoading() {
        if(hud.isAnimating) {
            return
        }
        window.addSubview(hud)
        hud.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.width.height.equalTo(90)
        }
        hud.startAnimating()
    }
    
    static func hideLoading() {
        hud.stopAnimating()
    }

}
