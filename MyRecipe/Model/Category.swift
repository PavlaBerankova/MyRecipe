//
//  CategoryModel.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 25.05.2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
