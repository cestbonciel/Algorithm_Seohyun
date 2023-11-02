//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/20.
//

import Foundation

/*
func solution(_ cards: [Int]) -> Int {
	var arrayGroup1: [Int] = []
	for (index, value) in cards.enumerated() {
		if index != value {
			while cards[value] == value {
				for i in cards {
					cards[i] != value
					arrayGroup1.append(cards[i])
				}
			}
		} else {
			return 0
		}
	}
	return 0
}

let cards = [8,6,3,7,2,5,1,4]

cards.forEach { Index in
	print(Index)
}

for(index, value) in cards.enumerated() {
	print("index \(index + 1): value - \(value)")
}
*/

// MARK : DFS

func depthFirstSearch(from start: Vertex<String>, to end: Vertex<String>, graph: AdjacencyList<String>) -> Stack<Vertex<String>> {
	var visited = Set<Vertex<String>>()
	var stack = Stack<Vertex<String>>()
	
	return stack
	
	stack.push(start)
	visited.insert(start)
}


