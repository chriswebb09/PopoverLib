//
//  PopoverLibTests.swift
//  PopoverLibTests
//
//  Created by Christopher Webb-Orenstein on 1/29/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import XCTest
@testable import PopoverLib

class PopoverLibTests: XCTestCase {
    
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
    
    func testBannerView() {
        let bannerView = BannerView()
        bannerView.layoutSubviews()
        bannerView.setTitle(title: "Banner")
        XCTAssertNotNil(bannerView)
        XCTAssertEqual(bannerView.titleLabel.text, "Banner")
    }
    
    func testContentView() {
        let contentView = ContentView()
        contentView.layoutSubviews()
        contentView.contentLabel.text = "Content"
        XCTAssertNotNil(contentView)
        XCTAssertEqual(contentView.contentLabel.text, "Content")
    }
    
    func testActions() {
        let actionView = ActionView()
        actionView.layoutSubviews()
        XCTAssertNotNil(actionView)
    }
    
    func testBaseAlert() {
        let baseAlert = BaseAlertView()
        baseAlert.layoutSubviews()
        XCTAssertNotNil(baseAlert)
    }
    
    func testAlert() {
        let alert = Alert()
        alert.layoutSubviews()
        alert.loadingView.setBannerTitle(title: "Banner")
        XCTAssertEqual(alert.loadingView.alertBanner.titleLabel.text, "Banner")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
