//
//  RecipeDetailView.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 26.05.2023.
//

import SwiftUI

struct RecipeDetailView: View {
    @ObservedObject var model = RecipeModel()
    let recipe: Recipe
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    Text(recipe.name)
                        .font(.largeTitle)
                    
                    Divider().background(.primary)
                    
                    VStack(alignment: .leading) {
                        ForEach(0..<recipe.ingredients.count, id: \.self) { index in
                            Text("• " + recipe.ingredients[index])
                                .font(.body)
                        }
                    }
                    
                    Divider().background(.primary)
                    
                    if let directions = recipe.directions, !directions.isEmpty {
                        ForEach(0..<directions.count, id: \.self) { index in
                            Text(String(index + 1) + ". " + directions[index])
                                .font(.body)
                        }
                    }
                } // V:STACK
                .padding(.horizontal, 20)
                
                Spacer()
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[2])
    }
}
