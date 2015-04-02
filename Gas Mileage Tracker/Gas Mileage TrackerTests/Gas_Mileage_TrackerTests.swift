//
//  Gas_Mileage_TrackerTests.swift
//  Gas Mileage TrackerTests
//
//  Created by Jacob Brauchler on 2/18/15.
//  Copyright (c) 2015 3308. All rights reserved.
//

import UIKit
import XCTest
import Gas_Mileage_Tracker


class Gas_Mileage_TrackerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTest() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    func testViewDidLoad1()
        
    {
        
        let v = FirstViewController()
        XCTAssertNotNil(v.view, "View Did Not load")
    }
    
    func testViewDidLoad2()
    {
        
        let v = SecondViewController()
        XCTAssertNotNil(v.view, "View Did Not load")
    }
    func testMath()
    {
        var answer : Float32!
        answer = 2.00
        let obj = FirstViewController()
        obj.gallonsTotal = 10;
        obj.milesDriven = 20;
        obj.calculategasmileage()
        XCTAssertEqual(obj.calculation, answer, "Incorect Value ")
    }
    



    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    

    
}
