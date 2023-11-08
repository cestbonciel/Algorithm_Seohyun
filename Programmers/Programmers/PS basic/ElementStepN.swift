//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/11/08.
//

import Foundation

func solution(_ num_list: [Int],_ n: Int) -> [Int] {
	return stride(from: num_list.startIndex, to: num_list.count, by: n).map { num_list[$0] }
}



