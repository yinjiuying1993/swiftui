//
//  BaseViewController.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/22.
//

import UIKit
import ESPullToRefresh
class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
    }
    
    
}

extension BaseViewController {
    var header: ESRefreshHeaderAnimator {
            get {
                let h = ESRefreshHeaderAnimator.init(frame: CGRect.zero)
                h.pullToRefreshDescription = "下拉刷新"
                h.releaseToRefreshDescription = "松开获取最新数据"
                h.loadingDescription = "下拉刷新..."
                return h
            }
        }
    
    var footer: ESRefreshFooterAnimator {
            get {
                let f = ESRefreshFooterAnimator.init(frame: CGRect.zero)
                f.loadingMoreDescription = "上拉加载更多"
                f.noMoreDataDescription = "数据已加载完"
                f.loadingDescription = "加载更多..."
                return f
            }
        }
}
