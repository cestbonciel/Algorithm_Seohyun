//
//  main2.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved 2022/10/26

import Foundation

// MARK: 두 수의 차
func solution(_ num1:Int, _ num2:Int) -> Int {
	let a = num1
	let b = num2
	let minus = a - b
	return Int(minus)
}

print(solution(2023, 1998))

/* 간략한 코드
 func solution(_ num1:Int, _ num2:Int) -> Int {	 return num1 - num2 }
 */


