//
//  TableViewController.swift
//  endlessTask
//
//  Created by Даниил Мурыгин on 17.08.2020.
//  Copyright © 2020 AngelSenpai. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var navButton: UIBarButtonItem!
    
    @IBAction func tapped(_ sender: Any) {
        task.addTask(task: Task(task: "Task №\(task.getTasks().count + 1)"))
        tableView.reloadData()
    }
    var task: Task = Task(task: "main"){
        didSet{
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "TaskCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TaskCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table view data source

     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task.getTasks().count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        cell.delegate = self
        let tasks = task.getTasks()[indexPath.row]
        cell.set(task: tasks)
        // Configure the cell...
        return cell
    }
    
}

extension TableViewController: TaskCellDelegate{
    func setSelect(selected task: Task) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondViewController = storyboard.instantiateViewController(identifier: "TableViewController") as? TableViewController else { return }
        secondViewController.task = task
        show(secondViewController, sender: nil)
    }
    
}
