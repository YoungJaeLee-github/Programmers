//
//  main.swift
//  CaesarCipher
//
//  Created by 이영재 on 2021/02/15.
//
//
func solution(_ s: String, _ n: Int) -> String {
    var answer: String = ""
    for i in s {
        if i != " " {
            if let ascii = i.asciiValue {
                switch ascii {
                case 97...122:
                    if ascii + UInt8(n) > 122 {
                        answer.append(Character(UnicodeScalar(ascii + UInt8(n) - 26)))
                    } else {
                        answer.append(Character(UnicodeScalar(ascii + UInt8(n))))
                    }
                case 65...90:
                    if ascii + UInt8(n) > 90 {
                        answer.append(Character(UnicodeScalar(ascii + UInt8(n) - 26)))
                    } else {
                        answer.append(Character(UnicodeScalar(ascii + UInt8(n))))
                    }
                default:
                    return ""
                }
            }
        } else {
            answer.append(i)
        }
    }
    return answer
}

print(solution("a", 2))