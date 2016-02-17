//
//  confirmarViewController.swift
//  amarte a la antigua
//
//  Created by Armando Trujillo Zazueta  on 01/12/15.
//  Copyright © 2015 Armando Trujillo zazueta. All rights reserved.
//

import UIKit
import MapKit

class confirmarViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var btnConfirmar : UIButton!
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var txtFechaEntrega: UITextField!
    @IBOutlet var txtHorario: UITextField!
    var datePicker : UIDatePicker!
    var horarioPicket : UIPickerView!
    let horariosData = ["Por la mañana", "Al medio dia", "por la tarde"]
    var horarioSelected = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDatesPickers()
        initButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Loads
    func initButtons(){
        btnConfirmar.layer.cornerRadius = 10
    }
    
    func initDatesPickers () {
        //Date Inicio
        let width = self.view.frame.width
        let customView:UIView = UIView (frame: CGRectMake(0, 100, width, 160))
        customView.backgroundColor = UIColor.whiteColor()
        datePicker = UIDatePicker(frame: CGRectMake(0, 0, width, 160))
        datePicker.datePickerMode = UIDatePickerMode.Date
        customView .addSubview(datePicker)
        txtFechaEntrega.inputView = customView
        
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRectMake(0, 0, width, 50))
        doneToolbar.barStyle = UIBarStyle.Default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title:  NSLocalizedString("Aceptar", comment: ""), style: UIBarButtonItemStyle.Done, target: self, action: Selector("datePickerSelectedInicio"))
        let Cancel: UIBarButtonItem = UIBarButtonItem(title:  NSLocalizedString("Cancelar", comment: ""), style: UIBarButtonItemStyle.Done, target: self, action: Selector("CancelButtonAction"))
        
        var items = [UIBarButtonItem]()
        items.insert(Cancel, atIndex: 0)
        items.insert(flexSpace, atIndex: 1)
        items.insert(done, atIndex: 2)

        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        txtFechaEntrega.inputAccessoryView = doneToolbar
        
        // Hora Picker
        let customView2:UIView = UIView (frame: CGRectMake(0, 100, width, 160))
        customView2.backgroundColor = UIColor.whiteColor()
        horarioPicket = UIPickerView(frame: CGRectMake(0, 0, width, 160))
        horarioPicket.dataSource  = self
        horarioPicket.delegate = self

        customView2 .addSubview(horarioPicket)
        txtHorario.inputView = customView2
        
        let doneToolbar2: UIToolbar = UIToolbar(frame: CGRectMake(0, 0, width, 50))
        doneToolbar2.barStyle = UIBarStyle.Default
        
        let flexSpace2 = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        let done2: UIBarButtonItem = UIBarButtonItem(title:  NSLocalizedString("Aceptar", comment: ""), style: UIBarButtonItemStyle.Done, target: self, action: Selector("horarioPickerSelect"))
        let Cancel2: UIBarButtonItem = UIBarButtonItem(title:  NSLocalizedString("Cancelar", comment: ""), style: UIBarButtonItemStyle.Done, target: self, action: Selector("CancelButtonAction"))
        
        var items2 = [UIBarButtonItem]()
        items2.insert(Cancel2, atIndex: 0)
        items2.insert(flexSpace2, atIndex: 1)
        items2.insert(done2, atIndex: 2)
        
        doneToolbar2.items = items2
        doneToolbar2.sizeToFit()
        
        txtHorario.inputAccessoryView = doneToolbar2
    }
    
    func datePickerSelectedInicio() {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
//        formatter.timeStyle = NSDateFormatterStyle.NoStyle
        txtFechaEntrega.text = formatter.stringFromDate(datePicker.date)
        txtFechaEntrega.resignFirstResponder()
    }

    func CancelButtonAction() {
        txtFechaEntrega.resignFirstResponder()
        txtHorario.resignFirstResponder()
    }
    
    func horarioPickerSelect(){
        if horarioSelected >= 0 {
            txtHorario.text = horariosData[horarioSelected]
            txtHorario.resignFirstResponder()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Picker Delegate
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return horariosData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return horariosData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        horarioSelected = row
    }
    
    // MARK: - Buttons Actions
    @IBAction func actionBack(sender : AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    

}
