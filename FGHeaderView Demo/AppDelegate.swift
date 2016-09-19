//
//  AppDelegate.swift
//  FGHeaderView Demo
//
//  Created by 夏桂峰 on 16/9/19.
//  Copyright © 2016年 夏桂峰. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let vc=ViewController()
        vc.title="FGHeaderView Demo"
        vc.view.backgroundColor=UIColor.white
        let root=UINavigationController.init(rootViewController: vc)
        root.navigationBar.barStyle = .black
        self.window?.rootViewController=root
        
        return true
    }


}

