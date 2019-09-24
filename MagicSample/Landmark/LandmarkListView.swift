//
//  LandmarkListView.swift
//  MagicSample
//
//  Created by raniys on 2019/9/24.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView {
            List(landmarkList) { landmark in
                NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                    LandmarkCell(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            LandmarkListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
