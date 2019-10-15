//
//  ContentView.swift
//  MagicSample
//
//  Created by raniys on 2019/9/23.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(exampleList) { example in
                NavigationLink(destination: LandmarkListView { LandmarkDetailView(landmark: $0) }) {
                    ExampleCellView(example: example)
                }
            }
            .navigationBarTitle(Text("SwiftUI Examples"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
