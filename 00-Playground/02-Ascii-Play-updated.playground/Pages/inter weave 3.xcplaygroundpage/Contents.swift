//: Loading and displaying ascii art from app bundle

import Foundation

// load text file from bundle
func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: nil)
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

let part1 = load("elephant.txt")
let part2 = load("cat.txt")
let part3 = load("bat.txt")

print(part1 + part2 + part3)

let part1Split = part1.split(separator: "\n").map { String($0) }
let part2Split = part2.split(separator: "\n").map { String($0) }
let part3Split = part3.split(separator: "\n").map { String($0) }

func combine(_ part1:[String], _ part2:[String], _ margin: Int) -> [String] {
  let bmax = part1.map { $0.count }.max()!
  let edge = bmax + margin
  var arr:[String] = []
  for index in 0..<part1.count {
    var line1 = part1[index]
    line1 += String(repeating: " ", count: edge - line1.count)
    var line2 = ""
    if index < part2.count {
      line2 = String(part2[index])
    }
    arr.append(line1 + line2)
  }
  return arr;
}

let combo = combine(part1Split, part2Split, 1)
//print(combo)
//let str = combo.joined(separator: "\n")
//print(str)

let combo2 = combine(combo, part3Split, 1)
let str2 = combo2.joined(separator: "\n")
print(str2)

