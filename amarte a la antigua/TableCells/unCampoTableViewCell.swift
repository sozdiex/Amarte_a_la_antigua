//
//  unCampoTableViewCell.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 08/12/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class unCampoTableViewCell: UITableViewCell {

     @IBOutlet var lblTitulo : UILabel!
     @IBOutlet var txtCampo : UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
