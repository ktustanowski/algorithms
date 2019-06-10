//
//  UnionFindable.swift
//  Algorithms
//
//  Created by Kamil Tustanowski on 10/06/2019.
//  Copyright © 2019 Kamil Tustanowski. All rights reserved.
//

import Foundation

public protocol UnionFindable {
    func isConnected(first: Int, second: Int) -> Bool
    mutating func union(first: Int, second: Int)
}
