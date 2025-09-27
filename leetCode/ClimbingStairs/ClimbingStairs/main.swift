//
//  main.swift
//  ClimbingStairs
//
//  Created by Nat Kim on 9/27/25.
//

import Foundation
/*
 Example 1:

 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 Example 2:

 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step

 
 */
// MARK: - Climbing Stairs (related to DP, Fibonacci numbers)
class Solution {
	func climbStairs(_ n: Int) -> Int {
		if n <= 1 {
			return 1
		}
		
		var dp = Array(repeating: 0, count: n + 1)
		dp[0] = 1
		dp[1] = 1
		
		for i in 2...n {
			dp[i] = dp[i - 1] + dp[i - 2]
		}
		
		return dp[n]
	}
}

let sol = Solution()

print("n = 1, result = \(sol.climbStairs(1))")
print("n = 2, result = \(sol.climbStairs(2))")
print("n = 3, result = \(sol.climbStairs(3))")
print("n = 5, result = \(sol.climbStairs(5))")

