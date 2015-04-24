//
//  NewMenuViewController.swift
//  CoreDataSample
//
//  Created by Devon Connor on 4/22/15.
//  Copyright (c) 2015 Devon Connor. All rights reserved.
//

import UIKit

let coreDataStack = CoreDataStack()
class NewMenuViewController: UIViewController {

    
    @IBOutlet weak var miles: UITextField!
    
    @IBOutlet weak var gallons: UITextField!
    
    var gallonsTotal: Float32!
    var milesDriven: Float32!
    var calculation: Float32!
    var calculationString: String!
    
    //@IBOutlet weak var Calculation: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func disMis(){
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func donePressed(sender: AnyObject) {
        /*Save menu item */
        
        
        self.view.endEditing(true)
        getVariables()
        calculategasmileage()
        let calculationString = calculation.description
        //self.Calculation.text = calculationString
        coreDataStack.insetNewMenu(calculationString)
        
        
        disMis()
    }
    
    func getVariables(){
        //get desired string from UITextField convert to int
        milesDriven = (miles.text as NSString).floatValue
        gallonsTotal = (gallons.text as NSString).floatValue
        
    }
    
    
    func calculategasmileage() -> Float32 {
        calculation = milesDriven / gallonsTotal
        println(calculation)
        return calculation
        
    }


    @IBAction func cancelPressed(sender: AnyObject) {
        disMis()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
