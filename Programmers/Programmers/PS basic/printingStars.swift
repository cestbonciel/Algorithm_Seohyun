//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/11.
// solved 2022/08/03

import Foundation

//MARK: 직사각형 별찍기

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])
var star = String(repeating: "*", count: a)
for _ in 0..<b {
	print(star)
}



