//
//  FuncHelper.swift
//  AlertEasily
//
//  Created by 麦志超 on 2017/11/17.
//  Copyright © 2017年 MZC. All rights reserved.
//


import UIKit

// MARK: - Show AlertController
///
/// - Parameters:
///   - title: title
///   - message: message
///   - preferredStyle: UIAlertControllerStyle, default: .alert
///   - defaultHandler: defaultHandler, default: nil
///   - cancelHandler: cancelHandler, default: nil
public func showAlert(title: String, message: String? = nil, preferredStyle: UIAlertControllerStyle = .alert, defaultHandler: (() ->Void)? = nil, cancelHandler: (() -> Void)? = nil)
{
    let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
    
    let defaultAction = UIAlertAction(title: "OK", style: .default) { (alert) in
        
        if defaultHandler != nil
        {
            defaultHandler!()
        }
    }
    alert.addAction(defaultAction)
    
    if cancelHandler != nil
    {
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
            cancelHandler!()
        }
        alert.addAction(cancelAction)
    }
    
    /// 获取当前显示的 ViewController
    let theViewControllerYouSee = UIViewController.currentViewController()
    
    theViewControllerYouSee?.present(alert, animated: true, completion: nil)
}

