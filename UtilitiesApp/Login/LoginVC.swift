//
//  LoginVC.swift
//  UtilitiesApp
//
//  Created by Paul-Daniel DOBREA on 04.05.2022.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet private weak var tempView: UIView!
    @IBOutlet private weak var leadingSpace: NSLayoutConstraint!
    @IBOutlet private weak var menuTable: UITableView!
    @IBOutlet private weak var email:UITextField!
    @IBOutlet private weak var password:UITextField!
    
    private var startingPoint = CGPoint.zero

    @IBAction func signup(_ sender: UIButton?){
        navigationController?.viewControllers = [SignupVC()]
    }
    
    @IBAction func login(_ sender: UIButton?){
        navigationController?.viewControllers = [HomeScreenVC()]
    }
}

extension LoginVC:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == email){
            password.becomeFirstResponder()
        }else{
        textField.resignFirstResponder()
        }
        return true
    }
}
