//
//  AppDelegate.swift
//  LaunchOnUIKit2
//
//  Created by Wataru Miyakoshi on 2024/06/03.
//

import UIKit
import OSLog

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        Logger.appDelegate.info("file: \(#file), function: \(#function)")
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
