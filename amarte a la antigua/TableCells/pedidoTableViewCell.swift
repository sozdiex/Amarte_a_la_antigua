//
//  pedidoTableViewCell.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 01/12/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class pedidoTableViewCell: UITableViewCell {
    
    @IBOutlet var imageCell : UIImageView!
    @IBOutlet var lblNombre : UILabel!
    @IBOutlet var lblCount : UILabel!
    @IBOutlet var lblPrecio : UILabel!
    var count = 0
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - Buttons Actions
    
    @IBAction func actionMas(button : UIButton) {
        count++
        lblCount.text = "[\(count)]"
    }
    
    @IBAction func actionMenus(button:UIButton) {
        if count > 0 {
            count--
            lblCount.text = "[\(count)]"
        }
    }

}
