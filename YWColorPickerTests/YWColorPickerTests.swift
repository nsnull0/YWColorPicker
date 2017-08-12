//
//  YWColorPickerTests.swift
//  YWColorPickerTests
//
//  Created by Yoseph Wijaya on 2017/08/05.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import XCTest
@testable import YWColorPicker

class YWColorPickerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSubViewRoot() {
        let rootController:UIViewController = UIViewController()
        
        XCTAssertEqual(rootController.view.subviews.count, 0)
        
        let colorPicker:YWColorPicker = YWColorPicker(parent: rootController)
        
         XCTAssertEqual(rootController.view.subviews.count, 0)
        
        colorPicker.showColorPicker()
        
        XCTAssertEqual(rootController.view.subviews.count, 1)
        
        
    }
    
    func testRemoveSubViewRoot() {
        let rootController:UIViewController = UIViewController()
        
        let colorPicker:YWColorPicker = YWColorPicker(parent: rootController)
        
        colorPicker.showColorPicker()
        
        
        
        let expect:XCTestExpectation = XCTestExpectation.init(description: "Waiting Success")
        
        colorPicker.removeSelf(completion: {
            (finish) in
            expect.fulfill()
        })
        
        
        wait(for: [expect], timeout: 0.5)
        
        XCTAssertEqual(rootController.view.subviews.count, 0)
        
        
    }
    
}
