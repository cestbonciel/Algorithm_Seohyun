//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/03.
/// - Stack/Queue

import Foundation

// MARK: 기능 개발

func solution(_ progresses: [Int],_ speeds:[Int]) -> [Int] {
	var lastDate: Int = 0
	var numberOfReleaseWork: [Int] = []
//	var  countSum = 0
	for i in 0..<progresses.count {
		let progressWork = Double(progresses[i])
		let speedPerWork = Double(speeds[i])
		
		let releaseDay = Int(ceil((100 - progressWork) / speedPerWork))
		if releaseDay > lastDate {
			lastDate = releaseDay
//			countSum += 1
			numberOfReleaseWork.append(1)
			print("더해지는 수\(numberOfReleaseWork)")
		} else {
			numberOfReleaseWork[numberOfReleaseWork.count - 1] += 1
		}
	}
	return numberOfReleaseWork
}
print("첫번재 테스트케이스")
print(solution([93, 30, 55], [1, 30, 5]))
print("2번째 테스트케이스")
print(solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]))
