//
//  SwiftConcept.swift
//  learn_ios
//
//  Created by Shivam sharma on 06/07/25.
//

import Foundation

struct SwiftConcept: Identifiable {
    let id = UUID()
    let title: String
    let videoId: String?
    let sections: [ConceptSection]
}

enum ConceptSection: Identifiable {
    case title(String)
    case subTitle(String)
    case paragraph(String)
    case code(String)

    var id: UUID {
        UUID()
    }
}			

