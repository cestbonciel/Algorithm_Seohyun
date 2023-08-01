//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/02.
//
import Foundation

// MARK: 편지
func solution(_ message: String) -> Int {
	if message.count >= 1 && message.count <= 50 {
		return Int((message.count) * 2)
	}
	return 0
}

print(solution("happy birthday!"))
print(solution("I love you~"))
