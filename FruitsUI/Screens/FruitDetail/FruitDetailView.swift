//
//  FruitDetailView.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 05.03.21.
//

import SwiftUI

struct FruitDetailView: View {
    
    let viewModel: FruitDetailViewModel
    
    init(viewModel: FruitDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        content
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            .navigationBarTitleDisplayMode(.inline)
    }
    
    var content: some View {
        VStack(alignment: .leading) {
            
            AsyncImage(
                url: URL(string: viewModel.fruit.imagerUrl)!,
                placeholder: {
                    ProgressView()
                },
                image: {
                    Image.init(uiImage: $0)
                        .resizable()
                })
                .aspectRatio(contentMode: .fit)
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 200
                )
            
            VStack(alignment: .leading, spacing: 20) {
                Text(viewModel.fruit.name)
                    .font(.title)
                Text(viewModel.fruit.description)
            }.padding()
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(
            viewModel: FruitDetailViewModel(
                fruit: Fruit(
                    name: "Apple",
                    description: "This is a green apple.",
                    imagerUrl: "http://"
                )
            )
        )
    }
}
