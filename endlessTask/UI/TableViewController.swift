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
        tasks.append(Task(task: "\(tasks.count + 1)"))
        self.tableView.reloadData()
    }
    var tasks = [Task]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "TaskCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TaskCell")
        
    }

    // MARK: - Table view data source

     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        cell.label.text = "Task \(indexPath.row + 1)"
        // Configure the cell...
        return cell
    }
    
}
