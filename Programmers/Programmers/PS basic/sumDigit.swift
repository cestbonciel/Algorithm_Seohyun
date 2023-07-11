//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved on 2022/09/15


import Foundation

// MARK: 자릿수 더하기

func solution(_ n:Int) -> Int {
	var answer:Int = 0
	let string = String(n).map{String($0)}
	// [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
	for number in 0..<string.count{
		answer += Int(string[number])!
	}
	return answer
}

print(solution(987))
