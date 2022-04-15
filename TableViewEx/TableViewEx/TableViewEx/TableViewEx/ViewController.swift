//
//  ViewController.swift
//  TableViewEx
//
//  Created by Antonio - Raul RICHARD on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton(){
        let vc = MyTableViewController();
        vc.titles = [
            ("Superman",{print("test")}),
            ("Batman",{print("test")}),
            ("Spiderman",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")}),
            ("etc",{print("test")})
        ]
        navigationController?.pushViewController(vc , animated: true)
    }

}

