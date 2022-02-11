//: substring of a string

import Foundation

// substring method from javascript documentation
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/substring
// substring(indexStart)
// substring(indexStart, indexEnd)
//
// Displays 'illa', the last 4 characters of string 'Mozilla'
//  let anyString = 'Mozilla'
//  let anyString4 = anyString.substring(anyString.length - 4)
//  console.log(anyString4)

// Searching Apple documentation for swift string substring
// https://developer.apple.com/documentation/swift/string
// this looks close
// https://developer.apple.com/documentation/swift/string/2943910-subscript
// !!@ Warning: Documentation is showing subscript with Arrays not Strings
// !!@ No direct equivalent for javascript substring on swift strings

// Searching Apple documentation also show this
// https://developer.apple.com/documentation/foundation/nsstring/1408017-substring
// !!@ Warning: this is for NSString, not plain swift String
//
let nstr:NSString = "Mozilla"
let nsub = nstr.substring(from: 2)
print("nsub", nsub)
let rsub = nstr.substring(with: NSMakeRange(2, 3))
print("rsub", rsub)


// !!@ Alert: To use substring with String we need to use string index method
// every different from javascript

// extract the last 4 characters a string "Mozilla" -> "illa"
// note use of brackets to access using string indices
let str = "Mozilla"
let start = str.index(str.startIndex, offsetBy: str.count - 4)
let end = str.endIndex
let str2 = str[start..<end]
print("str \(str2)")

// another example to extract a substring using swift
// extract the 3rd to 5th characters of string "Mozilla" -> "zil"
let start3 = str.index(str.startIndex, offsetBy: 2)
let end3 = str.index(str.startIndex, offsetBy: 4)
let str3 = str[start3...end3]
print("str3 \(str3)")

//: [Previous](@previous)  [Next](@next)
