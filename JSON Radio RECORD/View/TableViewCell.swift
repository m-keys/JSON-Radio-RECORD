//
//  TableViewCell.swift
//  JSON Radio RECORD
//
//  Created by Александр Макаров on 11.11.2018.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageStation: UIImageView!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var songNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
