//
//  AppDelegate.swift
//  LaunchOnUIKit5
//
//  Created by Wataru Miyakoshi on 2024/06/04.
//

import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIHostingController(rootView: MainView())
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }
}
