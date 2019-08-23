//
//  Hike.swift
//  List SwiftUI
//
//  Created by Gil Rodarte on 22/08/19.
//  Copyright © 2019 Gil Rodarte. All rights reserved.
//

import Foundation
import SwiftUI

struct Hike: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func getAll() -> [Hike] {
        return [
            Hike(name: "Chipinque", imageURL: "1", miles: 12.0),
            Hike(name: "Los Tuxtlas Biosphere Reserve", imageURL: "2", miles: 10.0),
            Hike(name: "Paso de Cortes", imageURL: "3", miles: 5.0)
        ]
    }
}
