//
//  LandmarkList.swift
//  learn_ios
//
//  Created by Shivam sharma on 07/07/25.
//

import SwiftUI

struct LandmarkList : View{
    var body : some View{
        List(landmarks, id: \.self){ landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Land Marks")
    }
}

#Preview {
    NavigationStack {
        LandmarkList()
    }
}
