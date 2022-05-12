//
//  HomeScreenVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 10.05.2022.
//

import UIKit

class HomeScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
}
