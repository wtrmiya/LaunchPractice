//
//  ViewController.swift
//  LaunchOnUIKit2
//
//  Created by Wataru Miyakoshi on 2024/06/03.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    private let logger = Logger(subsystem: Logger.subsystem, category: String(describing: ViewController.self))

    lazy private var requestButton: UIButton = {
        var config = UIButton.Configuration.plain()
        
        let container = AttributeContainer([
            .font: UIFont.systemFont(ofSize: 20)
        ])
        config.attributedTitle = AttributedString("Request Auth", attributes: container)
        
        let button = UIButton()
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addAction(
            UIAction(handler: { [weak self] _ in
                self?.logger.info("file: \(#file), function: \(#function)")
                self?.logger.info("requestButton tapped")
                NotificationManager.shared.requestAuthorization()
            })
            , for: .touchUpInside)
        return button
    }()
    
    lazy private var schedulePushButton: UIButton = {
        var config = UIButton.Configuration.plain()
        
        let container = AttributeContainer([
            .font: UIFont.systemFont(ofSize: 20)
        ])
        config.attributedTitle = AttributedString("Schedule Local Push", attributes: container)
        
        let button = UIButton()
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addAction(
            UIAction(handler: { [weak self] _ in
                self?.logger.info("file: \(#file), function: \(#function)")
                self?.logger.info("requestButton tapped")
                NotificationManager.shared.scheduleNotification()
            })
            , for: .touchUpInside)
        return button
    }()

    lazy private var cancelScheduleButton: UIButton = {
        var config = UIButton.Configuration.plain()
        
        let container = AttributeContainer([
            .font: UIFont.systemFont(ofSize: 20)
        ])
        config.attributedTitle = AttributedString("Cancel Schedule", attributes: container)
        
        let button = UIButton()
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addAction(
            UIAction(handler: { [weak self] _ in
                self?.logger.info("file: \(#file), function: \(#function)")
                self?.logger.info("requestButton tapped")
                NotificationManager.shared.cancelNotification()
            })
            , for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        logger.info("file: \(#file), function: \(#function)")
        super.viewDidLoad()
        
        configureUI()
    }
    
    private func configureUI() {
        logger.info("file: \(#file), function: \(#function)")
        view.backgroundColor = .white
        
        view.addSubview(requestButton)
        view.addSubview(schedulePushButton)
        view.addSubview(cancelScheduleButton)
        
        NSLayoutConstraint.activate([
            requestButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            requestButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            schedulePushButton.topAnchor.constraint(equalTo: requestButton.bottomAnchor, constant: 20),
            schedulePushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            cancelScheduleButton.topAnchor.constraint(equalTo: schedulePushButton.bottomAnchor, constant: 20),
            cancelScheduleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
