//
//  main5.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// Solved on 2022/11/06

import Foundation

//MARK: 각도기

func solution(_ angle:Int) -> Int {
	//제한사항 추가
	guard angle > 0, angle <= 180 else { return 0 }
	switch angle{
	case 1..<90:
		return 1
	case 90:
		return 2
	case 91..<180:
		return 3
	case 180:
		return 4
	default:
		return 0
	}
	
}

print(solution(175))
