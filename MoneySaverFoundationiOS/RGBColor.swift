//
//  RGBColor.swift
//  MoneySaverFoundationiOS
//
//  Created by Michal Moskala on 02.10.2017.
//  Copyright © 2017 Michal Moskala. All rights reserved.
//

import UIKit

func value<T>(_ value: T, boundedBy range: Range<T>) -> T {
    if value > range.upperBound {
        return range.upperBound
    } else if value < range.lowerBound {
        return range.lowerBound
    } else {
        return value
    }
}


public struct RGBAColor {
    public let red: CGFloat
    public let green: CGFloat
    public let blue: CGFloat
    public let alpha: CGFloat
    
    public init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let minValue: CGFloat = 0.0
        let maxValue: CGFloat = 1.0
        let valuesRnage = minValue..<maxValue
        self.red = value(red, boundedBy: valuesRnage)
        self.green = value(green, boundedBy: valuesRnage)
        self.blue = value(blue, boundedBy: valuesRnage)
        self.alpha = value(alpha, boundedBy: valuesRnage)
    }
    
    public init(color: UIColor) {
        var redVal: CGFloat = 0.0
        var greenVal: CGFloat = 0.0
        var blueVal: CGFloat = 0.0
        var alphaVal: CGFloat = 0.0
        color.getRed(&redVal, green: &greenVal, blue: &blueVal, alpha: &alphaVal)
        self.red = redVal
        self.green = greenVal
        self.blue = blueVal
        self.alpha = alphaVal
    }
    
    func color() -> UIColor {
        return UIColor(red: red,
                       green: green,
                       blue: blue,
                       alpha: alpha)
    }
}
