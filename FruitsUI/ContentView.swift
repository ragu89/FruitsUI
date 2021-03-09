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
            description: "This is an apple",
            imagerUrl: "https://www.seekpng.com/png/detail/968-9681864_apple-png-background-stock-photo-apple-fruit.png"
        ),
        Fruit(
            name: "Banana",
            description: "This is a banana",
            imagerUrl: "https://static.vecteezy.com/system/resources/previews/001/208/675/original/banana-png.png"
        ),
        Fruit(
            name: "Orange",
            description: "This is an Orange",
            imagerUrl: "https://lh3.googleusercontent.com/proxy/vRtHm1myB31Z5bjZ3jwx4AssVGm2IaPAYMH84XIPpXuOZrKb5afHP_ZTE6RunJEXBLA5TSAK2AOxMNafAABlTVIPjx7HeECghdhgcs3Zw3D19XNTuy0kMRbrZg"
        )
    ]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
