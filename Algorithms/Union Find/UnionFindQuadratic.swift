//
//  UnionFindQuadratic.swift
//  Algorithms
//
//  Created by Kamil Tustanowski on 10/06/2019.
//  Copyright © 2019 Kamil Tustanowski. All rights reserved.
//

import Foundation

/// First iteration to understand the base principle.
/// Complexity O(N*N) - Quadratic algorithm.
public struct UnionFindQuadratic: UnionFindable {
    private(set) var elements: [Int]
    
    public init(size: Int) {
        elements = [Int]()
        for index in 0 ..< size {
            elements.append(index)
        }
    }
    
    public func isConnected(first: Int, second: Int) -> Bool {
        return elements[first] == elements[second]
    }
    
    public mutating func union(first: Int, second: Int) {
        let firstId = elements[first]
        let secondId = elements[second]
        
        self.elements = elements.enumerated().map { _, element in
            element == firstId ? secondId : element
        }
    }
}
