//
//  RecipeModel.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 25.05.2023.
//

import Foundation

struct Recipe: Codable, Identifiable {
    let id: String
    let category: String
    let image: String
    let name: String
    let ingredients: [String]
    let directions: [String]?
}
