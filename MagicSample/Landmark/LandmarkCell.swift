//
//  LandmarkCell.swift
//  MagicSample
//
//  Created by raniys on 2019/9/24.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct LandmarkCell: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
        }
    }
}

struct LandmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkCell(landmark: landmarkList[0])
            LandmarkCell(landmark: landmarkList[1])
        }
        .previewLayout(.fixed(width: 250, height: 70))
    }
}
