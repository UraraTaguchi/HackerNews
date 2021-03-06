//
//  MainViewController.swift
//  HackerNewsUrara
//
//  Created by 田口うらら on 2015/06/01.
//  Copyright (c) 2015年 田口うらら. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let PostCellidentifer = "PostCell"
    let ShowBrowserIdentifer = "ShowBrowser"
    let PullToRefreshString = "Pull to Refresh"
    let ReadTextColor = UIColor(red: 0.467, green: 0.467, blue:0.467, alpha:1.0)
    let ReadDetailTextColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
    let FetchErrorMessage = "Could not Fetch Post"
    let NoPostsErrorMessage = "No more Posts to Fetch"
    let ErrorMessageLabelTextColor = UIColor.grayColor()
    let ErrorMessageFontSize: CGFloat = 16
    let DefaultPostFilterType = PostFilterType.Top
    
    var post Filter: PostFilterType!
    var posts: [HNPost]!
    var nextPageId: String!
    var scrolledToBottom: Bool!
    var refreshControl: UIRefreshControl!
    var errorMessageLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        postFilter = DefaultPostFilterType
        posts = []
        nextPageId = ""
        scrolledToBottom = UIRefreshControl()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

