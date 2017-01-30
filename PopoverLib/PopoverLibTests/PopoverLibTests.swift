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
    }
    
    override func tearDown() {
        super.tearDown()
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
        XCTAssertNotNil(baseAlert.alertActions)
        XCTAssertNotNil(baseAlert.alertBanner)
        XCTAssertNotNil(baseAlert.alertActions)
        XCTAssertNotNil(baseAlert.alertContent)
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
