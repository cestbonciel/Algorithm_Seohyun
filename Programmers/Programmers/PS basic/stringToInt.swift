//
//  stringToInt.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/14.
//

import Foundation
// 문자열을 변수로 전환하기
func solution(_ n_str:String) -> Int {
	guard n_str.count >= 1 && n_str.count <= 5 else { return 0 }
	return Int(n_str) ?? 0
}

//print(solution("8542"))
