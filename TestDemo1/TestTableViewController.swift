//
//  TestTableViewController.swift
//  TestDemo1
//
//  Created by Vishal Jagtap on 25/03/24.
//

import UIKit

class TestTableViewController: UITableViewController {

    var numbers = [12,34,23,45,67]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return numbers.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(numbers[indexPath.row])
        return cell
    }
}
