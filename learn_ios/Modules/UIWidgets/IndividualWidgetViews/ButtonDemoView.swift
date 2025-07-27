import SwiftUI

struct ButtonDemoView: View {
    @State private var message = "No button tapped yet."

    var body: some View {
        VStack(spacing: 20) {
            Text(message)
                .font(.headline)

            Button("Tap Me") {
                message = "Button tapped!"
            }
            .buttonStyle(.borderedProminent)

            Button("Reset") {
                message = "No button tapped yet."
            }
            .foregroundColor(.red)
        }
        .padding()
        .navigationTitle("Button Demo")
    }
}
