//
//  CalculatorVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 11.05.2022.
//

import UIKit

class CalculatorVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    @IBAction func goBack(_ sender: UIButton?){
        navigationController?.viewControllers = [HomeScreenVC()]
    }

}
