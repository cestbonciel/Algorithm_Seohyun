//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/26.
//

import Foundation

// MARK: 중앙값 구하기
/*
중앙값 : 중앙. 모든 데이터를 크기 순으로 정렬해서 가운데에 있는 데이터를 선택
( 가운데에 있는 데이터가 둘이라면 두 수의 평균)
*/

/// 변수에 집어넣고  sort() 사용함.
func solution(_ array:[Int]) -> Int {
	var sortedArr: [Int] = array
	sortedArr.sort()
	var getValue = sortedArr[sortedArr.count / 2]
	return Int(getValue)
}

print(solution([1, 2, 7, 10, 11]))
print(solution([9, -1, 0]))

/// 상수 정렬 가능한 sorted()
func solution2(_ array: [Int]) -> Int {
	return array.sorted()[array.count / 2]
}

print(solution2([1, 2, 7, 10, 11]))
print(solution2([9, -1, 0]))
