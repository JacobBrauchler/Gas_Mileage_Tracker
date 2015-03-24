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
    var gallonsTotal: Int!
    @IBOutlet weak var miles: UITextField!
    var milesDriven: Int!
    var calculation: Int!




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
        milesDriven = miles.text.toInt()
        gallonsTotal = gallons.text.toInt()
        
    }
    
    
    func calculategasmileage() -> Int {
        calculation = milesDriven / gallonsTotal
        println(calculation)
        return calculation
    
    }


}

