//
//  HomeViewController.swift
//  TestDemo1
//
//  Created by Vishal Jagtap on 29/03/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var colourSelectorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.colourSelectorView.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectedSegment(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{
            self.colourSelectorView.backgroundColor = .blue
        } else {
            self.colourSelectorView.backgroundColor = .magenta
        }
    }
}
