//: [Previous](@previous)
import Foundation
import Algorithms

/*:
# Union Find
 Definitelly check out the:
- https://www.coursera.org/learn/algorithms-part1
- https://algs4.cs.princeton.edu/15uf/
 */

var unionFindQuadratic = UnionFindQuadratic(size: 10)
UnionFindTestData.makeSmall().forEach { unionFindQuadratic.union(first: $0.first,
                                                                 second: $0.second) }
//: [Next](@next)
