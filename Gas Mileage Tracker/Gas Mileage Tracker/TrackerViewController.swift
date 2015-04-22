//
//  SecondViewController.swift
//  Gas Mileage Tracker
//
//  Created by Jacob Brauchler on 2/18/15.
//  Copyright (c) 2015 3308. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    var milesDriven: Float32!
    var calculation: Float32!
    var gallonsTotal: Float32!
    var sortedKeys:[Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /**
        <#Description#> Do any additional setup after loading the view, typically from a nib.
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        /**
        *  <#Description#> Dispose of any resources that can be recreated.
        *
        *  @param UITableView <#UITableView description#>
        *  @param Int         <#Int description#>
        *
        *  @return <#return value description#>
        */
    }
    //http://www.raywenderlich.com/75289/swift-tutorial-part-3-tuples-protocols-delegates-table-views
    //hey guys I found code similar to what I think we want to do, I got started but don't have it working quite yet. 
    //func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return sortedKeys.count
    //}
    
    func TableView(TableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        
        cell.textLabel?.text = "\(calculation)%:"
        cell.detailTextLabel?.text = String(format:"milesDriven: $%0.2f, gallonsTotal: $%0.2f, calculation",milesDriven, gallonsTotal, calculation)
        return cell
        /**
        *  <#Description#> load table
        */
    }


}

