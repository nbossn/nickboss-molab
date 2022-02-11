//: Getting a character from a string

import Foundation

// swift must use index to access parts of string

let str = "ABCDEFGH"
print("str", str)
print(str.count)
print(str[str.startIndex])
print(str[str.index(str.startIndex, offsetBy: 3)])
print(str[str.index(str.startIndex, offsetBy: 5)])

// Unicode is same, dispite longer longer encoding, same string is twice as long in javascript

let ustr = "🐥🐣🐂🐄🐎🐖🐏🐑"
print("ustr", ustr)
print(ustr.count)
print(ustr[ustr.startIndex])
print(ustr[ustr.index(ustr.startIndex, offsetBy: 3)])

//: [Previous](@previous)  [Next](@next)
