//
//  CategoryViewmodel.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 25.05.2023.
//

import Foundation

class CategoryModel: ObservableObject {
   @Published var categories = [Category]()
    
    init() {
        self.categories = LoadData.decode("category")
    }
}
