//
//  JzTimer.swift
//  JzOS_Tool
//
//  Created by Jianzhi.wang on 2020/2/12.
//  Copyright © 2020 Jianzhi.wang. All rights reserved.
//

import Foundation
open class JzTimer{
    var pastTime = Date().timeIntervalSince1970
    open func GetTime(_ timeStamp: Double)-> Double{
        let currentTime = Date().timeIntervalSince1970
        let reduceTime : TimeInterval = currentTime - timeStamp
        return reduceTime
    }
    
    open  func zeroing()->JzTimer{
        pastTime = Date().timeIntervalSince1970
        return self
    }
    open func stop()->Double{
        return GetTime(pastTime)
    }
}
