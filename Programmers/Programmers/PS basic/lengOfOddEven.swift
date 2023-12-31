//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/09/08.
//

import Foundation

//MARK: 짝수 홀수 개수
func solution(_ num_list: [Int]) -> [Int] {
	//MARK: - 제한사항1: num_list 길이
	guard num_list.count >= 1 && num_list.count <= 100 else { return [] }
	var oddNumSequence: [Int] = []
	var evenNumSequence: [Int] = []
	var composition: [Int] = []
	for i in num_list {
		// MARK: - 제한사항2: num_list의 원소
		if i >= 0 && i <= 1000 {
			if i % 2 == 1 {
				oddNumSequence.append(i)
			} else {
				evenNumSequence.append(i)
			}
		}
	}
	composition.insert(evenNumSequence.count, at: 0)
	composition.insert(oddNumSequence.count, at: 1)
	return composition
}
print(solution([1, 2, 3, 4, 5]))
print(solution([1, 3, 5, 7]))
