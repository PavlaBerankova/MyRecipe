//
//  CodableBundleExtension.swift
//  MyRecipe
//
//  Created by Pavla Beránková on 25.05.2023.
//

import Foundation

class LoadData {
    static func decode<T: Codable>(_ file: String) -> T {
        guard let pathString = Bundle.main.path(forResource: file, ofType: "json") else {
            fatalError("Failed to locate \(file)")
        }
        
        let url = URL(fileURLWithPath: pathString)
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file)")
        }
        
        return loaded
    }
}

