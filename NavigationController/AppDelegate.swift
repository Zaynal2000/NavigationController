//
//  AppDelegate.swift
//  NavigationController
//
//  Created by Зайнал Гереев on 17.09.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?
    
    var navController = UINavigationController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = ViewController()
        self.navController = UINavigationController(rootViewController: viewController)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.navController
        
        self.window?.backgroundColor = .white
        self.window?.makeKeyAndVisible()
        
        
        return true
    }
}

