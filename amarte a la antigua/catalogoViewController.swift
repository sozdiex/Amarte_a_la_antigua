//
//  catalogoViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 29/11/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class catalogoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

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
    
    // MARK: - tablesView delegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return tableView.frame.size.height / 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ImageTableViewCell") as! ImageTableViewCell
       
        if indexPath.row == 0 {
            cell.imageBackground.image = UIImage(named: "categoria1")
        } else if indexPath.row == 1 {
            cell.imageBackground.image = UIImage(named: "categoria2")
        } else if indexPath.row == 2 {
            cell.imageBackground.image = UIImage(named: "categoria3")
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("pushArmaTuArreglo", sender: self)
        } else {
            self.performSegueWithIdentifier("pushProductos", sender: self)
        }
    }
    
    // MARK: - Buttons Actions
    @IBAction func toggleSideMenu(sender: AnyObject) {
        toggleSideMenuView()
    }
    
    @IBAction func actionShowPedido(sender: AnyObject) {
        let navigationPedido = self.storyboard?.instantiateViewControllerWithIdentifier("navigationPedido")
        self.presentViewController(navigationPedido!, animated: true, completion: nil)
    }

}
