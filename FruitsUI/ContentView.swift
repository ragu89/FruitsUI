//
//  ContentView.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 05.03.21.
//

import SwiftUI

struct ContentView: View {
    
    /// Reference to customize the NavigationBar:
    /// https://medium.com/@francisco.gindre/customizing-swiftui-navigation-bar-8369d42b8805
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
        UINavigationBar.appearance().tintColor = .white
    }
    
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
            description: "This is an apple",
            imagerUrl: "https://i.ibb.co/3RHNfhF/apple.png"
        ),
        Fruit(
            name: "Banana",
            description: "This is a banana",
            imagerUrl: "https://i.ibb.co/n8x85TN/banana.png"
        ),
        Fruit(
            name: "Orange",
            description: "This is an Orange",
            imagerUrl: "https://i.ibb.co/YQZ7s6z/orange.png"
        )
    ]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
