//
//  MainView.swift
//  LaunchOnUIKit3
//
//  Created by Wataru Miyakoshi on 2024/06/03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                NotificationManager.shared.requestAuthorization()
            }, label: {
                Text("Request Auth")
            })
            Spacer()
                .frame(height: 20)
            Button(action: {
                NotificationManager.shared.scheduleNotification()
            }, label: {
                Text("Schedule Local Push")
            })
            Spacer()
                .frame(height: 20)
            Button(action: {
                NotificationManager.shared.cancelNotification()
            }, label: {
                Text("Cancel Schedule")
            })
            Spacer()
        }
    }
}

#Preview {
    MainView()
}
