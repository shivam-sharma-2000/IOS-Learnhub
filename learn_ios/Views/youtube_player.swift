import SwiftUI
import YouTubeiOSPlayerHelper

struct YouTubePlayerView: UIViewRepresentable {
    let videoId: String

    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        playerView.load(withVideoId: videoId)
        return playerView
    }

    func updateUIView(_ uiView: YTPlayerView, context: Context) {
        // You can reload the video here if needed
    }
}
