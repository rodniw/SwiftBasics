//
//  UserData.swift
//  SwiftBasics
//
//  Created by Rodion Prosvirnin on 16.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//

import Foundation

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmark = landmarkData
}
