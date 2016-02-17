//
//  itemCollectionViewCell.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 30/11/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class itemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var lblNombre : UILabel!
    @IBOutlet var lblPrecio : UILabel!
    @IBOutlet var imageArreglo : UIImageView!
    @IBOutlet var btnSeleccionar : UIButton!
    
    var esSeleccionado : Bool = false
    
    var count1 = 0
    var count2 = 0
    var count3 = 0
    var count4 = 0
    var count5 = 0
    var count6 = 0
    
    @IBOutlet var btnAgregar1 : UIButton!
    @IBOutlet var btnAgregar2 : UIButton!
    @IBOutlet var btnAgregar3 : UIButton!
    @IBOutlet var btnAgregar4 : UIButton!
    @IBOutlet var btnAgregar5 : UIButton!
    @IBOutlet var btnAgregar6 : UIButton!
    
    @IBOutlet var btnEliminar1 : UIButton!
    @IBOutlet var btnEliminar2 : UIButton!
    @IBOutlet var btnEliminar3 : UIButton!
    @IBOutlet var btnEliminar4 : UIButton!
    @IBOutlet var btnEliminar5 : UIButton!
    @IBOutlet var btnEliminar6 : UIButton!
    
    
    
    @IBOutlet weak var lblColor1: UILabel!
    @IBOutlet weak var lblColor2: UILabel!
    @IBOutlet weak var lblColor3: UILabel!
    @IBOutlet weak var lblColor4: UILabel!
    @IBOutlet weak var lblColor5: UILabel!
    @IBOutlet weak var lblColor6: UILabel!
    
    override func awakeFromNib() {
        if lblColor1 != nil {
            lblColor1.layer.cornerRadius = 10
            lblColor1.layer.borderWidth = 1
            lblColor1.layer.borderColor = UIColor.blackColor().CGColor
            lblColor1.hidden = true
            btnAgregar1.hidden = true
            btnEliminar1.hidden = true
            lblColor1.clipsToBounds = true
        }
        if lblColor2 != nil {
            lblColor2.layer.cornerRadius = 10
            lblColor2.layer.borderWidth = 1
            lblColor2.layer.borderColor = UIColor.blackColor().CGColor
            lblColor2.hidden = true
            btnAgregar2.hidden = true
            btnEliminar2.hidden = true
            lblColor2.clipsToBounds = true
        }
        if lblColor3 != nil {
            lblColor3.layer.cornerRadius = 10
            lblColor3.layer.borderWidth = 1
            lblColor3.layer.borderColor = UIColor.blackColor().CGColor
            lblColor3.hidden = true
            btnAgregar3.hidden = true
            btnEliminar3.hidden = true
            lblColor3.clipsToBounds = true
        }
        if lblColor4 != nil {
            lblColor4.layer.cornerRadius = 10
            lblColor4.layer.borderWidth = 1
            lblColor4.layer.borderColor = UIColor.blackColor().CGColor
            lblColor4.hidden = true
            btnAgregar4.hidden = true
            btnEliminar4.hidden = true
            lblColor4.clipsToBounds = true
        }
        if lblColor5 != nil {
            lblColor5.layer.cornerRadius = 10
            lblColor5.layer.borderWidth = 1
            lblColor5.layer.borderColor = UIColor.blackColor().CGColor
            lblColor5.hidden = true
            btnAgregar5.hidden = true
            btnEliminar5.hidden = true
            lblColor5.clipsToBounds = true
        }
        if lblColor6 != nil {
            lblColor6.layer.cornerRadius = 10
            lblColor6.layer.borderWidth = 1
            lblColor6.layer.borderColor = UIColor.blackColor().CGColor
            lblColor6.hidden = true
            btnAgregar6.hidden = true
            btnEliminar6.hidden = true
            lblColor6.clipsToBounds = true
        }
    }
    
    //MARK : - Buttons Actions
    
    @IBAction func changeSelected(button : UIButton) {
        if esSeleccionado {
            btnSeleccionar.setBackgroundImage(UIImage(named: "icoPalomaGris"), forState: UIControlState.Normal)
            esSeleccionado = !esSeleccionado
        } else {
            btnSeleccionar.setBackgroundImage(UIImage(named: "icoPalomaRoja"), forState: UIControlState.Normal)
            esSeleccionado = !esSeleccionado
        }
    }
    
    @IBAction func actionMas1(button : UIButton) {
        count1++
        lblColor1.text = "\(count1)"
    }
    
    
    @IBAction func actionMenus1(button:UIButton) {
        if count1 > 0 {
            count1--
            lblColor1.text = "\(count1)"
        }
    }
    
    @IBAction func actionMas2(button : UIButton) {
        count2++
        lblColor2.text = "\(count2)"
    }
    
    @IBAction func actionMenus2(button:UIButton) {
        if count2 > 0 {
            count2--
            lblColor2.text = "\(count2)"
        }
    }
    
    @IBAction func actionMas3(button : UIButton) {
        count3++
        lblColor3.text = "\(count3)"
    }
    
    @IBAction func actionMenus3(button:UIButton) {
        if count3 > 0 {
            count3--
            lblColor3.text = "\(count3)"
        }
    }
    
    @IBAction func actionMas4(button : UIButton) {
        count4++
        lblColor4.text = "\(count4)"
    }
    
    @IBAction func actionMenus4(button:UIButton) {
        if count4 > 0 {
            count4--
            lblColor4.text = "\(count4)"
        }
    }
    
    @IBAction func actionMas5(button : UIButton) {
        count5++
        lblColor5.text = "\(count5)"
    }
    
    @IBAction func actionMenus5(button:UIButton) {
        if count5 > 0 {
            count5--
            lblColor5.text = "\(count5)"
        }
    }
    
    @IBAction func actionMas6(button : UIButton) {
        count6++
        lblColor6.text = "\(count6)"
    }
    
    @IBAction func actionMenus6(button:UIButton) {
        if count6 > 0 {
            count6--
            lblColor6.text = "\(count6)"
        }
    }
    
    
}
