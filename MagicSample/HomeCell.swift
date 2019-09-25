//
//  HomeCell.swift
//  MagicSample
//
//  Created by raniys on 2019/9/25.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct HomeCell: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        
        VStack {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { item in
                        NavigationLink(
                            destination: LandmarkDetailView(
                                landmark: item
                            )
                        ) {
                            CategoryItem(landmark: item)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}


struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}


struct HomeCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeCell(
            categoryName: landmarkList[0].category.rawValue,
            items: Array(landmarkList.prefix(4))
        )
    }
}
