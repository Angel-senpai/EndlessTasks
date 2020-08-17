//
//  TaskCell.swift
//  endlessTask
//
//  Created by Даниил Мурыгин on 17.08.2020.
//  Copyright © 2020 AngelSenpai. All rights reserved.
//

import UIKit

protocol TaskCellDelegate: class {
    func setSelect(selected task: Task)
}

class TaskCell: UITableViewCell {

    @IBOutlet var label: UILabel!
    
    weak var delegate: TaskCellDelegate?
    var task: Task?{
        didSet{
            guard let task = self.task else {return}
            self.label.text = "\(task.name) / subtask count : \(task.getTasks().count)"
        }
    }
    func set(task: Task) {
        self.task = task
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //segue
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected{
            guard let task = self.task else {return}
            delegate?.setSelect(selected: task)
        }
    }
    
}
