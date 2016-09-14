//
//  GlobalConst.swift
//  swiftFactory
//
//  Created by wwll on 16/9/13.
//  Copyright © 2016年 wangshuang. All rights reserved.
//

import UIKit
import Foundation

let SCREENWIDTH = UIScreen.mainScreen().bounds.size.width//屏幕宽
let SCREENHEIGHT = UIScreen.mainScreen().bounds.size.height//屏幕宽
let systemVersion=(UIDevice.currentDevice().systemVersion as NSString).doubleValue//系统版本


class GlobalRgb {
    static func RGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) ->UIColor{
        return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
}


