//
//  UIColorExtension.swift
//  MyCenter
//
//  Created by yang on 16/1/26.
//  Copyright © 2016年 yang. All rights reserved.
//

import UIKit

extension UIColor {
    
    // 获取16进制颜色
    public class func hex(_ convertString:String, alpha: CGFloat = 1.0) -> UIColor {
        var cString:String = convertString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
        
        if (cString.count  < 6) {
            return UIColor.black
        }
        if (cString.hasPrefix("0X")) {
            cString = (cString as NSString).substring(from: 2)
        }
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substring(from: 1)
        }
        if (cString.count  != 6) {
            return UIColor.black
        }
        
        var range:NSRange = NSRange()
        range.location = 0
        range.length = 2
        let rString:String = (cString as NSString).substring(with: range)
        range.location = 2
        let gString:String = (cString as NSString).substring(with: range)
        range.location = 4
        let bString:String = (cString as NSString).substring(with: range)
        
        var r:UInt32 = 0, g:UInt32 = 0, b:UInt32 = 0;
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
    
    // 获取随机颜色
    public class func randomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat(arc4random() % 255) / 255.0, green: CGFloat(arc4random() % 255) / 255.0, blue: CGFloat(arc4random() % 255) / 255.0, alpha: 1.0)
        return randomColor
    }
    
}

public extension UIColor {
    
    public struct App {
        public static let main = UIColor.hex("#49C2B4")         //主色
        public static let background = UIColor.hex("#ffffff")   //背景
        public static let line = UIColor.hex( "#f7f7f7")        //line
        public static let header = UIColor.hex( "#1A1B29")      //列表Header
        public static let mainText = UIColor.hex( "#1B1B4E")    //主文字
        public static let commonText = UIColor.hex( "#666666")  //普通文字
        public static let assistText = UIColor.hex( "#AEB3C0")  //辅助文字
        public static let green = UIColor.hex("#34BA95")        //绿色
        public static let red = UIColor.hex("#FD687D")          //红色
        public static let orange = UIColor.hex( "#FA6D0A")      //橙色
    }

}
