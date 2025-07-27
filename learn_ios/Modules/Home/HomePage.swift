//
//  HomePage.swift
//  learn_ios
//
//  Created by Shivam sharma on 09/07/25.
//

import Foundation
import SwiftUI

struct HomePage : View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            Text("Welcome to iOS LearnHub")
                .font(.largeTitle)
                .bold()
            
            Text("Your journey to mastering iOS development starts here.")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Image("ioshome")
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
            
            Text("""
                                                  Explore step-by-step modules on:
                                                  
                                                  • Swift language fundamentals
                                                  • UI design with SwiftUI
                                                  • Navigation and layout techniques
                                                  • State management and data flow
                                                  • Networking and APIs
                                                  • Local storage and authentication
                                                  • Device features and push notifications
                                                  
                                                  Stay consistent, practice often, and build real apps as you go. 🚀
                                                  """)
            .font(.body)
            .multilineTextAlignment(.leading)
            
            Text("Ready to dive in? Select a module from the sidebar.")
                .font(.headline)
                .padding(.top)
        }
    }
}

#Preview {
    HomePage()
}
