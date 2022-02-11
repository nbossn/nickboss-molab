//: cows sorted by character count

import Foundation

let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: .utf8)
print("cowsStr.count", cowsStr.count)

// https://developer.apple.com/documentation/swift/array/1688499-sort

let ncowsStr = cowsStr as NSString;
let components = ncowsStr.components(separatedBy: "\n\n\n").sorted { $0.count < $1.count }
print("components.count", components.count)

let counts = components.map { $0.count }
print("components counts", counts)

let n = min(components.count, 10)
for index in 0..<n {
  print("index", index)
  print(components[index])
}

//: [Previous](@previous)  [Next](@next)
