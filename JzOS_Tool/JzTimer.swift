//
//  JzTimer.swift
//  JzOS_Tool
//
//  Created by Jianzhi.wang on 2020/2/12.
//  Copyright © 2020 Jianzhi.wang. All rights reserved.
//

import Foundation
public class JzTimer{
    var pastTime = Date().timeIntervalSince1970
    public func GetTime(_ timeStamp: Double)-> Double{
        let currentTime = Date().timeIntervalSince1970
        let reduceTime : TimeInterval = currentTime - timeStamp
        return reduceTime
    }
    
    public  func start()->JzTimer{
        pastTime = Date().timeIntervalSince1970
        return self
    }
    public func stop()->Double{
        return GetTime(pastTime)
    }
}
