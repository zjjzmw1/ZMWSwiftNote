//
//  AppDelegate.swift
//  ZMWSwiftNote
//
//  Created by xiaoming on 16/8/18.
//  Copyright © 2016年 shandandan. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // statusBar
        self.setupWithStatusBar(application: application)
        // 初始化window
        self.window = UIWindow()
        self.window?.backgroundColor = UIColor.white
        self.window?.frame = CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight)
        // 不用导入头文件
        self.window?.rootViewController = ViewController()
        self.window?.makeKeyAndVisible()
        
        return true
    }

    // 状态栏
    func setupWithStatusBar(application: UIApplication) {
        // 设置状态栏隐藏
        application.isStatusBarHidden = true;
        // 设置状态栏高亮
        application.statusBarStyle = UIStatusBarStyle.lightContent;
        application.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: true);
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

