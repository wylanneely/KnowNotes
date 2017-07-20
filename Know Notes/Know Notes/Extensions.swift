//
//  Extensions.swift
//  Know Notes
//
//  Created by ALIA M NEELY on 7/20/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

import Foundation
import  UIKit

extension UIColor {
    static var malibu: UIColor {
        return UIColor(red: 0.42, green: 0.73, blue: 0.94, alpha: 1.0)
        
    }
   static var hummingbird: UIColor {
        let color = UIColor(red: 0.77, green: 0.94, blue: 0.97, alpha: 1.0)
        return color
    }
    
   static var malibuSun: UIColor {
        let color = UIColor(red: 0.94, green: 0.64, blue: 0.42, alpha: 1.0)
        return color
    }
    
    
    
}
extension UIImage{
    
    func alpha(_ value:CGFloat)->UIImage
    {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: CGPoint.zero, blendMode: .normal, alpha: value)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
        
    }
}
