//: Loading and displaying ascii art from app bundle

import Foundation

// load text file from bundle
func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: nil)
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

let bat = load("elephant.txt")

let cat = load("bat.txt")

  print(bat + cat)

let batSplit = bat.split(separator: "\n")
//  for index in 0..<batSplit.count {
//    print(batSplit[index].count)
//  }
let bmax = batSplit.map { $0.count }.max()!
print(bmax)

// https://developer.apple.com/documentation/swift/array/1688806-max
// swift string repeating
// https://developer.apple.com/documentation/swift/string/2427723-init

let catSplit = cat.split(separator: "\n")

let edge = bmax + 1

for index in 0..<batSplit.count {
  var line1 = batSplit[index]
  line1 += String(repeating: " ", count: edge - line1.count)
//  while line1.count < bmax {
//    line1 += " "
//  }
  var line2 = ""
  if index < catSplit.count {
    line2 = String(catSplit[index])
  }
  print(line1 + line2)
}
