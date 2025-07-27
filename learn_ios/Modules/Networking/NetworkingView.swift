import SwiftUI

struct NetworkingView: View {
    var body: some View {
        NavigationLink("Fetch Posts from API", destination: PostListView())
            .navigationTitle("Networking")
            .padding()
    }
}
