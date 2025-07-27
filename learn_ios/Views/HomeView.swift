import SwiftUI

struct HomeView: View {
    @State private var isDrawerOpen = false
    @State private var selectedModule: Module? = nil

    var body: some View {
        ZStack(alignment: .leading) {
            NavigationView {
                Group {
                    if let module = selectedModule {
                        destination(for: module)
                    } else {
                        HomePage()
                    }
                }
                .padding()
                .navigationBarTitle("LearnHub", displayMode: .inline)
                .navigationBarItems(leading:
                    Button(action: {
                        withAnimation {
                            isDrawerOpen.toggle()
                        }
                    }) {
                        Image(systemName: "line.3.horizontal")
                            .imageScale(.large)
                    }
                )
            }

            // Drawer
            if isDrawerOpen {
                DrawerView(isOpen: $isDrawerOpen, selectedModule: $selectedModule)
                    .zIndex(1)
            }

            // Tap to close drawer
            if isDrawerOpen {
                Color.black.opacity(0.01)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            isDrawerOpen = false
                        }
                    }
            }
        }
    }
		
    // Helper to map module to view
    @ViewBuilder
    func destination(for module: Module) -> some View {
        switch module.title {
        case "Home":
            HomePage()
        case "Swift Basics":
            SwiftBasicsView()
        case "UI Widgets":
            UIWidgetsView()
        case "Navigation & Layout":
            LandmarkList()
        case "State Management":
            StateManagementView()
        case "Networking":
            NetworkingView()
        case "Local Storage":
            LocalStorageView()
        default:
            Text("Coming Soon: \(module.title)")
        }
    }
}
#Preview {
    HomeView()
}
