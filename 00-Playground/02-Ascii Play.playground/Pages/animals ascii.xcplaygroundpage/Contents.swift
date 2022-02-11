//: Loading and displaying ascii art from app bundle

import Foundation

// Create text file and copy and paste to add - avoids string quoting requirements

// Load and print one file from bundle
let path = Bundle.main.path(forResource: "aardvark.txt", ofType: nil)
let str = try String(contentsOfFile: path!, encoding: .utf8)
print(str)

// same as a function
func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: nil)
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

print(load("bat.txt"))

print(load("cat.txt"))

print(load("elephant.txt"))

//: [Previous](@previous)  [Next](@next)

// Source:
// https://asciiart.website/index.php?art=animals/aardvarks
