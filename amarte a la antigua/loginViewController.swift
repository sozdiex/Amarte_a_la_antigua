//
//  ViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 27/11/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    
    @IBOutlet var btnIniciarSesion : UIButton!
    @IBOutlet var btnRegistrarse : UIButton!
    @IBOutlet var btnContinuar : UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initButtons()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Loads
    func initButtons(){
        btnIniciarSesion.layer.cornerRadius = 15
        btnRegistrarse.layer.cornerRadius = 15
        btnContinuar.layer.cornerRadius = 15
    }
    
    
    //MARK: Buttons Actions
    @IBAction func touchContinuar(button: UIButton) {
        let navigationController = self.storyboard?.instantiateViewControllerWithIdentifier("MyNavigationController") as! MyNavigationController
        
        self.presentViewController(navigationController, animated: true, completion: nil)
    }


}

