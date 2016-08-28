//
//  createTaskViewController.swift
//  justDoitList
//
//  Created by Adam Libunao on 2016-08-28.
//  Copyright © 2016 Adamazing. All rights reserved.
//

import UIKit

class createTaskViewController: UIViewController {

    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
   
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.isThisImportant = importantSwitch.isOn
        
        //Add new Task to array in previous viewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
  
}
