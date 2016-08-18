//
//  Basic1.swift
//  ZMWSwiftNote
//
//  Created by xiaoming on 16/8/18.
//  Copyright © 2016年 shandandan. All rights reserved.
//

import Foundation
import UIKit

class Basic1Class { // 为了测试的方便
    

    // 测试的方法 -------------------------- BEGIN --------------------------
    func basic1Action() { // 最简单的方法，必须至少有个()
        // swift 取消了 ++ -- 操作符 应该用 +=  -=
        
        // 取消了c风格的for循环
        for i in 0 ... 10 {
            print(i)
        }
        
        // 命名规范彻底摆脱OC的影子
        let url = URL(string: "www.baidu.com")
        _ = url?.isFileURL // 返回是否是文件url的BOOl值，之前是url.fileURL 现在更加注重语意
        _ = Data()  // 之前是NSData
        
        // 方法名使用动词，其他名词、介词等作为参数或移除
        var array = [1,2,3]
        array.append(contentsOf: [4,5,6]) // 之前是：array.appendContentsOf([4,5,6])
        array.remove(at: 0) // 之前是：array.removeAtIndex(0)
        
        // 在不引起歧义的情况下尽量消除重复
        _ = UIColor.red // 之前是 UIColor.redColor()
        
        // 枚举成员首字母变为小写
        let label = UILabel()
        label.textAlignment = .center // 之前是：.Center
        
        // 去除C风格 Swift发展初期很多类库的引入依然保持的ObjC风格，但是ObjC由于根出C语言，因此很多操作其实并不是对象和方法操作而是C语言的函数形式。到了Swift3.0之后这一现状将发生变化，全局函数将会变成某些类型的方法;某些常量定义将以某个枚举类型的成员来表示。
        _ = CGRect(x: 0, y: 0, width: 100, height: 50) // 之前是：CGRectMake(0, 0, 100, 100)
        
        // GCD的改变
        let queue = DispatchQueue(label: "testQueue")
        queue.async {
            debugPrint("这是一个异步队列")
        }
        // 之前是：
        //let queue = dispatch_queue_create("myqueue", nil)
        //dispatch_async(queue) {
        //    debugPrint("这是一个异步队列")
        //}
        
        // 相关常量定义被移除到枚举内部
        NotificationCenter.default.addObserver(self, selector: #selector(testNotification(a:)), name: UserDefaults.didChangeNotification, object: nil)
        // 之前是：
        // NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(testNotification(:)), name: NSUserDefaultsDidChangeNotification, object: nil)
        
        // 新的浮点协议 Float、Double、CGFloat使用了新的协议，提供了提供 IEEE-754标准的属性和方法
        _ = 2 * Float.pi // 之前是： 2 * M_PI
        _ = 2.0 * .pi // 注意前面是浮点型，后面可以省略Float
        
        
        
        
        
        
        
        
    }
    
    // 监听的方法
    @objc func testNotification(a: String) {
        debugPrint("监听的测试方法")
    }
    
    // 测试的方法 --------------------------  END  --------------------------
    
}



































