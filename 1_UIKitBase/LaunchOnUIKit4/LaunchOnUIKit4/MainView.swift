//
//  MainView.swift
//  LaunchOnUIKit4
//
//  Created by Wataru Miyakoshi on 2024/06/03.
//

import SwiftUI

struct MainView: View {
    @Environment(\.scenePhase) private var scenePhase
    var body: some View {
        Text("MainView")
            .padding()
            .onChange(of: scenePhase, perform: { phase in
                switch phase {
                case .active:
                    print("active")
                case .inactive:
                    print("inactive")
                case .background:
                    print("background")
                @unknown default:
                    print("@unknown")
                }
            })
    }
}

#Preview {
    MainView()
}
