//
//  FruitsListView.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 05.03.21.
//

import SwiftUI

struct FruitsListView: View {
    
    let viewModel: FruitsListViewModel
    
    init(viewModel: FruitsListViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        content
            .navigationTitle("Fruits")
    }
    
    var content: some View {
        Form {
            Section {
                ForEach(viewModel.fruits, id: \.self) { fruit in
                    NavigationLink(
                        destination: FruitDetailView(
                            viewModel: FruitDetailViewModel(
                                fruit: fruit
                            )
                        ),
                        label: {
                            FruitsListCellView(
                                viewModel: FruitsListCellViewModel(
                                    fruit: fruit
                                )
                            )
                        }
                    )
                }
            }
        }
    }
}

struct FruitsListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView(
            viewModel: FruitsListViewModel(
                fruits: [
                    Fruit(
                        name: "Apple",
                        description: "This is an apple",
                        imagerUrl: "http://"
                    ),
                    Fruit(
                        name: "Banana",
                        description: "This is a banana",
                        imagerUrl: "http://"
                    ),
                    Fruit(
                        name: "Orange",
                        description: "This is an Orange",
                        imagerUrl: "http://"
                    )
                ]
            )
        )
    }
}
