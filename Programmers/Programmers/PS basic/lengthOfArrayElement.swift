//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/02.
//

import Foundation

// MARK: 배열 원소의 길이

func solution(_ strlist: [String]) -> [Int] {
	var arrInt: [Int] = []
	if strlist.count >= 1 && strlist.count <= 100 {
		strlist.forEach {
			arrInt += Array<Int>(arrayLiteral: $0.count)
		}
	}
	return arrInt
}


print(solution(["we", "are", "the", "world!"]))

func solution2(_ strlist: [String]) -> [Int] {
	return strlist.map({$0.count})
}

print(solution2(["I", "Love", "Programmers."]))

