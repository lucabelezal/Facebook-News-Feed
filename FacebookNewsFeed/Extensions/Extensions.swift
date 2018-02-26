//
//  Extensions.swift
//  FacebookNewsFeed
//
//  Created by Lucas Nascimento on 26/02/2018.
//  Copyright © 2018 Lucas Nascimento. All rights reserved.
//

import UIKit

enum ColorPalette {
    
    static let facebookLightBlue =  UIColor.rgb(red: 70, green: 146, blue: 250)
    
    static let facebookBlue =  UIColor.rgb(red: 51, green: 90, blue: 149)
    
    static let lightBlue = UIColor.rgb(red: 87, green: 143, blue: 255)
    
    static let lightGrey =  UIColor.rgb(red: 155, green: 161, blue: 161)
    
    static let darkGrey = UIColor.rgb(red: 143, green: 150, blue: 163)
    
    static let facebookGrey = UIColor.rgb(red: 226, green: 228, blue: 232)
    
    static let topBorderColor = UIColor.rgb(red: 229, green: 231, blue: 235)
}

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
}

extension UIView {
    
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String : UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

