//
//  ExampleCellView.swift
//  MagicSample
//
//  Created by raniys on 2019/9/23.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct ExampleCellView: View {
    let example: Example
    
    var body: some View {
        HStack {
            Image(example.imageName)
                .resizable()
                .frame(width: 44, height: 44, alignment: .leading)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(example.title)
            }
        }
    }
}

struct ExampleCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExampleCellView(example: exampleList[0])
            ExampleCellView(example: exampleList[1])
        }
        .previewLayout(.fixed(width: 300, height: 120))
    }
}
