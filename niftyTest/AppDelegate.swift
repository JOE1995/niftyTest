//
//  AppDelegate.swift
//  niftyTest
//
//  Created by 矢吹祐真 on 2016/08/31.
//  Copyright © 2016年 矢吹祐真. All rights reserved.
//

import UIKit
import NCMB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        NCMB.setApplicationKey("2f4666e41e7dfca315b889460333ce5f803b2ecc214f9f5928ed8055b81b8290", clientKey: "e8c0d306f950d895b759313945ae7e700caa6084e69e727b6551f4306d354b8c")
        
        // クラスのNCMBObjectを作成
        let obj = NCMBObject(className: "TestClass")
        // オブジェクトに値を設定
        obj.setObject("Hello, NCMB!", forKey: "message")
        // データストアへの登録
        obj.saveInBackgroundWithBlock { (error: NSError!) -> Void in
            if error != nil {
                // 保存に失敗した場合の処理
                print("失敗orz")
            }else{
                // 保存に成功した場合の処理
                print("成功おめ！")
            }
        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

