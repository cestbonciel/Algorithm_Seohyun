//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/13.
//

import Foundation

// MARK: 문자열의 앞의 n 글자
func solution(_ my_string: String,_ n: Int) -> String {
	guard my_string.count >= 1 && my_string.count <= 1000 else { return "" }
	return String(Array(my_string).prefix(n))
}
print(solution("ProgrammerS123", 11))
