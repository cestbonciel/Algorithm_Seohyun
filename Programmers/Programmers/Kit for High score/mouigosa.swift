//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/29.
//

import Foundation

//MARK: 모의고사, 완전탐색
func solution(_ answers: [Int]) -> [Int] {
	var matchSum: [Int] = [0, 0, 0]
	let supojaA = [1, 2, 3, 4, 5]
	let supojaB = [2, 1, 2, 3, 2, 4, 2, 5]
	let supojaC = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

	for i in 0..<answers.count {
		let aIndex = i % supojaA.count
		let bIndex = i % supojaB.count
		let cIndex = i % supojaC.count

		if answers[i] == supojaA[aIndex] {
			matchSum[0] += 1
		}
		if answers[i] == supojaB[bIndex] {
			matchSum[1] += 1
		}
		if answers[i] == supojaC[cIndex] {
			matchSum[2] += 1
		}
	}

	let maxScore = matchSum.max()!
	var studentRanking: [Int] = []
	for i in 0..<3 {
		if matchSum[i] == maxScore {
			studentRanking.append(i+1)
		}
	}
	return studentRanking.sorted()
}

print(solution([1, 3, 2, 4, 2]))
print(solution([1, 2, 3, 4, 5]))
print(solution([3, 3, 1, 1, 2, 2]))

