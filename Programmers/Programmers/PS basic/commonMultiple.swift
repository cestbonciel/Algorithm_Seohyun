//
//  main2.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
//

import Foundation

// MARK: 공배수
func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
	guard (number >= 10 && number <= 100),(n >= 2 && n < 10), (m >= 2 && m < 10) else { return 0 }
	return (number % n == 0 && number % m == 0 ? 1 : 0)

}

print(solution(55, 10, 5))
print(solution(60, 2, 3))
