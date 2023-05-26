//
//  MainView.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 25.05.2023.
//

import SwiftUI

struct MainView: View {
  
    var body: some View {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Category")
                    }
                
                AllRecipesView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("All recipes")
                    }
                
            } //: TAB
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
