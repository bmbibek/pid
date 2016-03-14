//
//  HomeViewController.swift
//  thepid
//
//  Created by Jayprakash Kumar on 3/14/16.
//  Copyright © 2016 Jayprakash Kumar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func backBtnClick(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
