//
//  LaunchOnSwiftUI2App.swift
//  LaunchOnSwiftUI2
//
//  Created by Wataru Miyakoshi on 2024/06/04.
//

import SwiftUI

@main
struct LaunchOnSwiftUI2App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
