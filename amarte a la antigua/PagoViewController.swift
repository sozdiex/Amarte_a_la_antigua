//
//  PagoViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 01/12/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class PagoViewController: UIViewController {
    
    @IBOutlet var btnDefinirFecha : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        initButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Loads
    
    func initButtons(){
        btnDefinirFecha.layer.cornerRadius = 10
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
    @IBAction func actionBack(sender : AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func actionGoToDate(button : UIButton) {
        self.performSegueWithIdentifier("pushFecha", sender: self)
    }

}
