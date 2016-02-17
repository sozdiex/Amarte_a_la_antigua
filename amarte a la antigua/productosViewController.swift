//
//  ProductosViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 29/11/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class productosViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

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
    
    // MARK: - Collection Delegates
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        print(self.view.frame.size.width)
        if self.view.frame.size.width == 320 {
            // pantalla regula
            return CGSizeMake(135, 210)
        } else if self.view.frame.size.width == 375     {
            // pantalla Iphone 6
            return CGSizeMake(162, 250)
        } else if self.view.frame.size.width == 414 {
            // iPhone 6 Plus
            return CGSizeMake(182, 279)
        }
        return CGSizeMake(151, 237)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCellWithReuseIdentifier("arregloCollectionViewCell", forIndexPath: indexPath) as! arregloCollectionViewCell
    
        cell.lblNombre.text = "RAMO NÚMERO \(indexPath.row+1)"
        cell.lblPrecio.text = "$ 5.000"
        
        if indexPath.row%2 == 0 {
            cell.imageArreglo.image = UIImage(named: "arregloBlanco")
        } else {
            cell.imageArreglo.image = UIImage(named: "arregloRojo")
        }
        
        if indexPath != 0 {
            cell.lblContador.text = ""
        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("pushDetalleProducto", sender: self)
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
