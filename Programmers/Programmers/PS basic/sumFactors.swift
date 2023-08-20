//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/20.
//

import Foundation

//MARK: 약수구하기

func solution(_ n: Int) -> Int {
	var sum = 0
	if n == 0 {
		return 0
	} else if n <= 3000 {
		return (1...n).filter { n % $0 == 0 }.reduce ( sum, +)
	}
	return sum
}
print(solution(12))
print(solution(5))

//MARK: 약수구하기 - 간소화 코드 버전
func solution2(_ n: Int) -> Int {
	return n != 0 ? (min(n,1)...n).filter { n % $0 == 0 }.reduce(0, +) : 0
}

print(solution2(24))
