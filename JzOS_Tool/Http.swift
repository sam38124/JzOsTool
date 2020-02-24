//
//  Http.swift
//  JzOS_Tool
//
//  Created by Jianzhi.wang on 2020/2/20.
//  Copyright © 2020 Jianzhi.wang. All rights reserved.
//

import Foundation


public class Http{
    open func listHttpFile(_ url:String,_ direct:String,_ callback:@escaping(_ data:[String]?)->Void)  {
        DispatchQueue.global().async {
            var dir=[String]()
            let url = URL(string: url+direct)
            var data: Data? = nil
            if let anUrl = url {
                do{
                    try data = Data(contentsOf: anUrl)
                    let ds=String(decoding: data!, as: UTF8.self).components(separatedBy: "HREF=")
                    for a in ds{
                        if(a.contains(direct)){
                            let filename=a.components(separatedBy: ">")[1].components(separatedBy: "<")[0]
                            dir.append(filename)
                        }
                    }
                    DispatchQueue.main.async {
                        callback(dir)
                    }
                }catch{print(error)
                    DispatchQueue.main.async {
                        callback(nil)
                    }
                }
            }else{
                DispatchQueue.main.async {
                    callback(nil)
                }
            }
        }
    }
    open func getFileText(_ url:String,_ callback:@escaping(_ data:String?)->Void){
        DispatchQueue.global().async {
            let url = URL(string: url)
            var data: Data? = nil
            if let anUrl = url {
                do{
                    try data = Data(contentsOf: anUrl)
                    let ds=String(decoding: data!, as: UTF8.self)
                    DispatchQueue.main.async {
                        callback(ds)
                    }
                }catch{print(error)
                    DispatchQueue.main.async {
                        callback(nil)
                    }
                }
            }else{
                DispatchQueue.main.async {
                    callback(nil)
                }
            }
        }
    }
}
