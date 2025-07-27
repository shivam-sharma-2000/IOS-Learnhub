import SwiftUI

struct BindingDemoView: View {
    @State private var isOn = true

    var body: some View {
        VStack(spacing: 20) {
            Toggle("Enable Feature", isOn: $isOn)
                .padding()

            BindingChildView(isOn: $isOn)
        }
        .padding()
        .navigationTitle("@Binding Example")
    }
}

struct BindingChildView: View {
    @Binding var isOn: Bool

    var body: some View {
        Text(isOn ? "Feature is ON" : "Feature is OFF")
            .foregroundColor(isOn ? .green : .red)
    }
}
