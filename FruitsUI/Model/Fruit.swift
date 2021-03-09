//
//  Fruit.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 05.03.21.
//

import Foundation

struct Fruit: Hashable {
    
    let name: String
    let description: String
    let imagerUrl: String
    let details: String? = nil
    let hexColorTint: String? = nil

    static func == (a: Fruit, b: Fruit) -> Bool {
        return a.name == b.name && a.description == b.description
    }
    
}
