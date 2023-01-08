//
//  TableViewCell.swift
//  WishList
//
//  Created by BANFOU Ivan Christopher on 08/01/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

  
    @IBOutlet weak var nom: UILabel!
    
    
    
    @IBOutlet weak var prix: UILabel!
}
