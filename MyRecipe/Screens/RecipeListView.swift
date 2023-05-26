//
//  RecipeListView.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 25.05.2023.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var model = RecipeModel()
    var category: Category
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(getRecipesInCategory(category.name)){ recipe in
                    NavigationLink {
                        RecipeDetailView(recipe: recipe)
                    } label: {
                        Text(recipe.name)
                            .font(.title3)
                            
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(category.name)
        }
    }
    
    private func getRecipesInCategory(_ category: String) -> [Recipe] {
        model.recipes.filter { $0.category == category }
    }
    
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        let model = CategoryModel()
        
        RecipeListView(category: model.categories[0])
    }
}
