//
//  FirstViewController.swift
//  Gas Mileage Tracker
//
//  Created by Jacob Brauchler on 2/18/15.
//  Copyright (c) 2015 3308. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    // initialise variables
    @IBOutlet weak var gallons: UITextField!
    var gallonsTotal: Float32!
    @IBOutlet weak var miles: UITextField!
    var milesDriven: Float32!
    var calculation: Float32!
    var calculation2: String!

    @IBOutlet weak var Calculation: UILabel!



override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
        
    }
    
    //when button is presed, close keyboard, get variables, calculate mpg
    @IBAction func Calculate() {
        self.view.endEditing(true)
        getVariables()
        calculategasmileage()
        
        
        
    }
    
    //get string from UITextField
    func getVariables(){
        //get desired string from UITextField convert to int
        milesDriven = (miles.text as NSString).floatValue
        gallonsTotal = (gallons.text as NSString).floatValue
        
    }
    
    
    func calculategasmileage() -> Float32 {
        calculation = milesDriven / gallonsTotal
        println(calculation)
        let calculation2 = NSString(format: "%.2f", calculation)
        self.Calculation.text = calculation2
        return calculation
    
    }


}

