//
//  AppDelegate.swift
//  UtilitiesApp
//
//  Created by Paul-Daniel DOBREA on 04.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let navigationController = UINavigationController(rootViewController: LoginVC())
        window?.rootViewController = navigationController
        
        return true
    }
}

class User:Codable{
    var username:String = ""
    var password:String = ""
}
