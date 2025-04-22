//
//  main.swift
//  examCharSet
//
//  Created by Nat Kim on 4/22/25.
//

import Foundation

/*
 [요구사항]
 1. 문자열 s 가 주어졌을 때, 단어만 추출해 String 배열로 반환하는
 extractWords(_:) 함수만들기
 2. 모든 문자는 구분자 -> ",", "!', " ", "_" 로 단어 경계 나눔
 3. 빈 문자열은 배열에 포함 제외 시키기.
 
 HINT: CharacterSet.alphanumerics.inverted 를 활용해 구현하라
 제약:
 1 <= s.count <= 10_000
 2. 시간 복잡도 O(n)
 */


func extractWords(_ s: String) -> [String] {
    // 숫자, 알파벳 문자와 반대되는 것들
    let wordChars = CharacterSet.alphanumerics
    // 숫자, 알파벳 문자의 나머지 문자들
    let separators = wordChars.inverted
    
    let parts = s.components(separatedBy: separators)
    
    let words = parts.filter { !$0.isEmpty }
    
    return words
}

//let strs = "Hello, world! 123 apple_banana"
//print(extractWords(strs))


print("단어로 추출할 문자열을 입력하세요", terminator: "")

guard let input = readLine(), !input.isEmpty else {
    print("입력이 없거나 잘못됨.")
    exit(0)
}

let words = extractWords(input)

print("추출된 단어: ", words)
