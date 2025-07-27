//
//  StateManagementView.swift
//  learn_ios
//
//  Created by Shivam sharma on 07/07/25.
//

import Foundation
import SwiftUI

struct StateManagementView: View {
    var body: some View {
        List {
            NavigationLink("State Example", destination: StateDemoView()).padding(8)
            NavigationLink("Binding Example", destination: BindingDemoView()).padding(8)
            NavigationLink("ObservedObject Example", destination: ObservedObjectDemoView()).padding(8)
            NavigationLink("EnvironmentObject Example", destination: EnvironmentObjectDemoView()).padding(8)
        }
        .padding(.top)
        .navigationTitle("State Management")
    }
}
