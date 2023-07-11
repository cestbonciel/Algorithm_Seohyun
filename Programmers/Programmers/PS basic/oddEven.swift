//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved on 2022/09/15

import Foundation

// MARK: 짝수와 홀수

func solution(_ num:Int) -> String {
	if num % 2 == 0 {
		return "Even"
	} else {
		return "Odd"
	}
}

print(solution(26))
