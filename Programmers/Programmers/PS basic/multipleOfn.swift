//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved on 2023/07/07

import Foundation

// MARK: n의 배수

func solution(_ num:Int, _ n:Int) -> Int {
	return num % n == 0 ? 1 : 0
}

print(solution(31, 2))


/*
 제한사항 :
 2 <= num <= 100
 2 <= n <= 9
 추가하고 싶어서 제출 후 다른 사람의 코드를 보았다.
 
 1. guard (num <= 2 && num <= 100), ( n >= 2 && n <= 9), (num % n == 0) else { return 0 }
 또다른 방법
 2. guard 2...100 ~= num, 2...9 ~= n else { return -1 }
 ->  return -1 함수나 메서드에서 특정 조건에 대한 실패나 오류를 나타내는 값
 
 3. ~= : 범위연산자
 ~=(_:_:)
 [Range 값] ~= [하나의 값]
 static func ~= (pattern: Self, value: Self.Bound) -> Bool
 */


