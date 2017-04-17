//
//  ViewController.swift
//  BugRepoKit
//
//  Created by Shinya Yamamoto on 04/18/2017.
//  Copyright (c) 2017 Shinya Yamamoto. All rights reserved.
//

import UIKit
import BugRepoKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let reportButton = BugReportButton.create()
        self.view.addSubview(reportButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

