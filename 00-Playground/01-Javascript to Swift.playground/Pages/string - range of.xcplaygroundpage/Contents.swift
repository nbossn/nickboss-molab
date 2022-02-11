//: how to find a substring in a string?

import Foundation

// https://stackoverflow.com/questions/32305891/index-of-a-substring-in-a-string-with-swift
// !!@ How can it be found in docs??

//                   11111111112222222222333333333344444
//         012345678901234567890123456789012345678901234
let str = "the quick brown fox jumped over the lazy dog"
if let range = str.range(of: "brown") {
  let istart: Int = str.distance(from: str.startIndex, to: range.lowerBound)
  let iend: Int = str.distance(from: str.startIndex, to: range.upperBound)
  print("istart", istart, "iend", iend)
}
else {
  print("substring not found")
}

func find(_ str: String, _ sub: String) {
  if let range = str.range(of: sub) {
    let istart: Int = str.distance(from: str.startIndex, to: range.lowerBound)
    let iend: Int = str.distance(from: str.startIndex, to: range.upperBound)
    print(sub, "istart", istart, "iend", iend)
  }
  else {
    print(sub, "substring not found in", str)
  }
}

find(str, "the")

find(str, "quick")

find(str, "dog")

find(str, "jumped")

find(str, "zoo")

//: [Previous](@previous)  [Next](@next)
