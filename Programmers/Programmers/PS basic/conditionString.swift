//
//  main.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/07/15.
//

import Foundation

// MARK: 조건 문자열

func solution(_ ineq: String, _ eq: String, _ n: Int, _ m: Int) -> Int {
	switch ineq + eq {
	case ">=" : return n >= m ? 1 : 0
	case "<=" : return n <= m ? 1 : 0
	case ">!" : return n > m ? 1 : 0
	case "<!" : return n < m ? 1 : 0
	default: return 0
	}
}

func solution2(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
	if ineq == ">" {
		
		if eq == "=" {
			if n >= m {
				return 1
			} else {
				return 0
			}
		} else {
			if n > m {
				return 1
			} else {
				return 0
			}
		}
		
	} else {
		
		if eq == "=" {
			if n <= m {
				return 1
			} else {
				return 0
			}
		} else {
			if n < m {
				return 1
			} else {
				return 0
			}
		}
	}
	
}
print(solution2("<", "!", 45, 90))
print(solution2(">", "=", 20, 50))

/* 다른 풀이 방법 */
//func solution(_ ineq: String, _ eq: String, _ n: Int, _ m: Int) -> Int {
//	if ineq == "<" {
//		if eq == "=" {
//			return n <= m ? 1 : 0
//		} else {
//			return n < m ? 1 : 0
//		}
//	} else {
//		if eq == "!" {
//			return n > m ? 1 : 0
//		} else {
//			return n >= m ? 1 : 0
//		}
//	}
//}

//print(solution("<", "!", 78, 41))
//print(solution("<", "=", 20, 50))


