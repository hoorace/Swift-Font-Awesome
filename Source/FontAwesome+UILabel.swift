//
//  FontAwesome+UILabel.swift
//  Swift-Font-Awesome
//
//  Created by longhao on 15/7/7.
//  Copyright (c) 2015年 longhao. All rights reserved.
//

import UIKit

public extension UILabel {
    public var fa: Fa? {
        get {
            if let txt = text {
                //only support FaTextAlignment.Left
                if let index =  FontContentArray.indexOf(txt.substringToIndex(txt.startIndex.advancedBy(1))) {
                    return Fa(rawValue: index)!
                }
            }
            return nil
        }
        
        set {
            if let value = newValue {
                FontAwesome.sharedManager.registerFont()
                font = UIFont.fa(self.font.pointSize)
                if let txt = text {
                    if let align = faTextAlignment {
                        switch align {
                        case .Left:
                            text = value.text! + txt
                            break
                        case .Right:
                            text = txt + value.text!
                            break
                        }
                    }
                }else{
                    text = value.text!
                }
            }
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
