//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
	let even = Int(num_list.filter { $0 % 2 == 0 }.map { String($0) }.joined())!
	let odd = Int(num_list.filter{ $0 % 2 != 0 }.map { String($0)}.joined())!
	return even + odd
}

print(solution([2, 4, 9, 1]))
