
// Use UIGraphics to create a image from text

import UIKit

let dim = 1024.0
let backLevel = 0.8

let renderer = UIGraphicsImageRenderer(size: CGSize(width: dim, height: dim))

var image = renderer.image { (context) in
  
  UIColor.darkGray.setStroke()
  let bounds = renderer.format.bounds
  context.stroke(bounds)
  
  UIColor(red: backLevel, green: backLevel, blue:backLevel, alpha: 1.0).setFill();
  context.fill(bounds)
  
  let x = bounds.width * 0.1
  let y = 0.0
    
  let font = UIFont.systemFont(ofSize: bounds.width * 0.8)
  let string = NSAttributedString(string: "A",
                                  attributes: [.font: font,
                                               .foregroundColor: UIColor.red])
  string.draw(at: CGPoint(x: x, y: y))
  
  let str2 = NSAttributedString(string: "🦕", attributes: [.font: font])
  str2.draw(at: CGPoint(x: x + bounds.width * 0.3, y: y))
    
}

image

// https://stackoverflow.com/questions/52873476/how-to-draw-string-in-cgcontext

