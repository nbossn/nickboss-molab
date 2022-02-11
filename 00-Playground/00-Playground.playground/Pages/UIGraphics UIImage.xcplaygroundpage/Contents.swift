
// Use UIGraphics to create image from text and system images

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

  let sysImg = UIImage(systemName: "trash.circle.fill")!
  let irect = CGRect(x: 0, y: y, width: bounds.width, height: bounds.height)
  sysImg.draw(in: irect);

  let font = UIFont.systemFont(ofSize: bounds.width * 0.8)
  let string = NSAttributedString(string: "A",
                                  attributes: [.font: font,
                                               .foregroundColor: UIColor.red])
  string.draw(at: CGPoint(x: x, y: y))
  
  let str2 = NSAttributedString(string: "🦕", attributes: [.font: font])
  str2.draw(at: CGPoint(x: x + bounds.width * 0.3, y: y))
  
  let imgTint = sysImg.withTintColor(.init(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0))
  imgTint.draw(in: CGRect(x: bounds.width*0.4, y: 0, width: bounds.width, height: bounds.height));
  
}


image

