//: cows grouped one per array entry

import Foundation

let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: .utf8)
print("cowsStr.count", cowsStr.count)

// https://github.com/sindresorhus/cows/blob/main/index.js
//  module.exports = () => fs.readFileSync(path.join(__dirname, 'cows.txt'), 'utf8')
//    .replace(/\n$/, '').split('\n\n\n');

// Use NSString to split string by multi-character string
// one cow per array entry
//
let ncowsStr = cowsStr as NSString;
let components = ncowsStr.components(separatedBy: "\n\n\n")
print("components.count", components.count)

// Display a random cow
print(components[426])

// Trailing closure syntax

// Display the size of each cow
//
let counts = components.map { $0.count }
print("components counts", counts)

// https://developer.apple.com/documentation/swift/sequence/3018365-filter

// Using filter to find short cows
//
let shortie = components.filter { $0.count < 100 }
print("shortie.count", shortie.count)

let n = min(shortie.count, 10)
for index in 0..<n {
  print("shortie index", index)
  print(shortie[index])
}


//: [Previous](@previous)  [Next](@next)
