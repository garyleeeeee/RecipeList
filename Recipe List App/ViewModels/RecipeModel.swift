//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by GUOLI LI on 11/03/2021.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
    }
    
    
}
