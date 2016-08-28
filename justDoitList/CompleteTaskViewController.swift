//
//  CompleteTaskViewController.swift
//  justDoitList
//
//  Created by Adam Libunao on 2016-08-28.
//  Copyright © 2016 Adamazing. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.isThisImportant {
            taskLabel.text = "💋 \(task.name)"
        } else {
            
            taskLabel.text = task.name

        
    }


    }
    @IBAction func CompleteTaskTapped(_ sender: AnyObject) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)

    }
}

