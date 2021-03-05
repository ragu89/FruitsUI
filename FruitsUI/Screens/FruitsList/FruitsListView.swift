//
//  FruitsListView.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 05.03.21.
//

import SwiftUI

struct FruitsListView: View {
    var body: some View {
        content
            .navigationTitle("Fruits")
    }
    
    var content: some View {
        Form {
            Section {
                NavigationLink(
                    "Apple",
                    destination: FruitDetailView(
                        viewModel: FruitDetailViewModel(
                            fruit: Fruit(
                                name: "Apple",
                                description: "This is an apple"
                            )
                        )
                    )
                )
                NavigationLink(
                    "Banane",
                    destination: FruitDetailView(
                        viewModel: FruitDetailViewModel(
                            fruit: Fruit(
                                name: "Banana",
                                description: "This is a banana"
                            )
                        )
                    )
                )
                NavigationLink(
                    "Orange",
                    destination: FruitDetailView(
                        viewModel: FruitDetailViewModel(
                            fruit: Fruit(
                                name: "Orange",
                                description: "This is an Orange"
                            )
                        )
                    )
                )
            }
        }
    }
}

struct FruitsListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView()
    }
}
