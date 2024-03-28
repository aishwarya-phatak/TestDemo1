//
//  ViewController.swift
//  TestDemo1
//
//  Created by Vishal Jagtap on 22/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //storage of value in user defaults
        var number = 10
        UserDefaults.standard.set(number, forKey: "number")
        
        //extraction of value from user defaults
        let numberValue = UserDefaults.standard.value(forKey: "number")
        
        var num1 = 34.23
        
        UserDefaults.standard.set(num1,forKey: "num1")
        
        let num1Value = UserDefaults.standard.value(forKey: "num") as? Float ?? 30.0
        
        let numbers = [12,4,56,23,98]
        UserDefaults.standard.set(numbers, forKey: "numbers")
        let getValueOfArray = UserDefaults.standard.value(forKey: "numbers")
        
        
    }
}
