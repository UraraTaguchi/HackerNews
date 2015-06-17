
//
//  BrowserViewController.swift
//  HackerNewsUrara
//
//  Created by 田口うらら on 2015/06/17.
//  Copyright (c) 2015年 田口うらら. All rights reserved.
//

import UIKit

class BrowserViewController : UIViewController, UIWebViewDelegate {
    
    var post: HNPost!
    var toolbarBarButtonItems: [UIBarButtonItem]?
    
    @IBOutlet weak var webView: UIWebView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder aDecoder)
        post = HNPost()
        toolbarBarButtonItems = toolbarItems as? [UIBarButtonItem]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI();
        loadUrl()
    }
    
    override func viewDidDisappear(animated: Bool) {
        if isMovingFromParentViewController() {
            webView.stopLoading()
            UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        }
    }
    
    func configureUI() {
        title = post.Title
    }
    
    func loadUrl() {
        let url = NSURL(string: post.UtlString)
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
}
