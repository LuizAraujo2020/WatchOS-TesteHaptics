//
//  TesteHapticsApp.swift
//  TesteHaptics WatchKit Extension
//
//  Created by Luiz Araujo on 22/06/22.
//

import SwiftUI

@main
struct TesteHapticsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
