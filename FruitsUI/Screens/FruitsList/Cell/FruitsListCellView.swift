//
//  FruitsListCellView.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 12.03.21.
//

import SwiftUI

struct FruitsListCellView: View {
    
    let viewModel: FruitsListCellViewModel
    
    init(viewModel: FruitsListCellViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 15) {
            
            AsyncImage(
                url: URL(string: viewModel.fruit.imagerUrl)!,
                placeholder: { ProgressView() },
                image: {
                    Image.init(uiImage: $0)
                        .resizable()
                    
                }
            ).frame(maxWidth: 29, maxHeight: 29)
            
            Text(viewModel.fruit.name)
            
            Spacer()
            
        }
        
    }
}

struct FruitsListCellView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListCellView(
            viewModel: FruitsListCellViewModel(
                fruit: Fruit(
                    name: "Apple",
                    description: "This is an apple",
                    imagerUrl: "https://",
                    primaryColorHex: "FF0000",
                    primaryDarkColorHex: "0000FF"
                )
            )
        )
    }
}
