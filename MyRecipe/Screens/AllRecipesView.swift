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
                ForEach(model.recipes) { recipe in
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
}

struct AllRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        AllRecipesView()
    }
}
