//
//  RGBColorTests.swift
//  MoneySaverFoundationiOSTests
//
//  Created by Michal Moskala on 02.10.2017.
//  Copyright © 2017 Michal Moskala. All rights reserved.
//

import XCTest
@testable import MoneySaverFoundationiOS

class RGBColorTests: XCTestCase {
    
    func test_valueBoundedBy_whenValueLowerThanLowerBound_thenShouldReturnLowerBound() {
        let range: Range<CGFloat> = 0.0..<1.0
        let val = MoneySaverFoundationiOS.value(-10, boundedBy: range)
        XCTAssertEqual(val, 0.0)
    }
    
    func test_valueBoundedBy_whenValueGreaterThatUpperBound_thenShouldReturnUpperBound() {
        let range: Range<CGFloat> = 0.0..<1.0
        let val = MoneySaverFoundationiOS.value(10, boundedBy: range)
        XCTAssertEqual(val, 1.0)
    }
    
    func test_valueBoundedBy_whenRangeContainsRange_thenShouldReturnValue() {
        let range: Range<CGFloat> = 0.0..<1.0
        let val = MoneySaverFoundationiOS.value(0.3, boundedBy: range)
        XCTAssertEqual(val, 0.3)
    }
    
    func test_whenInitializingRGBAColorFromColor_thenComponentsShouldBeComputed() {
        let color = RGBAColor(color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        XCTAssertNotEqual(color.red, 0.0)
        XCTAssertNotEqual(color.green, 0.0)
        XCTAssertNotEqual(color.blue, 0.0)
        XCTAssertNotEqual(color.alpha, 0.0)
    }
    
    func test_whenInitializingRGBAColorFromColor_thenComponentsShouldBeIn0to1Range() {
        let color = RGBAColor(color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        let expectedRange: ClosedRange<CGFloat> = 0.0...1.0
        XCTAssertTrue(expectedRange.contains(color.red))
        XCTAssertTrue(expectedRange.contains(color.green))
        XCTAssertTrue(expectedRange.contains(color.blue))
        XCTAssertTrue(expectedRange.contains(color.alpha))
    }
    
    func test_whenInitializingRGBAColorFromValue_thenComponentsShouldBeIn0to1Range() {
        let color = RGBAColor(red: -1, green: 1, blue: 1.2, alpha: 0.5)
        XCTAssertEqual(color.red, 0.0)
        XCTAssertEqual(color.green, 1.0)
        XCTAssertEqual(color.blue, 1.0)
        XCTAssertEqual(color.alpha, 0.5)
    }
    
}
