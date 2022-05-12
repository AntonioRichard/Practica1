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
    
    var titles = ["Home", "Rearrange items", "Settings"]
    
    private var startingPoint = CGPoint.zero

    @IBAction func signup(_ sender: UIButton?){
        navigationController?.viewControllers = [SignupVC()]
    }
    
    @IBAction func login(_ sender: UIButton?){
        navigationController?.viewControllers = [HomeScreenVC()]
    }

    @IBAction func panAction(_ gesture: UIPanGestureRecognizer) {
        let location = gesture.location(in: view)
        var difference: CGFloat = 0.0
        switch gesture.state {
        case .began:
            startingPoint = location
        case .ended:
            UIView.animate(withDuration: 1.0) {

                self.leadingSpace.constant = 0.0
                self.view.layoutIfNeeded()

            } completion: { done in
                //aici putem sa facem ceva cand s-a terminat animatia
            }

        default:
            difference = location.x - startingPoint.x
            leadingSpace.constant = leadingSpace.constant + difference
            startingPoint = location
            view.layoutIfNeeded()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
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
