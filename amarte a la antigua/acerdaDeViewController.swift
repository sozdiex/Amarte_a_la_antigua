//
//  acerdaDeViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 30/11/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class acerdaDeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Buttons Actions
    @IBAction func toggleSideMenu(sender: AnyObject) {
        toggleSideMenuView()
    }
    
    @IBAction func actionShowPedido(sender: AnyObject) {
        let navigationPedido = self.storyboard?.instantiateViewControllerWithIdentifier("navigationPedido")
        self.presentViewController(navigationPedido!, animated: true, completion: nil)
    }

}
