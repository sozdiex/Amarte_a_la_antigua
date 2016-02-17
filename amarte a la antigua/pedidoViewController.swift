//
//  pedidoViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 01/12/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class pedidoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var btnCancelar : UIButton!
    @IBOutlet var btnComprar : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        initButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - loads
    func initButtons(){
        btnCancelar.layer.cornerRadius = 10
        btnComprar.layer.cornerRadius = 10
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MAKR: - TableView
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "PARA TODA OCASIÓN"
        }
        return "ARMA TU ARREGLO"
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 30))
        view.backgroundColor = UIColor.clearColor()
        let lblTitulo = UILabel(frame: CGRect(x: 10, y: 0, width: tableView.frame.size.width, height: 30))
        if section == 0 {
            lblTitulo.text = "PARA TODA OCASIÓN"
        } else {
            lblTitulo.text = "ARMA TU ARREGLO"
        }
        view.addSubview(lblTitulo)
        return view
    }
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell :pedidoTableViewCell = tableView.dequeueReusableCellWithIdentifier("pedidoTableViewCell")! as! pedidoTableViewCell
        
        if indexPath.section == 0 {
            cell.lblNombre.text = "Ramo de rosas rojas"
            cell.count = 1
            cell.lblCount.text = "[1]"
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                cell.lblNombre.text = "Rosa - roja"
                cell.count = 2
                cell.lblCount.text = "[2]"
            } else if indexPath.row == 1 {
                cell.lblNombre.text = "Rosa - blanca"
                cell.count = 5
                cell.lblCount.text = "[5]"
            } else if indexPath.row == 2 {
                cell.lblNombre.text = "Gerbera"
                cell.count = 5
                cell.lblCount.text = "[5]"
            }
            
            
        }
        
        return cell
    }
    
    
    // MARK: - Buttons Actions
    @IBAction func actionBack(button : AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func actionPagar(button : UIButton) {
        self.performSegueWithIdentifier("pushPagar", sender: self)
    }
    

}
