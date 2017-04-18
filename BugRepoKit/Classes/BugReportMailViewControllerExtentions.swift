//
//  BugReportMailViewController.swift
//  Pods
//
//  Created by Shinya Yamamoto on 2017/04/18.
//
//

import UIKit
import MessageUI

public extension UIViewController {
    //MARK:メール送信画面に遷移
    internal func presentMailViewController() {
        let emailTitle = ""
        let messageBody = ""
        let toRecipents = [""]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        mc.setMessageBody(messageBody, isHTML: false)
        mc.setToRecipients(toRecipents)
        let nv = UINavigationController(rootViewController: mc)
        self.present(nv, animated: true, completion: nil)
    }
}

extension UIViewController : MFMailComposeViewControllerDelegate {
    public func mailComposeController(_ controller:MFMailComposeViewController, didFinishWith result:MFMailComposeResult, error:Error?) {
        switch result {
        case .cancelled:
            print("Mail cancelled")
        case .saved:
            print("Mail saved")
        case .sent:
            print("Mail sent")
        case .failed:
            print("Mail sent failure: \(error?.localizedDescription)")
        }
        self.dismiss(animated: true, completion: {})
    }
}
