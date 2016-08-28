//
//  ViewController.swift
//  justDoitList
//
//  Created by Adam Libunao on 2016-08-28.
//  Copyright © 2016 Adamazing. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    

   
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // <-- how many cell are going to be used
        return 10 / <-- call the function
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // <-- what goes in each cel
        let cell = UITableViewCell() // <- create a constant or var
        cell.textLabel?.text = "Hello" // <-- assign the cell
        return cell // <-- call the function
    }
}
