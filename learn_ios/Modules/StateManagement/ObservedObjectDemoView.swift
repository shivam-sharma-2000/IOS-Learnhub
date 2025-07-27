import SwiftUI

class CounterModel: ObservableObject {
    @Published var count = 0
}

struct ObservedObjectDemoView: View {
    @ObservedObject var model = CounterModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Count: \(model.count)")
                .font(.largeTitle)

            Button("Increment") {
                model.count += 1
            }
        }
        .padding()
        .navigationTitle("@ObservedObject Example")
    }
}
