//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/14.
//

import Foundation

// MARK: 길이에 따른 연산 - 다른 풀이법

func solution2(_ num_list: [Int]) -> Int {
	return num_list.count >= 11 ? num_list.reduce(0, +) : num_list.reduce(1, *)
}

print(solution2([3, 4, 5, 2, 5, 4, 6, 7, 3, 7, 2, 2, 1]))
