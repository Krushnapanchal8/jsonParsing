//
//  ListTableViewCell.swift
//  JSONParsing
//
//  Created by Mac on 25/11/22.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
