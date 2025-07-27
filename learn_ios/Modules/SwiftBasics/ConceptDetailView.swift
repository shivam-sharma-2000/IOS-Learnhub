import SwiftUI

struct ConceptDetailView: View {
    let concept: SwiftConcept
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(concept.title)
                    .font(.title)
                    .bold()
                
                
                concept.videoId != nil
                ? YouTubePlayerView(videoId: concept.videoId!) // Replace with your video ID
                                .frame(height: 250)
                                .cornerRadius(10)
                    : nil
                
                ForEach(concept.sections) { section in
                    switch section {
                        
                    case .title(let text):
                        Text(text)
                            .font(.title2)
                            .bold()
                    
                    case .subTitle(let text):
                        Text(text)
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                    case .paragraph(let text):
                        Text(text)
                            .font(.body)
                        
                    case .code(let code):
                        ScrollView(.horizontal) {
                            Text(code)
                                .font(.system(.body, design: .monospaced))
                                .padding()
                                .cornerRadius(8)
                                .textSelection(.enabled)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color(.secondarySystemBackground))
                        .padding(.bottom)
                    }
                }
                
               
                                                
            }
            .padding()
        }
        .navigationTitle(concept.title)
    }
}
