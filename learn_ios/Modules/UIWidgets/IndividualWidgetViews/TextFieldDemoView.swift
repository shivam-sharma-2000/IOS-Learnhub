import SwiftUI

struct TextFieldDemoView: View {
    @State private var name: String = ""

    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()

            Text("Hello, \(name)!")
        }
        .padding()
        .navigationTitle("TextField Demo")
//        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}
