//
//  dosCamposTableViewCell.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 08/12/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class dosCamposTableViewCell: UITableViewCell {

    @IBOutlet var lblTitulo1 : UILabel!
    @IBOutlet var txtCampo1 : UITextField!
    @IBOutlet var lblTitulo2 : UILabel!
    @IBOutlet var txtCampo3 : UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
