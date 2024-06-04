//
//  Logger.swift
//  LaunchOnUIKit5
//
//  Created by Wataru Miyakoshi on 2024/06/04.
//

import Foundation
import OSLog

extension Logger {
    // mark - base
    static let subsystem = Bundle.main.bundleIdentifier!
    static let appDelegate = Logger(subsystem: subsystem, category: String(describing: AppDelegate.self))
}
