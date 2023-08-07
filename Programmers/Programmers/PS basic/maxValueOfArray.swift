//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/08.
//

import Foundation

// MARK: 최댓값 만들기(1)
/*
 이해포인트
 정수 배열의 크기 오름차순 -> 가장 큰 요소의 수 파악
 */
func solution(_ numbers: [Int]) -> Int {
	let ascendingOrder = numbers.sorted()
	guard numbers.count >= 2 && numbers.count <= 100  else { return 0 }
	return ascendingOrder[ascendingOrder.count - 1] * ascendingOrder[ascendingOrder.count - 2]
}
print(solution([0, 31, 24, 10, 1, 9]))
print(solution([1, 2, 3, 4, 5]))

// MARK: 두번째 풀이법
/*
 popLast() : Remove and returns the last element of the collection
 집합의 가장 마지막 요소를 제거하면서 반환해줌
 */
var nums = [0, 31, 24, 10, 1, 9].sorted()
// Nil-Coalescing Operator
let first = nums.popLast() ?? 0
let second = nums.popLast() ?? 0
print("첫번째 큰 요소: \(first)")
print("두번째 큰 요소: \(second)")
