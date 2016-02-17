//
//  armaTuArregloViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 30/11/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit

class armaTuArregloViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var arrayItems : NSMutableArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadHardCode()
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
    
    // MARK: - Loads
    
    func loadHardCode() {
        var dic = NSMutableDictionary()
        dic.setValue("Rosa", forKey: "nombre")
        dic.setValue("$ 5.000", forKey: "precio")
        dic.setValue(false, forKey: "seleccionado")
        dic.setValue(true, forKey: "isColor")
        dic.setValue([
                ["Red":255/255, "Green":0/255, "Blue":0/255, "count": 2, "colorText":true ],
                ["Red":255/255, "Green":0/255, "Blue":255/255, "count": 0, "colorText":true ],
                ["Red":14/255, "Green":255/255, "Blue":255/255, "count": 0, "colorText":false ],
                ["Red":100/255, "Green":37/255, "Blue":150/255, "count": 0, "colorText":true ],
                ["Red":255/255, "Green":255/255, "Blue":0/255, "count": 0, "colorText":false ],
                ["Red":255/255, "Green":255/255, "Blue":255/255, "count": 0, "colorText":false ]
            ],
            forKey: "colores")
        dic.setValue("item6Colores", forKey: "cell")
        arrayItems.addObject(dic)
        
        dic = NSMutableDictionary()
        dic.setValue("GERBERA", forKey: "nombre")
        dic.setValue("$ 5.000", forKey: "precio")
        dic.setValue(false, forKey: "seleccionado")
        dic.setValue(false, forKey: "isColor")
        dic.setValue("itemNoColores", forKey: "cell")
        arrayItems.addObject(dic)
        
        dic = NSMutableDictionary()
        dic.setValue("GIRSASOL", forKey: "nombre")
        dic.setValue("$ 5.000", forKey: "precio")
        dic.setValue(false, forKey: "seleccionado")
        dic.setValue(true, forKey: "isColor")
        dic.setValue([["Red":255/255, "Green":255/255, "Blue":0/255, "count": 0, "colorText":false]], forKey: "colores")
        dic.setValue("item3Colores", forKey: "cell")
        arrayItems.addObject(dic)
        
        dic = NSMutableDictionary()
        dic.setValue("CLAVEL", forKey: "nombre")
        dic.setValue("$ 5.000", forKey: "precio")
        dic.setValue(false, forKey: "seleccionado")
        dic.setValue(true, forKey: "isColor")
        dic.setValue([["Red":255/255, "Green":255/255, "Blue":255/255, "count": 0, "colorText":false]], forKey: "colores")
        dic.setValue("item3Colores", forKey: "cell")
        arrayItems.addObject(dic)
        
    }
    
    // MARK: - Collection Delegates
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayItems.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let dic = arrayItems.objectAtIndex(indexPath.row) as! NSDictionary
        let cell  = collectionView.dequeueReusableCellWithReuseIdentifier(dic.objectForKey("cell") as! String, forIndexPath: indexPath) as! itemCollectionViewCell
        
        cell.lblNombre.text = dic.objectForKey("nombre") as? String
        cell.lblPrecio.text = "$ 5.000"
        
        if indexPath.row%2 == 0 {
            cell.imageArreglo.image = UIImage(named: "arregloBlanco")
        } else {
            cell.imageArreglo.image = UIImage(named: "arregloRojo")
        }
        
        if dic.objectForKey("isColor") as! Bool {
            if let colores = dic.objectForKey("colores") as? NSArray {
                for var i = 0; i < colores.count; i++ {
                    let item = colores.objectAtIndex(i) as! NSDictionary
                    print(item)
                    if i+1 == 1 {
                        cell.lblColor1.hidden = false
                        cell.btnAgregar1.hidden = false
                        cell.btnEliminar1.hidden = false
                        cell.lblColor1.backgroundColor =  UIColor(red:item["Red"] as! CGFloat, green: item["Green"] as! CGFloat, blue:item["Blue"] as! CGFloat, alpha: 1)
                        let count : Int = item["count"] as! Int
                        cell.lblColor1.text = "\(count)"
                        cell.count1 = count
                        
                        if item["colorText"] as! Bool {
                            cell.lblColor1.textColor = UIColor.whiteColor()
                        } else {
                            cell.lblColor1.textColor = UIColor.blackColor()
                        }
                        
                    } else if i+1 == 2 {
                        cell.lblColor2.hidden = false
                        cell.btnAgregar2.hidden = false
                        cell.btnEliminar2.hidden = false
                        cell.lblColor2.backgroundColor = UIColor(red:item["Red"] as! CGFloat, green: item["Green"] as! CGFloat, blue:item["Blue"] as! CGFloat, alpha: 1)
                        let count : Int = item["count"] as! Int
                        cell.lblColor2.text = "\(count)"
                        cell.count2 = count
                        if item["colorText"] as! Bool {
                            cell.lblColor2.textColor = UIColor.whiteColor()
                        } else {
                            cell.lblColor2.textColor = UIColor.blackColor()
                        }
                    } else if i+1 == 3 {
                        cell.lblColor3.hidden = false
                        cell.btnAgregar3.hidden = false
                        cell.btnEliminar3.hidden = false
                        cell.lblColor3.backgroundColor = UIColor(red:item["Red"] as! CGFloat, green: item["Green"] as! CGFloat, blue:item["Blue"] as! CGFloat, alpha: 1)
                        let count : Int = item["count"] as! Int
                        cell.lblColor3.text = "\(count)"
                        cell.count3 = count
                        if item["colorText"] as! Bool {
                            cell.lblColor3.textColor = UIColor.whiteColor()
                        } else {
                            cell.lblColor3.textColor = UIColor.blackColor()
                        }
                    } else if i+1 == 4 {
                        cell.lblColor4.hidden = false
                        cell.btnAgregar4.hidden = false
                        cell.btnEliminar4.hidden = false
                        cell.lblColor4.backgroundColor = UIColor(red:item["Red"] as! CGFloat, green: item["Green"] as! CGFloat, blue:item["Blue"] as! CGFloat, alpha: 1)
                        let count : Int = item["count"] as! Int
                        cell.lblColor4.text = "\(count)"
                        cell.count4 = count
                        if item["colorText"] as! Bool {
                            cell.lblColor4.textColor = UIColor.whiteColor()
                        } else {
                            cell.lblColor4.textColor = UIColor.blackColor()
                        }
                    } else if i+1 == 5 {
                        cell.lblColor5.hidden = false
                        cell.btnAgregar5.hidden = false
                        cell.btnEliminar5.hidden = false
                        cell.lblColor5.backgroundColor = UIColor(red:item["Red"] as! CGFloat, green: item["Green"] as! CGFloat, blue:item["Blue"] as! CGFloat, alpha: 1)
                        let count : Int = item["count"] as! Int
                        cell.lblColor5.text = "\(count)"
                        cell.count5 = count
                        if item["colorText"] as! Bool {
                            cell.lblColor5.textColor = UIColor.whiteColor()
                        } else {
                            cell.lblColor5.textColor = UIColor.blackColor()
                        }
                    } else if i+1 == 6 {
                        cell.lblColor6.hidden = false
                        cell.btnAgregar6.hidden = false
                        cell.btnEliminar6.hidden = false
                        cell.lblColor6.backgroundColor = UIColor(red:item["Red"] as! CGFloat, green: item["Green"] as! CGFloat, blue:item["Blue"] as! CGFloat, alpha: 1)
                        let count : Int = item["count"] as! Int
                        cell.lblColor6.text = "\(count)"
                        cell.count6 = count
                        if item["colorText"] as! Bool {
                            cell.lblColor6.textColor = UIColor.whiteColor()
                        } else {
                            cell.lblColor6.textColor = UIColor.blackColor()
                        }
                    }
                }
            }
        }
        
//        if dic.objectForKey("isColor") as! Bool {
//            if let colores = dic.objectForKey("colores") as? NSArray {
//                for var i = 0; i < colores.count; i++ {
//                    let item = colores.objectAtIndex(i) as! NSDictionary
//                    print(item)
//                    if i+1 == 1 {
//                        cell.viewColor1.backgroundColor =  UIColor(red:item["Red"] as! CGFloat, green: item["Green"] as! CGFloat, blue:item["Blue"] as! CGFloat, alpha: 1)
//                        let count : Int = item["count"] as! Int
//                        cell.lblCount1.text = "[\(count)]"
//                        cell.count1 = count
//                    } else if i+1 == 2 {
//                        cell.viewColor2.backgroundColor = UIColor(red:item["Red"] as! CGFloat, green: item["Green"] as! CGFloat, blue:item["Blue"] as! CGFloat, alpha: 1)
//                        let count : Int = item["count"] as! Int
//                        cell.lblCount2.text = "[\(count)]"
//                        cell.count2 = count
//                    }
//                }
//            }
//        }
        
        
//        if indexPath != 0 {
//            cell.lblCount2.text = ""
//        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        if self.view.frame.size.width == 320 {
            // pantalla regula
            return CGSizeMake(139, 285)
        } else if self.view.frame.size.width == 375     {
            // pantalla Iphone 6
            return CGSizeMake(166, 338)
        } else if self.view.frame.size.width == 414 {
            // iPhone 6 Plus
            return CGSizeMake(182, 366)
        }
        return CGSizeMake(151, 237)
        
//        return CGSizeMake(151, 309)
//        if let dic = arrayItems.objectAtIndex(indexPath.row) as? NSDictionary {
//            if dic.objectForKey("isColor") as! Bool {
//                if let colores = dic.objectForKey("colores") as? NSArray {
//                    if colores.count == 1 {
//                       return CGSizeMake(151, 267)
//                    } else if colores.count == 2 {
//                        return CGSizeMake(151, 297)
//                    }
//                }
//            }
//        }
//        return CGSizeMake(151, 237)
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
