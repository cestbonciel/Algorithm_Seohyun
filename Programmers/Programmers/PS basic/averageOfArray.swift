//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// solved 2022/09/01

import Foundation

// MARK: 배열의 평균값 구하기

func solution(_ arr:[Int]) -> Double {
	var num: Int = 0
	
	for i in arr{
	   num += i
	}
	return Double(num) / Double(arr.count)
}

print(solution([1,2,3,4,5,6,7,8,9,10]))
