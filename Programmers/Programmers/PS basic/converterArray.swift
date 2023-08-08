//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/09.
//


import Foundation

// MARK: 조건에 맞게 수열 변환하기 3
func solution(_ arr:[Int], _ k:Int) -> [Int] {
	var result: [Int] = []
	for i in arr {
		k % 2 == 1 ? result.append(i * k) : result.append(i + k)
	}
	return result
}
print(solution([1, 2, 3, 100, 99, 98], 3))
print(solution([1, 2, 3, 100, 99, 98], 2))

