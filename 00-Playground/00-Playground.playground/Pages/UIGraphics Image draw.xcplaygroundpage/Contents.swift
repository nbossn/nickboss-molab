
// Use UIGraphics to create image from UIImage

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
  
  let irect = CGRect(x: 80, y: 80, width: bounds.width-160, height: bounds.height-160)
  let img1 = UIImage(named: "icon-on-gray-1024")!
  img1.draw(in: irect);
  
}


image

