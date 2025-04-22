//
//  main.swift
//  dominoes
//
//  Created by Nat Kim on 10/5/24.
//

import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    let n = A.count / 2

    var dominos = [(Int, Int)]()
    for i in stride(from: 0, to: A.count, by: 2) {
        dominos.append((A[i], A[i+1]))
    }

    var maxChainArr = [Int](repeating: 1, count: n)
    var maxChainLength = 1

    for i in 1..<n {
        for j in 0..<i {
            if dominos[j].1 == dominos[i].0 {
                maxChainArr[i] = max(maxChainArr[i], maxChainArr[j] + 1)
            }
        }
        maxChainLength = max(maxChainLength, maxChainArr[i])
    }

    return n - maxChainLength
}


solution([5, 1, 2, 6, 6, 1, 3, 1, 4, 3, 4, 3, 4, 6, 1, 2, 4, 1, 6, 2])
