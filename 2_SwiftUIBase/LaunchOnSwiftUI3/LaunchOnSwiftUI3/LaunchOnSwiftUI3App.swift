//
//  LaunchOnSwiftUI3App.swift
//  LaunchOnSwiftUI3
//
//  Created by Wataru Miyakoshi on 2024/06/04.
//

import SwiftUI

@main
struct LaunchOnSwiftUI3App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
