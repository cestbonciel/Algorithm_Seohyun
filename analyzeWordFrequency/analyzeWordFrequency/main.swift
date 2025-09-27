//
//  main.swift
//  analyzeWordFrequency
//
//  Created by Nat Kim on 4/23/25.
//

import Foundation

// 📝 분석할 긴 텍스트를 여기에 직접 작성

let text = ""
// ✅ 단어 빈도 분석 함수
func analyzeWordFrequency(in text: String) -> (word: String, count: Int)? {
    let words = text
        .lowercased()  // 대소문자 통일
        .components(separatedBy: CharacterSet.alphanumerics.inverted) // 특수문자 제거
        .filter { !$0.isEmpty } // 빈 문자열 제거

    let frequency = Dictionary(grouping: words, by: { $0 })
        .mapValues { $0.count }

    if let maxEntry = frequency.max(by: { $0.value < $1.value }) {
        return (word: maxEntry.key, count: maxEntry.value)
    }
    return nil
}

// ✅ 실행
if let result = analyzeWordFrequency(in: text) {
    print("📌 가장 자주 나온 단어는 '\(result.word)'이고, 총 \(result.count)번 등장했습니다.")
}
