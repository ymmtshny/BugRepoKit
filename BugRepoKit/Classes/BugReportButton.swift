//
//  BugReportButton.swift
//  Pods
//
//  Created by Shinya Yamamoto on 2017/04/18.
//
//

import UIKit

fileprivate extension UIButton {
    @IBAction func tapBugReportButton(_ sender:BugReportButton) {
        print("tapBugReportButton")
        if let vc = UIApplication.shared.keyWindow?.rootViewController {
            vc.presentMailViewController()
        }
    }
}

public class BugReportButton : UIButton {
    
    fileprivate var myWindow: UIWindow!
    
    public static func create() -> BugReportButton {
        let button = BugReportButton()
        let margin = UIScreen.main.bounds.size.width / 4
        button.setTitle("バグ報告", for: .normal)
        button.frame = CGRect(x: margin, y: 2, width: UIScreen.main.bounds.size.width / 2, height: 18)
        button.layer.cornerRadius = button.frame.size.height / 2
        button.backgroundColor = .red
        button.addTarget(button, action: #selector(tapBugReportButton(_:)), for: .touchUpInside)
        return button
    }
    
    public func show() {
        if let statusBarWindow = UIApplication.shared.value(forKey: "statusBarWindow") {
            (statusBarWindow as AnyObject).addSubview(self)
        }
    }
}

