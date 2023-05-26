//
//  TestView.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 26.05.2023.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = CategoryModel()
    
    let columns = [
        GridItem(.flexible(minimum: 80, maximum: 170)),
        GridItem(.flexible(minimum: 80, maximum: 170))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center,spacing: 10) {
                    ForEach(model.categories) { category in
                        NavigationLink {
                            RecipeListView(category: category)
                        } label: {
                            CategoryItemView(category: category)
                        }
                    }
                }
                .navigationTitle("Category")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


