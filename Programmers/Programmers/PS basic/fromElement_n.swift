//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/21.
//

import Foundation

//MARK: n번째 원소부터
func solution(_ num_list: [Int],_ n: Int) -> [Int] {
	var result: [Int] = []
	if n <= num_list.count {
		for index in 0..<num_list.count {
			if index >= n-1 {
				result.append(num_list[index])
			}
		}
	} else {
		print("try again.")
	}
	return result
}

print("testCase1:\(solution([5, 2, 1, 7, 5], 9))")
print("testCase2:\(solution([2, 1, 6], 3))")
print("testCase3:\(solution([5, 2, 1, 7, 5], 2))")

