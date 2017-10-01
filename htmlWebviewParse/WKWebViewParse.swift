//
//  WKWebViewParse.swift
//  htmlWebviewParse
//
//  Created by joe_mac on 09/21/2017.
//  Copyright © 2017 joe_mac. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewParse: UIViewController, WKUIDelegate, WKNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let webConfiguration = WKWebViewConfiguration()
        let webView = WKWebView(frame: CGRect( x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height - 20), configuration: webConfiguration)
        self.view.addSubview(webView)

        let myURL = URL(string: "http://m.wordbook.naver.com/conversation#/endic/20170920")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        webView.uiDelegate = self
        webView.navigationDelegate = self
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        webView.evaluateJavaScript("document.getElementsByTagName('html')[0].innerHTML", completionHandler: { (html, error) in
            
            if error == nil {
                
                print(html!)
            }
        })
    }
}
