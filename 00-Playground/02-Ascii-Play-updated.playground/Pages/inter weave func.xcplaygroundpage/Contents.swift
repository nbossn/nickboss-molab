//: Loading and displaying ascii art from app bundle

import Foundation

// load text file from bundle
func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: nil)
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

let part1 = load("aardvark.txt")

let part2 = load("cat.txt")

print(part1 + part2)

let part1Split = part1.split(separator: "\n")

let part2Split = part2.split(separator: "\n")


func combine(_ part1:Array<Substring>, _ part2:Array<Substring>, _ margin: Int) -> Array<String> {
  let bmax = part1.map { $0.count }.max()!
  let edge = bmax + margin
  var arr:Array<String> = []
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

let combo = combine(part1Split, part2Split, 2)
//print(combo)
let str = combo.joined(separator: "\n")
print(str)

// https://developer.apple.com/documentation/swift/sequence/1641243-joined
