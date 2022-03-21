//
//  KeyWindow.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/23.
//

import UIKit
import SnapKit
import Kingfisher
class KeyWindow: UIWindow {
    static let shared = KeyWindow(frame: UIScreen.main.bounds)
    lazy var launchView:UIView = {
        let launchView = UIView(frame: self.bounds)
        //
        let bgImageView = UIImageView(frame: self.bounds)
        launchView.addSubview(bgImageView)
        bgImageView.isUserInteractionEnabled = true
        bgImageView.kf.setImage(with:self.imageUrl)
        bgImageView.contentMode = .scaleAspectFill
        //
        let jumpBtn = UIButton(type: .custom)
        bgImageView.addSubview(jumpBtn)
        jumpBtn.setTitle("跳过", for: .normal)
        jumpBtn.setTitleColor(.white, for: .normal)
        jumpBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        jumpBtn.addTarget(self, action: #selector(jumpEvent), for: .touchUpInside)
        //
        jumpBtn.layer.cornerRadius = 25
        jumpBtn.clipsToBounds = true
        jumpBtn.layer.borderColor = UIColor.white.cgColor
        jumpBtn.layer.borderWidth = 1
        
        jumpBtn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-30)
            make.height.width.equalTo(50)
        }
        return launchView
    }()
    var imageUrl: URL?
    
    func initRootView (){
        let window = KeyWindow.shared
        //
        let rootView = GOAHomeViewController()
        window.rootViewController = rootView
        window.makeKeyAndVisible()
        //
        loadLaunchView()
        //
    }
    
    func loadLaunchView (){
        //获取本地的url
        imageUrl =  LaunchViewManager.getLaunchViewImageUrl() ?? nil
        if (imageUrl != nil) {
            creatLaunchView()
        }else {
            LaunchViewManager.setLaunchViewImageUrl()
        }
    }
    
    func creatLaunchView(){
        self.addSubview(self.launchView)
    }
    
    @objc func jumpEvent() {
        launchView.removeFromSuperview()
    }

}
