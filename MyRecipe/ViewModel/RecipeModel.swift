//
//  RecipeViewModel.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 25.05.2023.
//

import Foundation

class RecipeModel: ObservableObject {
   @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = LoadData.decode("myRecipes")
    }
}
