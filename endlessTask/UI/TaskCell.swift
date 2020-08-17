//
//  TaskCell.swift
//  endlessTask
//
//  Created by Даниил Мурыгин on 17.08.2020.
//  Copyright © 2020 AngelSenpai. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet var button: UIButton!
    @IBOutlet var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //segue
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
