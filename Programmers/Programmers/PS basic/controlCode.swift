//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/20.
//

import Foundation

// MARK: 코드 처리하기

func solution(_ code: String) -> String {
	var mode = false
	var ret: String = String()
	
	for (idx, char) in code.enumerated() {
		if char == "1" {
			mode.toggle()
			continue
		}
		
		if mode {
			if idx % 2 == 1 {
				ret.append(char)
			}
		} else {
			if idx % 2 == 0 {
				ret.append(char)
			}
		}
	}
	return (ret.isEmpty ? "EMPTY" : ret)
}

print(solution("abc1abc1abc"))
print(solution("1bccdsc1d"))


/*
 문제 해석
 **공통점**
 `mode` 가 일종의 `bool` 값이 될 수 있다. mode 가 0 아님 1

 `code` 라는 문자열을 쪼개고 그걸 인덱스로 접근
 `code[idx]` 가 “1” 이면 mode 의 bool 값이 혹은 0,1 이 바뀜 반대 값으로

 - `code[idx]` 문자가 “1” 인지 아닌지 조건.
 - mode 가 0 일때, 짝수면 `Character` 추가, 홀수면 추가
 - mode가 1일때 (반대 경우)
	 - “1” 아니면 추가
	 - “1” 이면 `mode` 는 1 → 0

 시작할 때 `mode` 는 0 ( 초깃값 0 ) 또는 `Bool`로 해서 `false`

 ret 이 빈문자열이면 “EMPTY” 반환
 */
