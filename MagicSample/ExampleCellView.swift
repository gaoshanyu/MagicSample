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
                .frame(width: 88, height: 88, alignment: .leading)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(example.title)
                Text(example.subtitle)
            }
        }
    }
}

struct ExampleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleCellView(example: Example(title: "总书记", subtitle: "2019-09-21 12:38:13", content: "让老区人民过上幸福美好生活。"))
    }
}
