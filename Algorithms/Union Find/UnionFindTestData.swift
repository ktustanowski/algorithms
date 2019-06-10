//
//  UnionFind.swift
//  AlgorithmsTests
//
//  Created by Kamil Tustanowski on 10/06/2019.
//  Copyright © 2019 Kamil Tustanowski. All rights reserved.
//

import Foundation

public struct UnionFindTestData {
    public static func makeSmall() -> [(first: Int, second: Int)] {
        return [(first:4, second: 3),
                (first:3, second: 8),
                (first:6, second: 5),
                (first:9, second: 4),
                (first:2, second: 1),
                (first:8, second: 9),
                (first:5, second: 0),
                (first:7, second: 2),
                (first:6, second: 1),
                (first:1, second: 0),
                (first:6, second: 7)]
    }
}
