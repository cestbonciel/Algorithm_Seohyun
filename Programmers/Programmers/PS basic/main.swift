//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/28.
//

import Foundation
//MARK: 대문자 & 소문자로 바꾸기

func solution(_ myString:String) -> String {
	guard myString.count >= 1 && myString.count <= 100000 else { return "" }
	return myString.uppercased()
}

print(solution("aBcDeFg"))
print(solution("tim cook"))


func solution2(_ myString:String) -> String {
	if myString.count >= 1 && myString.count <= 100000{
		return myString.lowercased()
	}
	return ""
}

print(solution2("aBcDeFg"))
print(solution2("STEVE Jobs"))
