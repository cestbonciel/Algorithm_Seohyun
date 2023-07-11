//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved 2022/09/01

import Foundation

// MARK: 나머지가 1이 되는 수

func solution(_ n:Int) -> Int {
	var output = 1
	while n % output != 1 {
		output += 1
	}
	return output
}

print(solution(10))
