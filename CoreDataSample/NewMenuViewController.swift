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

    @IBOutlet weak var menuTextField: UITextField!
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
        if let mText = menuTextField.text{
            
            coreDataStack.insetNewMenu(mText)
            
        }
        disMis()
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
