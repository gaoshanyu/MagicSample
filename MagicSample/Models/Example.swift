//
//  Example.swift
//  MagicSample
//
//  Created by raniys on 2019/9/23.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI

struct Example: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var imageName: String
}

let exampleList = [
    Example(id: 1, title: "Apple's Sample", imageName: "image01"),
    Example(id: 2, title: "Other Samples", imageName: "image02")
]
