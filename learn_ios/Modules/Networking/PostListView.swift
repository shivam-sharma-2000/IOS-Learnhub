import SwiftUI

struct PostListView: View {
    @State private var posts: [Post] = []
    @State private var isLoading = true
    @State private var errorMessage: String?

    let service = PostService()

    var body: some View {
        Group {
            if isLoading {
                ProgressView("Loading posts...")
            } else if let errorMessage = errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
            } else {
                List(posts) { post in
                    VStack(alignment: .leading) {
                        Text(post.title.capitalized)
                            .font(.headline)
                        Text(post.body)
                            .font(.body)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
        }
        .onAppear {
            fetchPosts()
        }
        .navigationTitle("Networking")
    }

    func fetchPosts() {
        service.fetchPosts { result in
            isLoading = false
            switch result {
            case .success(let data):
                self.posts = data
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            }
        }
    }
}
