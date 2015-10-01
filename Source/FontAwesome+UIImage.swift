//
//  FontAwesome+UIImage.swift
//  Swift-Font-Awesome
//
//  Created by longhao on 15/7/18.
//  Copyright (c) 2015年 longhao. All rights reserved.
//

import UIKit

public extension UIImage {
    //https://github.com/melvitax/AFImageHelper/blob/master/AF%2BImage%2BHelper/AF%2BImage%2BExtension.swift
    //image with circle
    public convenience init?(faCircle: Fa, imageSize: CGFloat, color: UIColor = UIColor.whiteColor(),circleColor: UIColor = UIColor.grayColor(), backgroundColor: UIColor = UIColor.clearColor(), radius: CGFloat = 5)
    {
        FontAwesome.sharedManager.registerFont()
        let fontSize = imageSize - 2 * radius
        let font: UIFont = UIFont(name: kFontAwesome, size: fontSize)!
        let size = CGSizeMake(fontSize + 2 * radius, fontSize + 2 * radius) // circle size
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetAllowsAntialiasing(context, true)
        CGContextSetFillColorWithColor(context, backgroundColor.CGColor)
        CGContextFillRect(context, CGRect(origin: CGPoint(x: 0, y: 0), size: size))
        let style = NSMutableParagraphStyle()
        style.alignment = .Center
        
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let attrCircle = [NSFontAttributeName: UIFont(name: kFontAwesome, size: size.width)!, NSForegroundColorAttributeName:circleColor, NSParagraphStyleAttributeName:style]
        Fa.Circle.text!.drawInRect(rect, withAttributes: attrCircle)
        
        let rectIn = CGRect(x: radius, y: radius, width: fontSize + 2, height: fontSize + 2)
        let attr = [NSFontAttributeName: font, NSForegroundColorAttributeName:color, NSParagraphStyleAttributeName:style]
        faCircle.text!.drawInRect(rectIn, withAttributes: attr)
        self.init(CGImage:UIGraphicsGetImageFromCurrentImageContext().CGImage!)
        UIGraphicsEndImageContext()
    }
    
    //image with square
    public convenience init?(faSquare: Fa, imageSize: CGFloat, color: UIColor = UIColor.whiteColor(),circleColor: UIColor = UIColor.grayColor(), backgroundColor: UIColor = UIColor.clearColor(), radius: CGFloat = 8)
    {
        FontAwesome.sharedManager.registerFont()
        let fontSize = imageSize - 2 * radius
        let font: UIFont = UIFont(name: kFontAwesome, size: fontSize)!
        let size = CGSizeMake(fontSize + 2 * radius, fontSize + 2 * radius) // circle size
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetAllowsAntialiasing(context, true)
        CGContextSetFillColorWithColor(context, backgroundColor.CGColor)
        CGContextFillRect(context, CGRect(origin: CGPoint(x: 0, y: 0), size: size))
        let style = NSMutableParagraphStyle()
        style.alignment = .Center
        
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let attrCircle = [NSFontAttributeName: UIFont(name: kFontAwesome, size: size.width)!, NSForegroundColorAttributeName:circleColor, NSParagraphStyleAttributeName:style]
        Fa.SquareO.text!.drawInRect(rect, withAttributes: attrCircle)
        
        let rectIn = CGRect(x: radius, y: radius, width: fontSize + 2, height: fontSize + 2)
        let attr = [NSFontAttributeName: font, NSForegroundColorAttributeName:color, NSParagraphStyleAttributeName:style]
        faSquare.text!.drawInRect(rectIn, withAttributes: attr)
        self.init(CGImage:UIGraphicsGetImageFromCurrentImageContext().CGImage!)
        UIGraphicsEndImageContext()
    }
    
    
    
    
    // MARK: Image with Text
    public convenience init?(fa: Fa, imageSize: CGFloat, color: UIColor = UIColor.whiteColor(), backgroundColor: UIColor = UIColor.grayColor())
    {
        FontAwesome.sharedManager.registerFont()
        let font: UIFont = UIFont(name: kFontAwesome, size: imageSize - 2)!
        let size = CGSizeMake(imageSize, imageSize) // circle size
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetAllowsAntialiasing(context, true)
        CGContextSetFillColorWithColor(context, backgroundColor.CGColor)
        CGContextFillRect(context, CGRect(origin: CGPoint(x: 0, y: 0), size: size))
        let style = NSMutableParagraphStyle()
        style.alignment = .Center
        
        let rectIn = CGRect(x: 0, y: 0, width: imageSize, height: imageSize)
        let attr = [NSFontAttributeName: font, NSForegroundColorAttributeName:color, NSParagraphStyleAttributeName:style]
        fa.text!.drawInRect(rectIn, withAttributes: attr)
        self.init(CGImage:UIGraphicsGetImageFromCurrentImageContext().CGImage!)
        UIGraphicsEndImageContext()
    }
    
}
