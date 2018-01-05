//
//  AppDelegate.swift
//  Sample
//
//  Created by 李二狗 on 2018/1/5.
//  Copyright © 2018年 Meniny Lab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = SampleController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

