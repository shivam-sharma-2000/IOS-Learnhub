import SwiftUI

struct StateDemoView: View {
    @State private var counter = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Counter: \(counter)")
                .font(.largeTitle)

            Button("Increment") {
                counter += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("@State Example")
    }
}
