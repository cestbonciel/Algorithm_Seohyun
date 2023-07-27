//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/28.
//

import Foundation

func solution(_ myString:String) -> String {
	guard myString.count >= 1 && myString.count <= 100000 else { return "" }
	return myString.uppercased()
}

print(solution("aBcDeFg"))
print(solution("tim cook"))
