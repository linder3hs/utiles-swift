//
//  File.swift
//  Doing
//
//  Created by Linder Hassinger on 1/16/19.
//  Copyright © 2019 Linder Hassinger. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func hideKeyBoardWhenTap() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func makeAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func subString(text:String, start:Int) -> String {
        let str = text
        let indexText = str.index(str.startIndex, offsetBy: start)
        let result = str[..<indexText]
        return String(result)
    }
    
}


