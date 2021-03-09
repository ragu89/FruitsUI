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
                            FruitsListCellView(fruit)
                        }
                    )
                }
            }
        }
    }
}

struct FruitsListCellView: View {
    
    let fruit: Fruit
    
    init(_ fruit: Fruit) {
        self.fruit = fruit
    }
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 15) {
            
            AsyncImage(
                url: URL(string: fruit.imagerUrl)!,
                placeholder: { ProgressView() },
                image: {
                    Image.init(uiImage: $0)
                        .resizable()
                    
                }
            ).frame(maxWidth: 29, maxHeight: 29)
            
            Text(fruit.name)
            
            Spacer()
            
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
