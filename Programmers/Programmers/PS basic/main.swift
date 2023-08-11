//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/12.
//

import Foundation

// MARK: 짝수는 싫어요
func solution(_ n: Int) -> [Int] {
	guard n >= 1 && n <= 100 else { return [] }
	return (1..<n).filter { $0 % 2 == 1}
	
}

print(solution(101))
 
print(solution(14))
