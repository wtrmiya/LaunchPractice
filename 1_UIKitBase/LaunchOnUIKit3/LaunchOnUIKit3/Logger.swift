//
//  Logger.swift
//  LaunchOnUIKit3
//
//  Created by Wataru Miyakoshi on 2024/06/03.
//

import Foundation
import OSLog

extension Logger {
    // mark - base
    static let subsystem = Bundle.main.bundleIdentifier!
    static let appDelegate = Logger(subsystem: subsystem, category: String(describing: AppDelegate.self))
    static let sceneDelegate = Logger(subsystem: subsystem, category: String(describing: SceneDelegate.self))
}
