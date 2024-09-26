//
//  AppDelegate.swift
//  LoginAppUsingViewController
//
//  Created by diksha-1167 on 23/09/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // Called when the app is about to finish launching
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Set the initial view controller
        let initialViewController = ViewController()
        let navigationController = UINavigationController(rootViewController: initialViewController)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}


