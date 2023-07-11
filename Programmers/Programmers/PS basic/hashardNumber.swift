//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// solved 2022/08/18

import Foundation

// MARK: 하샤드 수
/*
양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 한다. 예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수다.
 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, 반환되는 값은 Bool 값 이어야함.
*/

func solution(_ x:Int) -> Bool {
	var sum = 0
	for i in String(x){
		guard let number = Int(String(i)) else { break }
		sum += number
	}
	return x % sum == 0
}

print(solution(72))
