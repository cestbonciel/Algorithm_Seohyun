//
//  main4.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved 2022/11/03

import Foundation

// MARK: 숫자 비교하기
func solution(_ num1:Int, _ num2:Int) -> Int {
	return num1 != num2 ? -1 : 1
}

print(solution(3, 5))
print(solution(8, 8))
