//
//  main3.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved on 2022/11/03

import Foundation

// MARK: 배열 두 배 만들기

func solution(_ numbers:[Int]) -> [Int] {
	var double: [Int] = [Int]()
	for i in numbers {
		double.append(i * 2)
	}
	return double
}

print(solution([2, 4, 6]))
 
/*간략한 코드
 func solution(_ numbers:[Int]) -> [Int] {
	numbers.map({ $0 * 2})
 }
 */

