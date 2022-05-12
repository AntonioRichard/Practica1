//
//  SignupVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 04.05.2022.
//

import UIKit

class SignupVC: UIViewController {

    @IBOutlet private weak var email:UITextField!
    @IBOutlet private weak var password:UITextField!
    @IBOutlet private weak var repeatPassword:UITextField!
    
    @IBAction func login(_ sender: UIButton?){
        navigationController?.viewControllers = [LoginVC()]
    }
    
}

extension SignupVC: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == email){
            password.becomeFirstResponder()
        }else if textField == password{
        repeatPassword.becomeFirstResponder()
        }else{
            textField.resignFirstResponder()
        }
        return true
    }
}
