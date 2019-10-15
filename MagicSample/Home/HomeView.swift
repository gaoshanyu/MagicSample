//
//  HomeView.swift
//  MagicSample
//
//  Created by raniys on 2019/9/25.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkList,
            by: { $0.category.rawValue }
        )
    }
    
    var featured: [Landmark] {
        landmarkList.filter { $0.isFeatured }
    }
    
    @State var showingProfile = false
    @EnvironmentObject var userData: UserData
    
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                FeaturedLandmarks(landmarks: featured)
                    .scaledToFill()
                    .frame(height: CGFloat(200))
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    HomeCell(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
                NavigationLink(destination: LandmarkListView { LandmarkDetailView(landmark: $0) }) {
                    Text("See All")
                }
            }
            .navigationBarTitle(Text("Apple's Sample"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(self.userData)
            }
        }
    }
}

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image.resizable()
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
