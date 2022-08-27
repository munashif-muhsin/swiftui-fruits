//
//  FruitModel.swift
//  fruits
//
//  Created by Muhsin Munashif on 25/08/2022.
//

import SwiftUI

// Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

