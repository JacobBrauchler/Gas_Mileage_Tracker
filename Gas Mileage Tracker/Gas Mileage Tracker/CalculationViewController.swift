//
//  FirstViewController.swift
//  Gas Mileage Tracker
//
//  Created by Jacob Brauchler on 2/18/15.
//  Copyright (c) 2015 3308. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    @IBOutlet weak var GetMiles: UITextField!
    @IBOutlet weak var GetGallons: UITextField!
    @IBOutlet weak var MpgCalc: UITextField!
    @IBAction func CalculatePressed(sender: AnyObject) {
    }
    func calculategasmileage(milesdriven: Int, gaspurchased: Int) -> Int {
        var calculation = milesdriven / gaspurchased
        return calculation
    
    }


}

