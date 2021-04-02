//
//  FruitDetailView.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 05.03.21.
//

import SwiftUI

struct FruitDetailView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State var isImageLoadedForAnimation = false
    @State var isImageLoaded = false
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
            
            HStack {
                Spacer()
            
                AsyncImage(
                    url: URL(string: viewModel.fruit.imagerUrl)!,
                    placeholder: {
                        ProgressView()
                    },
                    image: {
                        Image.init(uiImage: $0)
                            .resizable()
                    },
                    imageLoadedCompletion: {
                        withAnimation {
                            self.isImageLoadedForAnimation = true
                        }
                        self.isImageLoaded = true
                    }
                )
//                .opacity(isFrameHeightAnimate ? 0)
                .aspectRatio(contentMode: .fit)
                .padding(44/2)
                .padding(.top, 44+22)
                
                Spacer()
            }
            .background(
                AngularGradient(
                    gradient: colorScheme == .dark ?
                        viewModel.fruit.backgroundGradientDark
                        : viewModel.fruit.backgroundGradientLight,
                    center: .bottomTrailing
                ).opacity(isImageLoaded ? 1 : 0)
            )
            .edgesIgnoringSafeArea(.all)
            .frame(
                height: isImageLoadedForAnimation ? 300 : 250
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
                    imagerUrl: "http://",
                    primaryColorHex: "FF0000",
                    primaryDarkColorHex: "0000FF"
                )
            )
        )
    }
}
