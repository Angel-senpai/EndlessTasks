//
//  EndlessTask.swift
//  endlessTask
//
//  Created by Даниил Мурыгин on 17.08.2020.
//  Copyright © 2020 AngelSenpai. All rights reserved.
//

import Foundation

protocol Endless {
    var name: String { get }
    func getTasks()->[Task]
}

class Task: Endless {
    var name: String
    private var tasks = [Task]()
    init(task name: String) {
        self.name = name
    }
    
    func getTasks()->([Task]){
        return self.tasks
    }
    
    func addTask(task: Task){
        self.tasks.append(task)
    }
    
    func setTasks(tasks: [Task]){
        self.tasks = tasks
    }
}
