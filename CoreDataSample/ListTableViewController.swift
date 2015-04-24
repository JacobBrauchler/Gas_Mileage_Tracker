//
//  ListTableViewController.swift
//  CoreDataSample
//
//  Created by Devon Connor on 4/22/15.
//  Copyright (c) 2015 Devon Connor. All rights reserved.
//

import UIKit
import CoreData
class ListTableViewController: UITableViewController , NSFetchedResultsControllerDelegate{
    
    

    var fetchedResultsController: NSFetchedResultsController{
        if _fetchedResultsController != nil {
            return _fetchedResultsController!
        }
        
        let fRequest = fetchRequest()
        let aFetchedResultsController = NSFetchedResultsController(fetchRequest: fRequest, managedObjectContext: coreDataStack.managedObjectContext!, sectionNameKeyPath: nil, cacheName: nil)
        
        aFetchedResultsController.delegate = self
        _fetchedResultsController = aFetchedResultsController
        
        var error: NSError? = nil
        if !_fetchedResultsController!.performFetch(&error) {
            
        }
        return _fetchedResultsController!
    
    }
    
    var _fetchedResultsController: NSFetchedResultsController? = nil
    
    func fetchRequest() ->NSFetchRequest {
        
        let fetchRequest = NSFetchRequest(entityName: "Menu")
        
        //set the batch size to a suitable number
        fetchRequest.fetchBatchSize = 20
        // Edit the sort key
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: false)
        
        fetchRequest.sortDescriptors = [sortDescriptor]
        return fetchRequest
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchedResultsController.performFetch(nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func controllerDidChangeContent(controller: NSFetchedResultsController) {
        self.tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let menus = self.fetchedResultsController.fetchedObjects as [Menu]
        return menus.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        let menu = self.fetchedResultsController.objectAtIndexPath(indexPath) as Menu
        cell.textLabel?.text = menu.menuText
        return cell
    }
    


   /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    
*/
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
*/
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
