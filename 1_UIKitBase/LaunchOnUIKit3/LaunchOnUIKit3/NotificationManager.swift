//
//  NotificationManager.swift
//  LaunchOnUIKit3
//
//  Created by Wataru Miyakoshi on 2024/06/03.
//

import SwiftUI
import UserNotifications
import OSLog

final class NotificationManager {
    static let shared = NotificationManager()
    private let logger = Logger(subsystem: Logger.subsystem, category: String(describing: NotificationManager.self))
    
    func requestAuthorization() {
        logger.info("file: \(#file), function: \(#function)")
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { [weak self] _, error in
            if let error {
                self?.logger.info("ERROR: \(error.localizedDescription)")
            } else {
                self?.logger.info("SUCCESS")
            }
        }
    }
    
    func scheduleNotification() {
        logger.info("file: \(#file), function: \(#function)")
        let content = UNMutableNotificationContent()
        content.title = "Launch Practice"
        content.subtitle = "Local Notification"
        content.sound = .default
        content.badge = 0
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger
        )
        
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotification() {
        logger.info("file: \(#file), function: \(#function)")
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}
