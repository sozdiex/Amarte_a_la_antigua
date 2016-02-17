//
//  ImageTableViewCell.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 29/11/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    @IBOutlet var imageBackground : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
