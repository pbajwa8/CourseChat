//
//  TableViewCell.swift
//  CourseChat
//
//  Created by Parambir Bajwa on 5/9/15.
//  Copyright (c) 2015 Parambir Bajwa. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet var content: UITextView!

    
    @IBOutlet weak var replies: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var count: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        content.userInteractionEnabled = false
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
