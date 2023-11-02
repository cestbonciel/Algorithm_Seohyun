//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/20.
//

import Foundation

// MARK: 혼자 놀기의 달인 - 보류중 ( DFS 문제 )

//func solution(_ cards: [Int]) -> Int {
//	// 방문했던 상자의 번호들의 1번 그룹
//	var arrayGroup1: [Int] = []
//	var needVisitStack: [Int] = []
//	while !needVisitStack.isEmpty {
//		let node: Int = needVisitStack.removeLast()
//		if arrayGroup1.contains(node) { continue }
//
//		arrayGroup1.append(node)
//		needVisitStack += cards[node] ?? []
//	}
//	return Int(arrayGroup1.count)
//}
//
//print(solution([8,6,3,7,2,5,1,4]))
