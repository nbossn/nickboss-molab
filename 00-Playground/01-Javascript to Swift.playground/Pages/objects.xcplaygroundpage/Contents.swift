//: js objects can be Dictionary in swift
//:
//: but watch out for the strong type requirements!

/*
 -- differences
 
 js objects
 {x: 0, y: 1.0, color: "red", list: [1, 2, 3]}
 
 swift Dictionary
 ["x": 0, "y": 1.0, "color": "red", "list": [1, 2, 3]]
 
 */

// Type [String:Any] required to mix types
//
var dict:[String:Any] = ["x": 0, "y": 1.0, "color": "red", "list": [1, 2, 3]]
print("dict \(dict)")

// strong/strict type vs. weak/dynamic/free type

var point1 = ["x": 1, "y": 100]
print("point1 \(point1)")

point1["x"] = 10
print("point1 \(point1)")

// ERRRO! can use non-string access
// print("point1.x", point1.x)

// ERROR! type of x inferred to be Int
// point1["x"] = 9.0

// Ok since dict is type [String:Any]
dict["x"] = 9.0
print("dict \(dict)")

// https://docs.swift.org/swift-book/ReferenceManual/Expressions.html#grammar_tuple-expression
// tuples for fixed size collections
//
var tpoint = (x: 100.0, y: 100)
print("tpoint", tpoint)
print("tpoint.x", tpoint.x)
// print("tpoint[]", tpoint["x"]) // ERROR!
tpoint.y += 10
print("tpoint.y", tpoint.y)

//: [Previous](@previous)  [Next](@next)
