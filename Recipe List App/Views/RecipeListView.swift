//
//  ContentView.swift
//  Recipe List App
//
//  Created by GUOLI LI on 11/03/2021.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {

        NavigationView {
            List(model.recipes) {i in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: i),
                    label: {
                        HStack(spacing: 20.0){
                            Image(i.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(5.0)
                            Text(i.name)
                        }
                    })
                
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
