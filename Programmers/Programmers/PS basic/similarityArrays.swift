//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/07.
//

import Foundation

// MARK: 배열의 유사도
/*
 제한사항
 s1, s2 길이 1~100
 s1, s2 는 중복된 원소를 갖지 않는다.
 (-> 알파벳 소문자 조건처리는 따로 안했다.)
 */
func solution(_ s1: [String], _ s2: [String]) -> Int {
	var similarity: Int = 0
	for x in s1 {
		if s2.contains(x) {
			similarity += 1
		}
	}
	return similarity
}

print(solution(["a", "b", "c"], ["com", "b", "d", "p", "c"]))


// MARK: 풀이법 2
//Set 집합의 중복된 원소 허용 안된다는 조건 -> intersection ( 교집합 ) : 공통된 원소값 반환함
func solution2(_ s1: [String], _ s2: [String]) -> Int {
	guard (s1.count >= 1 && s1.count <= 100), (s2.count >= 1 && s2.count <= 100) else {
		return 0
	}
	return Set(s1).intersection(Set(s2)).count
}

print(solution2( ["a", "b", "c"], ["com", "b", "d", "p", "c"]))
