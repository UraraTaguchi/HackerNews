//
//  HairlineView.swift
//  HackerNewsUrara
//
//  Created by 田口うらら on 2015/06/17.
//  Copyright (c) 2015年 田口うらら. All rights reserved.
//

import UIKit

class HairlineView : UIView {
    
    
    override func awakeFromNib() {
        layer.borderColor = backgroundColor?.CGColor
        layer.borderWidth = (1.0 / UIScreen.mainScreen().scale) / 2
        backgroundColor = UIColor.clearColor()
    }
}
