//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by raniys on 10/15/19.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkListView { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        LandmarkListView { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}
