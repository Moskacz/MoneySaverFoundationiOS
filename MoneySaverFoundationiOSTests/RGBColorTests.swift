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
    
}
