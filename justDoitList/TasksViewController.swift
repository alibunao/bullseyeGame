//
//  TasksViewController.swift
//  justDoitList
//
//  Created by Adam Libunao on 2016-08-28.
//  Copyright © 2016 Adamazing. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    var selectedIndex = 0
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // <-- how many cell are going to be used
        return tasks.count // <-- call function
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // <-- what goes in each cel
        let cell = UITableViewCell() // <- create a constant or var
        let task = tasks[indexPath.row]
        if task.isThisImportant {
            cell.textLabel?.text = "💋 \(task.name)"
        } else {
        
        cell.textLabel?.text = task.name // <-- assign the cell
        }
        
        return cell // <-- call the function
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row   
        
        let task = tasks[indexPath.row]
        performSegue(withIdentifier: "selectTaskSegue", sender: task)
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.isThisImportant = false
    
    return[task1]
    
    }
    @IBAction func plusTapped(_ sender: AnyObject) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addSegue" {
            let nextVC = segue.destination as! createTaskViewController
        nextVC.previousVC = self
    
    }
        if segue.identifier == "selectTaskSegue" {
            let nexVC = segue.destination as! CompleteTaskViewController
            nexVC.task = sender as! Task
            nexVC.previousVC = self
        }
    }
}
