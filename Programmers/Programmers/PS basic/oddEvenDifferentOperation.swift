//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
//

import Foundation

// MARK: 홀짝에 따라 다른 값 반환하기
func solution(_ n: Int) -> Int {
	if n % 2 == 1 {
		return (1...n).filter { $0 % 2 == 1}.reduce(0, +)
	} else {
		return (1...n).filter { $0 % 2 == 0}.map { $0 * $0 }.reduce(0, +)
	}
	
}

print(solution(7))
