//
//  EnvironmentObjectDemoView.swift
//  learn_ios
//
//  Created by Shivam sharma on 07/07/25.
//

import Foundation
import SwiftUI
class ThemeSettings: ObservableObject {
    @Published var isDarkMode = false
}

struct EnvironmentObjectDemoView: View {
    @EnvironmentObject var settings: ThemeSettings

    var body: some View {
        VStack(spacing: 20) {
            Toggle("Dark Mode", isOn: $settings.isDarkMode)
                .padding()

            Text("Dark Mode is \(settings.isDarkMode ? "ON" : "OFF")")
        }
        .padding()
        .navigationTitle("@EnvironmentObject Example")
    }
}
