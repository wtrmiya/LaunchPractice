//
//  MainView.swift
//  LaunchOnUIKit5
//
//  Created by Wataru Miyakoshi on 2024/06/04.
//

import SwiftUI
import OSLog

struct MainView: View {
    private let logger = Logger(subsystem: Logger.subsystem, category: String(describing: MainView.self))
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some View {
        Text("MainView")
            .padding()
            .onChange(of: scenePhase, perform: { phase in
                switch phase {
                case .active:
                    logger.info("file: \(#file), active")
                case .inactive:
                    logger.info("file: \(#file), inactive")
                case .background:
                    logger.info("file: \(#file), background")
                @unknown default:
                    logger.info("file: \(#file), @unknown")
                }
            })
    }
}

#Preview {
    MainView()
}
