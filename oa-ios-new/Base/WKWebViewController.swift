//
//  WKWebViewController.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/28.
//

import UIKit
import WebKit
import WebViewJavascriptBridge
import SwiftyJSON
class WKWebViewController: BaseViewController, UIGestureRecognizerDelegate {

    var isNavHidden:Bool = false
    var titleStr:String?
    var bridge:WebViewJavascriptBridge?
    //
    lazy var wkWebView:WKWebView = {
        let config = WKWebViewConfiguration()
        //设置请求的User-Agent信息中应用程序名称
        config.applicationNameForUserAgent = "gaea";
//        let userContent = WKUserContentController()
//        userContent.add(self, name: "alipay")
//
//        //
//        config.userContentController = userContent
        let webView = WKWebView(frame: UIScreen.main.bounds, configuration: config)
        let preferences = WKPreferences()
        preferences.javaScriptCanOpenWindowsAutomatically = true
        config.preferences = preferences
        webView.allowsBackForwardNavigationGestures = true
        webView.uiDelegate = self
        webView.navigationDelegate = self
        self.bridge = WebViewJavascriptBridge.init(webView)
        self.bridge?.setWebViewDelegate(self)
        return webView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.wkWebView)
        let item = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(customBack))
        self.navigationItem.leftBarButtonItem = item
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    @objc func customBack()  {
        if self.wkWebView.canGoBack {
            self.wkWebView.goBack()
        }else{
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func loadWebUrlStr(urlStr:String) {
        guard let url = URL(string: urlStr) else {
            return
        }
        let request = URLRequest(url: url)
        self.wkWebView.load(request)
    }
    func loadWebHtmlStr(htmlStr:String)  {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        wkWebView.navigationDelegate = nil
        wkWebView.uiDelegate = nil
        // wkWebView.configuration.userContentController.removeAllScriptMessageHandlers()
        super.viewWillDisappear(animated)
    }
    
    deinit {
        print("webview 被移除...")
    }
    
}

extension WKWebViewController:WKNavigationDelegate {
    
    //页面加载完成
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("页面加载完成...")
        self.title = webView.title
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("页面加载失败...")
    }

}



extension WKWebViewController:WKUIDelegate {
    
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
        let alert = UIAlertController(title: "提示", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "确定", style: .default, handler: { action in
            completionHandler()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func webView(_ webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (Bool) -> Void) {
        let alert = UIAlertController(title: "提示", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "确定", style: .default, handler: { action in
            completionHandler(true)
        }))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: { action in
            completionHandler(false)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

extension WKWebViewController:WKScriptMessageHandler {
    
    //注入js 与 原生方法 交互
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
    }
    
}
