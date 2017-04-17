//
//  TestSource.swift
//  Pods
//
//  Created by Shinya Yamamoto on 2017/04/18.
//
//

import UIKit

public class BugReportButton : UIButton {
    
    fileprivate var myWindow: UIWindow!
    
    public static func create() -> BugReportButton {
        let button = BugReportButton()
        button.frame = CGRect(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: 20)
        button.layer.cornerRadius = button.frame.size.height / 2
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(tapBugReportButton(_:)), for: .touchUpInside)
        return button
    }
    
//    public func show() {
//        self.makeMyWindow()
//        myWindow.addSubview(self)
//    }
    
}

fileprivate extension BugReportButton  {
    @IBAction fileprivate func tapBugReportButton(_ sender:UIButton) {
        print("tapBugReportButton")
    }
    
    func makeMyWindow(){
        myWindow = UIWindow()
        myWindow.backgroundColor = UIColor.white
        myWindow.frame = CGRect(x:0, y:0, width:200, height:250)
        myWindow.alpha = 0.8
        myWindow.layer.cornerRadius = 20
        myWindow.makeKeyAndVisible()
    }
}
