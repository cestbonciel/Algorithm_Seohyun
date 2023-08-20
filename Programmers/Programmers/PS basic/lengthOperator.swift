//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/14.
//

import Foundation

// MARK: 길이에 따른 연산
func solution(_ num_list: [Int]) -> Int {
	var multipleNum: Int = 1
	if num_list.count >= 11 {
		return num_list.reduce(0, {x, y in x + y})
	} else if num_list.count <= 10 {
		for i in num_list {
			multipleNum *= i
		}
		return multipleNum
	}
	return 0
}

print(solution([2, 3, 4, 5]))

