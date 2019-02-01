//
//  Constans.swift
//  KLine
//
//  Created by yang on 2018/6/4.
//  Copyright © 2018年 yang. All rights reserved.
//

import UIKit

// MARK: - SIZE
let screenWidth = UIScreen.main.bounds.size.width   //设备宽度
let screenHeight = UIScreen.main.bounds.size.height //设备高度

// MARK: - FUNC
func LOCAL(_ keyString :String) -> String {
    return NSLocalizedString(keyString, comment: "")
}

func CONFIG(_ config :String) -> String {
    return Bundle.main.infoDictionary?[config] as! String
}

func JPrint<T>(_ message : T, file : String = #file, lineNumber : Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    print("[\(fileName):line:\(lineNumber)]\n\(message)")
    #endif
}
