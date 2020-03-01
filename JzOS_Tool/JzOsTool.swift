//
//  JzOsTool.swift
//  JzOS_Tool
//
//  Created by Jianzhi.wang on 2020/2/20.
//  Copyright © 2020 Jianzhi.wang. All rights reserved.
//

import Foundation
public class JzOSTool{
    //http工具類                                               
    public static func http()->Http{
        return Http()
    }
    //碼表
    public static func timer()->JzTimer{
           return JzTimer()
       }
}
