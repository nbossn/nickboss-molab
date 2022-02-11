//: split a string into an array of words

import Foundation

// javascript uses split method
//  const str = 'The quick brown fox jumps over the lazy dog.';
//  const words = str.split(' ');
//  console.log(words[3]);
//  // expected output: "fox"

// swift is similar, requires argument label separator:
let strSplit = "The quick brown fox jumps over the lazy dog."
let words = strSplit.split(separator: " ")
print("words[3] \(words[3])")
// expected output: "fox"

// to split with more than 1 character separator use NSString
let nstr:NSString = "one<br>two<br>three"
let nwords = nstr.components(separatedBy: "<br>")
print("nwords", nwords)

//: [Previous](@previous)  [Next](@next)
