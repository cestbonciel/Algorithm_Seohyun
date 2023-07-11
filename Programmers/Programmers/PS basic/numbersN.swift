//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// solved 2022/08/11

import Foundation

// MARK: x 만큼 간격이 있는 n 개의 숫자
func solution(_ x:Int, _ n:Int) -> [Int64] {
	var array = [Int64]()
	for i in 1...n{
	   array.append(Int64(x*i))
	}
	return array
}

print(solution(2, 5))
