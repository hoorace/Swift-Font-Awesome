//
//  FontAwesome+UIBarButtonItem.swift
//  Swift-Font-Awesome
//
//  Created by longhao on 15/7/8.
//  Copyright (c) 2015年 longhao. All rights reserved.
//

import UIKit

public extension UIBarButtonItem {
    public var fa: Fa? {
        get {
            if let txt: String = self.title {
                //only support FaTextAlignment.Left
                if let index =  FontContentArray.indexOf(txt.substringFromIndex(txt.startIndex.advancedBy(1))) {
                    return Fa(rawValue: index)!
                }
            }
            return nil
        }
        
        set {
            if let value = newValue {
                FontAwesome.sharedManager.registerFont()
                let fontAwesome = FaType.LG.font
                setTitleTextAttributes([NSFontAttributeName: fontAwesome], forState: .Normal)
                if let txt = self.title {
                    if let align = faTextAlignment {
                        switch align {
                        case .Left:
                            self.title = value.text! + txt
                            break
                        case .Right:
                            self.title = txt + value.text!
                            break
                        }
                    }
                }else{
                    self.title = value.text!
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
