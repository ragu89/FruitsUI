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
            FruitsListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
