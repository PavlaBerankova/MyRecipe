//
//  ItemView.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 26.05.2023.
//

import SwiftUI

struct CategoryItemView: View {
    @ObservedObject var model = CategoryModel()
    let category: Category
    
    var body: some View {
        VStack {
            Image(category.image)
               
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .opacity(0.8)
            .shadow(radius: 3, x: 3, y: 3)
            Text(category.name)
                .font(.body)
                .foregroundColor(.accentColor)
                .fontWeight(.medium)
                .shadow(radius: 2, x: 2, y: 2)
                
        }
        .padding(.bottom, 20)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        let model = CategoryModel()
        
        CategoryItemView(category: model.categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}

