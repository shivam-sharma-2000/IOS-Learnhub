import SwiftUI

struct UIWidgetsView: View {
    let widgets: [Widget] = [
        Widget(title: "Button", view: AnyView(ButtonDemoView())),
        Widget(title: "TextField", view: AnyView(TextFieldDemoView()))
        // Add more widgets like Toggle, Slider, etc.
    ]

    var body: some View {
        List(widgets) { widget in
            NavigationLink(destination: widget.view) {
                Text(widget.title)
                    .font(.headline)
                    .padding(.vertical, 8)
            }
        }
        .padding(.top)
        .navigationTitle("UI Widgets")
    }
}
