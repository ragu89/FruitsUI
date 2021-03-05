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
            .padding()
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(viewModel.fruit.name)
                .font(.title)
            Text(viewModel.fruit.description)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(
            viewModel: FruitDetailViewModel(
                fruit: Fruit(
                    name: "Apple",
                    description: "This is a green apple."
                )
            )
        )
    }
}
