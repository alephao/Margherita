//
//  AppDelegate.swift
//  Margherita
//
//  Created by Aleph Retamal on 12/9/19.
//  Copyright © 2019 alephao. All rights reserved.
//

import Login
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow()
        window.rootViewController = LoginViewController()
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}
