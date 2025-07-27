import SwiftUI
import Foundation

struct DrawerView: View {
    let width: CGFloat = 250
    @Binding var isOpen: Bool
    @Binding var selectedModule: Module?

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("IOS LearnHub")
                    .font(.largeTitle)
                    .padding(.horizontal)
                    .padding(.vertical)

                List(modules) { module in
                    Text(module.title)
                        .font(.headline)
                        .padding(.vertical, 8)
                        .onTapGesture {
                            selectedModule = module // ✅ Update selected module
                            withAnimation {
                                isOpen = false // ✅ Close drawer
                            }
                        }
                }
                .listRowSpacing(10)
                .listStyle(.plain)
            }
            .frame(width: width, alignment: .leading)
            .background(Color(.secondarySystemBackground))
            .offset(x: isOpen ? 0 : -width)
            .animation(.easeOut(duration: 0.3), value: isOpen)

            Spacer()
        }
    }
}


