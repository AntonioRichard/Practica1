//
//  RandomTaskVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 11.05.2022.
//

import UIKit

class RandomTaskVC: UIViewController {
    @IBOutlet private weak var task: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        task.text = "hello"
    }
    
    @IBAction func goBack(_ sender: UIButton?){
        navigationController?.viewControllers = [HomeScreenVC()]
    }
}
