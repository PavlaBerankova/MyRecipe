//
//  RecipeListView.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 25.05.2023.
//

import SwiftUI

struct AllRecipesView: View {
    @ObservedObject var model = RecipeModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(sortedRecipes()) { recipe in
                    NavigationLink {
                        RecipeDetailView(recipe: recipe)
                    } label: {
                        Text(recipe.name)
                            .font(.title3)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("All Recipes")
        }
        
    }
    
    private func sortedRecipes() -> [Recipe] {
        model.recipes.sorted( by: { $0.name < $1.name} )
    }
    
}

struct AllRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        
        AllRecipesView()
    }
}
