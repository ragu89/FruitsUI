//
//  ContentView.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 05.03.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            FruitsListView(
                viewModel: FruitsListViewModel(
                    fruits: listOfFruits
                )
            )
        }
    }
    
    var listOfFruits = [
        Fruit(
            name: "Apple",
            description: "This is an apple"
        ),
        Fruit(
            name: "Banana",
            description: "This is a banana"
        ),
        Fruit(
            name: "Orange",
            description: "This is an Orange"
        )
    ]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
