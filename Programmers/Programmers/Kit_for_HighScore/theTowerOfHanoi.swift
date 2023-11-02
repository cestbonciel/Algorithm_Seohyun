//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/11/02.
//

import Foundation
//MARK: 하노이의 탑 - 구현


func solution(_ n:Int) -> [[Int]] {
	 func hanoi(n: Int, start: Int, assist: Int, dest: Int) {
		  if n == 1 {
				answer.append([start, dest])
				return
		  }
		 hanoi(n: n - 1, start: start, assist: dest, dest: assist)
		  
		  answer.append([start, dest])
		  
		 hanoi(n: n - 1, start: assist, assist: start, dest: dest)
		  
	 }
	 
	 var answer: [[Int]] = []
	hanoi(n: n, start: 1, assist: 2, dest: 3)
	 
	 return answer
}
//func solution(_ n: Int) -> [[Int]] {
//
//	func switchElement(n: Int, start: Int, end: Int) -> [[Int]] {
//		if n >= 1 && n <= 15 {
//			if n == 1 {
//				return [[start, end]]
//			}
//			var arrs: [[Int]] = []
//			let mid = hanoi(start, end)
//			arrs.append(contentsOf: switchElement(n: n-1, start: start, end: mid))
//			arrs.append([start, end])
//			arrs.append(contentsOf: switchElement(n: n-1, start: mid, end: end))
//
//			return arrs
//		}
//		return []
//	}
//	return switchElement(n: n, start: 1, end: 3)
//}
//
//
//func hanoi(_ start: Int,_ destination: Int) -> Int {
//	switch start {
//	case 1:
//		switch destination {
//		case 2: return 3
//		case 3: return 2
//		default: return 0
//		}
//	case 2:
//		switch destination {
//		case 2: return 3
//		case 3: return 1
//		default: return 0
//		}
//	case 3:
//		switch destination {
//		case 1: return 2
//		case 2: return 1
//		default: return 0
//		}
//	default: return 0
//	}
//}

//let num = 2
//let squareNum = pow(Decimal(num), 3)
//print(squareNum)
//let countHanoi = squareNum - 1
//print(countHanoi)

//func hanoi(start: Int, des: Int, mid: Int, n: Int) -> [[Int]] {
//	var arr: [Int] = []
//	if n == 1 {
//		arr.append(contentsOf: [start, des])
//	} else {
//		hanoi(start: start, des: mid, mid: des, n: (n-1))
//		hanoi(start: start, des: des, mid: mid, n: 1)
//		hanoi(start: mid, des: des, mid: start, n: (n-1))
//	}
//	hanoi(start: 1, des: 3, mid: 2, n: n)
//	return [arr]
//	print([arr])
//}



//var array = [1, 2, 3]
//array.append(contentsOf: [3,4])
//
//print(array)


print(solution(3))
print("---")
print(solution(2))
