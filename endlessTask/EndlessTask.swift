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
}

class Task: Endless {
    var name: String
    private var tasks = [Endless]()
    init(task name: String) {
        self.name = name
    }
    
    func getTasks()->([Endless]){
        return self.tasks
    }
    
    func addTask(task: Endless){
        self.tasks.append(task)
    }
}
