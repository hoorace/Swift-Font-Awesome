//
//  FontAwesome+UIButton.swift
//  Swift-Font-Awesome
//
//  Created by longhao on 15/7/8.
//  Copyright (c) 2015年 longhao. All rights reserved.
//

import UIKit

public extension UIButton {
    public func fa(fa: Fa, adjustSize: CGFloat = 0, forState state: UIControlState){
        FontAwesome.sharedManager.registerFont()
        let fontAwesome = UIFont(name: kFontAwesome, size: self.titleLabel!.font.pointSize + adjustSize)
        titleLabel!.font = fontAwesome!
        if let txt = titleLabel!.text {
            if let align = faTextAlignment {
                switch align {
                case .Left:
                    setTitle(fa.text! + txt, forState: state)
                    break
                case .Right:
                    setTitle(txt + fa.text!, forState: state)
                    break
                }
            }
        }else{
            setTitle(fa.text, forState: state)
        }
    }
    
    public var faTextAlignment: FaTextAlignment? {
        get {
            if let _align = align {
                return _align
            }else {
                return FaTextAlignment.Left
            }
        }
        set {
            align = newValue
        }
    }
}
