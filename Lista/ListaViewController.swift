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
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListaItem", for: IndexPath)
        return cell
    }


}

