//
//  Translate_it_macOSApp.swift
//  Translate.it macOS
//
//  Created by Mark Howard on 13/06/2021.
//

import SwiftUI

@main
struct Translate_it_macOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 850, idealWidth: 850, maxWidth: .infinity, minHeight: 400, idealHeight: 400, maxHeight: .infinity, alignment: .center)
        }
        .commands {
            SidebarCommands()
            ToolbarCommands()
        }
        Settings {
            SettingsView()
        }
    }
}
