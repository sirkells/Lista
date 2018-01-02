//
//  ViewController.swift
//  Lista
//
//  Created by Kelechi Igbokwe on 02.01.18.
//  Copyright © 2018 Kelechi Igbokwe. All rights reserved.
//

import UIKit

class ListaViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListaItem", for: indexPath)
        
        let label = cell.viewWithTag(1001) as! UILabel
        
        if indexPath.row % 5 == 0 {
            label.text = "Walk the Dog"
        }
        else if indexPath.row % 5 == 1 {
            label.text = "Brush My Teeth"
        }
        else if indexPath.row % 5 == 2 {
            label.text = "Learn Programming"
        }
        else if indexPath.row % 5 == 3 {
            label.text = "Soccer Practice"
        }
        else if indexPath.row % 5 == 4 {
            label.text = "Call GF"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    

}

