
//
//  SettingsViewController.swift
//  HackerNewsUrara
//
//  Created by 田口うらら on 2015/06/17.
//  Copyright (c) 2015年 田口うらら. All rights reserved.
//

import UIKit

class SettingViewController: UITableViewController {
    
    @IBAction func closeModal(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func nightModeToggle(sender: UISwitch) {
        
    }
}