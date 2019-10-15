//
//  UserData.swift
//  MagicSample
//
//  Created by raniys on 2019/9/24.
//  Copyright © 2019 raniys. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = true
    @Published var landmarks = landmarkList
    @Published var profile = Profile.default
}
