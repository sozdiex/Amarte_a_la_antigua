//
//  produtoDetViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 29/11/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class productoDetViewController: UIViewController {

    @IBOutlet var btnVerPedido : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        loadButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - loads
    
    func loadButtons() {
        btnVerPedido.layer.cornerRadius = 10
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Buttons Action
    
    @IBAction func actionAtras(button : AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func actionShowPedido(sender: AnyObject) {
        let navigationPedido = self.storyboard?.instantiateViewControllerWithIdentifier("navigationPedido")
        self.presentViewController(navigationPedido!, animated: true, completion: nil)
    }

}
