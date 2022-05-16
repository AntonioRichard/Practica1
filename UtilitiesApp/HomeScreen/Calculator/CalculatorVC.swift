//
//  CalculatorVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 11.05.2022.
//

import UIKit

class CalculatorVC: UIViewController {
    
    @IBOutlet private weak var result:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
 
    @IBAction func backspace(_ sender:UIButton?){
        if var string = result.text{
            if string.count > 1{
            string.remove(at: string.index(before: string.endIndex))
            result.text = string
            }else{
                result.text = "0"
            }
         }
    }
    
    @IBAction func clear(_ sender:UIButton?){
        result.text = "0"
    }
    
    @IBAction func one(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "1"
        }else{
            if var string = result.text{
                string = string + "1"
                result.text = string
            }
        }
    }
    
    @IBAction func two(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "2"
        }else{
            if var string = result.text{
                string = string + "2"
                result.text = string
            }
        }
    }
    
    @IBAction func three(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "3"
        }else{
            if var string = result.text{
                string = string + "3"
                result.text = string
            }
        }
    }
    
    @IBAction func four(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "4"
        }else{
            if var string = result.text{
                string = string + "4"
                result.text = string
            }
        }
    }
    
    @IBAction func five(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "5"
        }else{
            if var string = result.text{
                string = string + "5"
                result.text = string
            }
        }
    }
    
    @IBAction func six(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "6"
        }else{
            if var string = result.text{
                string = string + "6"
                result.text = string
            }
        }
    }
    
    @IBAction func seven(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "7"
        }else{
            if var string = result.text{
                string = string + "7"
                result.text = string
            }
        }
    }
    
    @IBAction func eight(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "8"
        }else{
            if var string = result.text{
                string = string + "8"
                result.text = string
            }
        }
    }
    
    @IBAction func nine(_ sender: UIButton?){
        if result.text == "0"{
            result.text = "9"
        }else{
            if var string = result.text{
                string = string + "9"
                result.text = string
            }
        }
    }
    
    @IBAction func goBack(_ sender: UIButton?){
        navigationController?.viewControllers = [HomeScreenVC()]
    }

}
