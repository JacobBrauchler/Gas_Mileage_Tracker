//
//  Menu.swift
//  CoreDataSample
//
//  Created by Devon Connor on 4/22/15.
//  Copyright (c) 2015 Devon Connor. All rights reserved.
//

import Foundation
import CoreData

class Menu: NSManagedObject {

    @NSManaged var menuText: String
    @NSManaged var createdAt: NSDate

}
