//
//  ContentView.swift
//  LaunchOnSwiftUI1
//
//  Created by Wataru Miyakoshi on 2024/06/04.
//

import SwiftUI
import OSLog

struct ContentView: View {
    private let logger = Logger(subsystem: Logger.subsystem, category: String(describing: ContentView.self))
    
    @Environment(\.scenePhase) private var scenePhase
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
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
    ContentView()
}
