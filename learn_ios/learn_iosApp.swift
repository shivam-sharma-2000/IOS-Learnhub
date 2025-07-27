//
//  learn_iosApp.swift
//  learn_ios
//
//  Created by Shivam sharma on 04/07/25.
//

import SwiftUI

@main
struct learn_iosApp: App {
    @StateObject var themeSettings = ThemeSettings()
    var body: some Scene {
        WindowGroup {
//            HomePage()
//            ContentView()
            HomeView()
                .environmentObject(themeSettings)
        }
    }
}
