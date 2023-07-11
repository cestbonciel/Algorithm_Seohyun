//
//  main6.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved on 2022/11/10

import Foundation

// MARK: 짝수의 합
func solution(_ n:Int) -> Int {
	var sum = 0
	for i in 0...n {
		if i % 2 == 0 { sum += i }
	}
	return sum
}

/*
func solution(_ n:Int) -> Int {
	var result = 0
 // for 문 안 if 문 대신 where 조건 사용해서 코드 조금이라도 줄일 순 있다.
	for i in 1...n where i % 2 == 0 {
		result += i
	}
	return result
}
*/
print(solution(5))
