//
//  AppDelegate.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 1.03.2021.
//

import UIKit
import SnapKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TestViewViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

