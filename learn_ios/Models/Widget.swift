//
//  Widget.swift
//  learn_ios
//
//  Created by Shivam sharma on 07/07/25.
//

import Foundation
import SwiftUI
struct Widget: Identifiable {
    let id = UUID()
    let title: String
    let view: AnyView
}
