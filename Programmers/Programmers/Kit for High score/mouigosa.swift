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
print("******[ 접근방식 풀이 증명 ]*******")
// 정답지 a
let a = [1, 3, 2, 4, 2]
// 각각의 학생들이 반복적으로 답을 찍는 유형의 배열 3가지
let studentA = [1, 2, 3, 4, 5]
let studentB = [2, 1, 2, 3, 2, 4, 2, 5]
let studentC = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
var sum: [Int] = [0, 0, 0]

for i in 0..<a.count {
	let aIdx = i % studentA.count
	let bIdx = i % studentB.count
	let cIdx = i % studentC.count
	print("정답의 답:\(a[i])")
	if a[i] == studentA[aIdx] {
		sum[0] += 1
		print("학생 A: \(sum[0])")
	}
	if a[i] == studentB[bIdx] {
		sum[1] += 1
		print("학생 B: \(sum[1])")
	}
	if a[i] == studentC[cIdx] {
		sum[2] += 1
		print("학생 C: \(sum[2])")
	}
	print(sum)
}
