

import SwiftUI

struct ContentView: View {
    var module : Module

    init(module: Module) {
        self.module = module
    }

    var body: some View {
        NavigationSplitView {
            List {
                Text("Home")
                Text("Profile")
                Text("Settings")
            }
            .navigationTitle("Menu")
        } detail: {
            Text("Select a menu item")
        }    }
}

#Preview {
    ContentView(module: Module(title: "Hello", iconName: "person.circle"))
}
