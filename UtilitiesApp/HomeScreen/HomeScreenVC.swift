//
//  HomeScreenVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 10.05.2022.
//

import UIKit

class HomeScreenVC: UIViewController {
    @IBOutlet var menuLeading: NSLayoutConstraint!
    @IBOutlet var toggleShadowButton: UIButton!
    var isMenuClosed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func menuMethod(_ button:UIButton?){
            
            isMenuClosed.toggle()
            if(isMenuClosed){
                UIView.animate(withDuration: 0.5) {
                    self.menuLeading.constant = -240.0
                    self.view.layoutIfNeeded()
                    self.toggleShadowButton.alpha = 0.0
                } completion: { done in}
            }else{
                UIView.animate(withDuration: 0.5) {
                    self.menuLeading.constant = 0.0
                    self.view.layoutIfNeeded()
                    self.toggleShadowButton.alpha = 0.75
                } completion: { done in}
            }
        }
    
    @IBAction func goToNotesVC(_ sender: UIButton?){
        navigationController?.viewControllers = [NotesVC()]
    }
    
    @IBAction func goToImagesVC(_ sender: UIButton?){
        navigationController?.viewControllers = [ImagesVC()]
    }
    
    @IBAction func goToCalculatorVC(_ sender: UIButton?){
        navigationController?.viewControllers = [CalculatorVC()]
    }
    
    @IBAction func goToRandomTaskVC(_ sender: UIButton?){
        navigationController?.viewControllers = [RandomTaskVC()]
    }
    
    @IBAction func logOut(_ sender: UIButton?){
        navigationController?.viewControllers = [LoginVC()]
    }
}
