//
//  Func1.swift
//  ZMWSwiftNote
//
//  Created by xiaoming on 16/8/18.
//  Copyright © 2016年 shandandan. All rights reserved.
//

import Foundation

class Func1Class { // 为了测试的方便
    
    // swift3.0开始，从方法的第一个参数必须指明类型了，除非用"_"明确省略参数
    func sum(num1: Int , num2: Int) -> Int {
        return num1 + num2
    }
    // 添加@discardableResult声明，使用该方法的时候，没有接收者也不会警告。
    @discardableResult
    func sum2(num1: Int , num2: Int) -> Int {
        return num1 + num2
    }
    // inout参数修饰改为防止类型的前面
    func increase(a: inout Int) {
        a += 1
    }
    
    
    
    
    // 测试的方法 -------------------------- BEGIN --------------------------
    func func1Action() { // 最简单的方法，必须至少有个()
        let mySum1 = sum(num1: 3 , num2: 5)
        print(mySum1)
        let _ = sum(num1: 5, num2: 5)   // 使用"_"接收无用的返回值
        // sum(num1: 5, num2: 6) // 此次会有经过，方法有返回值，但是没有接收。
        sum2(num1: 6, num2: 7)
        
    }
    // 测试的方法 --------------------------  END  --------------------------
    

}







































