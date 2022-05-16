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
    @IBOutlet private weak var emptyFieldError:UILabel!
    @IBOutlet private weak var emailError:UILabel!
    @IBOutlet private weak var passwordsMatchError:UILabel!
    
    @IBAction func signup(_ sender:UIButton?){
        emptyFieldError.alpha = 0.0
        emailError.alpha = 0.0
        passwordsMatchError.alpha = 0.0
        
        if email.text == "" || password.text == "" || repeatPassword.text == ""{
            emptyFieldError.alpha = 1.0
        }else if let email = email.text{
            if isValidEmail(email){
                if password.text == repeatPassword.text{
                    let user = User()
                    if let username = self.email.text{
                        user.username = username
                    }
                    if let password = password.text{
                        user.password = password
                    }
                    do{
                        let userData = try JSONEncoder().encode(user)
                        UserDefaults.standard.set(userData, forKey: "login")
                    }catch{}
                    do{
                        guard
                        let userData = UserDefaults.standard.value(forKey: "login") as? Data
                        else
                        {
                            return
                        }
                        let decodedData = try JSONDecoder().decode(User.self, from: userData)
                        print("Login: \(decodedData.username), \(decodedData.password)")
                    }catch{}
                }else{
                    passwordsMatchError.alpha = 1.0
                }
            }else{
                emailError.alpha = 1.0
            }
        }
    }
    
    @IBAction func login(_ sender: UIButton?){
        navigationController?.viewControllers = [LoginVC()]
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
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
