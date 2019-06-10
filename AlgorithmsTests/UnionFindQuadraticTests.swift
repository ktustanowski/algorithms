//
//  AlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Kamil Tustanowski on 10/06/2019.
//  Copyright © 2019 Kamil Tustanowski. All rights reserved.
//

import XCTest
@testable import Algorithms

class AlgorithmsTests: XCTestCase {
    private var sut: UnionFindQuadratic!
    
    override func setUp() {
        super.setUp()
        
        sut = UnionFindQuadratic(size: 10)
        UnionFindTestData.makeSmall().forEach { sut.union(first: $0.first,
                                                          second: $0.second) }
    }

    func testUnionDidFindFirstComponent() {
        // 0
        XCTAssertEqual(sut.isConnected(first: 0, second: 1), true)
        XCTAssertEqual(sut.isConnected(first: 0, second: 2), true)
        XCTAssertEqual(sut.isConnected(first: 0, second: 5), true)
        XCTAssertEqual(sut.isConnected(first: 0, second: 6), true)
        XCTAssertEqual(sut.isConnected(first: 0, second: 7), true)
        // 1
        XCTAssertEqual(sut.isConnected(first: 1, second: 0), true)
        XCTAssertEqual(sut.isConnected(first: 1, second: 2), true)
        XCTAssertEqual(sut.isConnected(first: 1, second: 5), true)
        XCTAssertEqual(sut.isConnected(first: 1, second: 6), true)
        XCTAssertEqual(sut.isConnected(first: 1, second: 7), true)
        // 2
        XCTAssertEqual(sut.isConnected(first: 2, second: 0), true)
        XCTAssertEqual(sut.isConnected(first: 2, second: 1), true)
        XCTAssertEqual(sut.isConnected(first: 2, second: 5), true)
        XCTAssertEqual(sut.isConnected(first: 2, second: 6), true)
        XCTAssertEqual(sut.isConnected(first: 2, second: 7), true)
        // 5
        XCTAssertEqual(sut.isConnected(first: 5, second: 0), true)
        XCTAssertEqual(sut.isConnected(first: 5, second: 1), true)
        XCTAssertEqual(sut.isConnected(first: 5, second: 2), true)
        XCTAssertEqual(sut.isConnected(first: 5, second: 6), true)
        XCTAssertEqual(sut.isConnected(first: 5, second: 7), true)
        // 6
        XCTAssertEqual(sut.isConnected(first: 6, second: 0), true)
        XCTAssertEqual(sut.isConnected(first: 6, second: 1), true)
        XCTAssertEqual(sut.isConnected(first: 6, second: 2), true)
        XCTAssertEqual(sut.isConnected(first: 6, second: 5), true)
        XCTAssertEqual(sut.isConnected(first: 6, second: 7), true)
        // 7
        XCTAssertEqual(sut.isConnected(first: 7, second: 0), true)
        XCTAssertEqual(sut.isConnected(first: 7, second: 1), true)
        XCTAssertEqual(sut.isConnected(first: 7, second: 2), true)
        XCTAssertEqual(sut.isConnected(first: 7, second: 5), true)
        XCTAssertEqual(sut.isConnected(first: 7, second: 6), true)
    }
    
    func testUnionDidFindSecondComponent() {
        // 3
        XCTAssertEqual(sut.isConnected(first: 3, second: 4), true)
        XCTAssertEqual(sut.isConnected(first: 3, second: 8), true)
        XCTAssertEqual(sut.isConnected(first: 3, second: 9), true)
        // 4
        XCTAssertEqual(sut.isConnected(first: 4, second: 3), true)
        XCTAssertEqual(sut.isConnected(first: 4, second: 8), true)
        XCTAssertEqual(sut.isConnected(first: 4, second: 9), true)
        // 8
        XCTAssertEqual(sut.isConnected(first: 8, second: 4), true)
        XCTAssertEqual(sut.isConnected(first: 8, second: 3), true)
        XCTAssertEqual(sut.isConnected(first: 8, second: 9), true)
        // 9
        XCTAssertEqual(sut.isConnected(first: 9, second: 4), true)
        XCTAssertEqual(sut.isConnected(first: 9, second: 8), true)
        XCTAssertEqual(sut.isConnected(first: 9, second: 3), true)
    }

    func testComponentsAreNotConnected() {
        // 3
        XCTAssertEqual(sut.isConnected(first: 3, second: 0), false)
        XCTAssertEqual(sut.isConnected(first: 3, second: 1), false)
        XCTAssertEqual(sut.isConnected(first: 3, second: 2), false)
        XCTAssertEqual(sut.isConnected(first: 3, second: 6), false)
        XCTAssertEqual(sut.isConnected(first: 3, second: 7), false)
        // 4
        XCTAssertEqual(sut.isConnected(first: 4, second: 0), false)
        XCTAssertEqual(sut.isConnected(first: 4, second: 1), false)
        XCTAssertEqual(sut.isConnected(first: 4, second: 2), false)
        XCTAssertEqual(sut.isConnected(first: 4, second: 6), false)
        XCTAssertEqual(sut.isConnected(first: 4, second: 7), false)
        // 8
        XCTAssertEqual(sut.isConnected(first: 8, second: 0), false)
        XCTAssertEqual(sut.isConnected(first: 8, second: 1), false)
        XCTAssertEqual(sut.isConnected(first: 8, second: 2), false)
        XCTAssertEqual(sut.isConnected(first: 8, second: 6), false)
        XCTAssertEqual(sut.isConnected(first: 8, second: 7), false)
        // 9
        XCTAssertEqual(sut.isConnected(first: 9, second: 0), false)
        XCTAssertEqual(sut.isConnected(first: 9, second: 1), false)
        XCTAssertEqual(sut.isConnected(first: 9, second: 2), false)
        XCTAssertEqual(sut.isConnected(first: 9, second: 6), false)
        XCTAssertEqual(sut.isConnected(first: 9, second: 7), false)
        // 1
        XCTAssertEqual(sut.isConnected(first: 1, second: 4), false)
        XCTAssertEqual(sut.isConnected(first: 1, second: 8), false)
        XCTAssertEqual(sut.isConnected(first: 1, second: 9), false)
        // 2
        XCTAssertEqual(sut.isConnected(first: 2, second: 4), false)
        XCTAssertEqual(sut.isConnected(first: 2, second: 8), false)
        XCTAssertEqual(sut.isConnected(first: 2, second: 9), false)
        // 5
        XCTAssertEqual(sut.isConnected(first: 5, second: 4), false)
        XCTAssertEqual(sut.isConnected(first: 5, second: 8), false)
        XCTAssertEqual(sut.isConnected(first: 5, second: 9), false)
        // 6
        XCTAssertEqual(sut.isConnected(first: 6, second: 4), false)
        XCTAssertEqual(sut.isConnected(first: 6, second: 8), false)
        XCTAssertEqual(sut.isConnected(first: 6, second: 9), false)
        // 7
        XCTAssertEqual(sut.isConnected(first: 7, second: 4), false)
        XCTAssertEqual(sut.isConnected(first: 7, second: 8), false)
        XCTAssertEqual(sut.isConnected(first: 7, second: 9), false)
    }
}
