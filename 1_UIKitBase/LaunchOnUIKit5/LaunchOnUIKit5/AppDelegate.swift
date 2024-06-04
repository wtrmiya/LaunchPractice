//
//  AppDelegate.swift
//  LaunchOnUIKit5
//
//  Created by Wataru Miyakoshi on 2024/06/04.
//

import SwiftUI
import OSLog

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIHostingController(rootView: MainView())
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }
    
    // MARK: - Responding to app life-cycle events
    func applicationDidBecomeActive(_ application: UIApplication) {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
    }
    
    // MARK: - Continuing user activity and handling quick actions
    func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
        return true
    }
    
    func application(
        _ application: UIApplication,
        continue userActivity: NSUserActivity,
        restorationHandler: @escaping (
            [any UIUserActivityRestoring]?
        ) -> Void
    ) -> Bool {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
        return true
    }
    
    func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity) {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func application(
        _ application: UIApplication,
        didFailToContinueUserActivityWithType userActivityType: String,
        error: any Error
    ) {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
    }
    
    @MainActor
    func application(
        _ application: UIApplication,
        performActionFor shortcutItem: UIApplicationShortcutItem
    ) async -> Bool {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
        return true
    }
    
    // MARK: - Opening a URL-specified resource
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
        return true
    }
}
