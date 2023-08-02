//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/03.
//

import Foundation

// MARK: 카운트 업
func solution(_ start: Int, _ end: Int) -> [Int] {
	var arrayInt: [Int] = []
	let rangeNumbers = start...end
	arrayInt += rangeNumbers
	return arrayInt
}


print(solution(3, 10))

// 제한사항까지 충족시키려면
func solution2(_ start: Int, _ end: Int) -> [Int] {
	return (start...end).filter { $0 >= 0 && $0 <= 50 }
}

print(solution2(2, 7))
