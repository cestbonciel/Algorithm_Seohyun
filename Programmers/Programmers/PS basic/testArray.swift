//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/24.
//

import Foundation
//MARK: - Array 의 Element 값으로 접근
let num_list = [5, 2, 1, 7, 5]
for i in num_list {
	print("index: \(i)")
}
print("divider:----")
//MARK: - Index순서 로 접근
for j in 0...num_list.count {
	print("index2: \(j)")
}
