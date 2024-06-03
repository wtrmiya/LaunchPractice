//
//  SceneDelegate.swift
//  LaunchOnUIKit4
//
//  Created by Wataru Miyakoshi on 2024/06/03.
//

import SwiftUI
import OSLog

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = UIHostingController(rootView: MainView())
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }

    // MARK: - Transition to the foreground
    func sceneWillEnterForeground(_ scene: UIScene) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }
    
    // MARK: - Transition to the background
    func sceneWillResignActive(_ scene: UIScene) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }

    // MARK: - Opening URLs
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }
    
    // MARK: - Continuing user activities
    func scene(_ scene: UIScene, willContinueUserActivityWithType userActivityType: String) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }
    
    func scene(_ scene: UIScene, didFailToContinueUserActivityWithType userActivityType: String, error: any Error) {
        Logger.sceneDelegate.info("file: \(#file), function: \(#function)")
    }
}
