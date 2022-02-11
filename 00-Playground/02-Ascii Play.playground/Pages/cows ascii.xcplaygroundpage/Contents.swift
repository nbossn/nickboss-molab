//: Loading ascii cows from url

import Foundation

// Read in ascii cows from github
//
let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: .utf8)
print("cowsStr.count", cowsStr.count)

// https://github.com/sindresorhus/cows/blob/main/index.js
//  module.exports = () => fs.readFileSync(path.join(__dirname, 'cows.txt'), 'utf8')
//    .replace(/\n$/, '').split('\n\n\n');

// string split to create array of lines
//
let cowsSplit = cowsStr.split(separator: "\n", omittingEmptySubsequences: false)
print("cowsSplit.count \(cowsSplit.count)")

// Display a few lines
//
for index in 0...5 {
  let it = cowsSplit[index]
  print(it, it.count, index)
}

//: [Previous](@previous)  [Next](@next)

// Source:
//  https://github.com/sindresorhus/cows
//  https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt

