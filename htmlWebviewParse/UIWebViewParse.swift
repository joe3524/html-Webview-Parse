//
//  UIWebViewParse.swift
//  htmlWebviewParse
//
//  Created by joe_mac on 09/21/2017.
//  Copyright © 2017 joe_mac. All rights reserved.
//

import UIKit

class UIWebViewParse: UIViewController, UIWebViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myWebView = UIWebView(frame: CGRect(x: 0, y: 20, width: view.frame.size.width, height: view.frame.size.height - 20))
        view.addSubview(myWebView)
        
        let myUrl = URL(string: "http://m.wordbook.naver.com/conversation#/endic/20170920")
        let urlRequest = URLRequest(url: myUrl!)
        myWebView.loadRequest(urlRequest)
        
        myWebView.delegate = self
    }

    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        if let html = webView.stringByEvaluatingJavaScript(from: "document.body.innerHTML") {
            
            print(html)
        }
    }
}

