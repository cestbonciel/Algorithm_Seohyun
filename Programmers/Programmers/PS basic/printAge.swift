//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved on 2022/10/26

import Foundation

//MARK: 나이 출력

func solution(_ age:Int) -> Int {
	let ageGuess = (2022 - age) + 1
	return ageGuess
}

print(solution(35))
