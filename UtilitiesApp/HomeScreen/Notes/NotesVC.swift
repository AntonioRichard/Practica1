//
//  NotesVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 11.05.2022.
//

import UIKit

class NotesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func goBack(_ sender: UIButton?){
        navigationController?.viewControllers = [HomeScreenVC()]
    }
}
