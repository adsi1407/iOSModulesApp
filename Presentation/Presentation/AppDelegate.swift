//
//  AppDelegate.swift
//  Presentation
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 28/10/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let diContainer: DIContainer = DIContainer()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        diContainer.registerDependencies()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}

