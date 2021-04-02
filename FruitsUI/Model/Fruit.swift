//
//  Fruit.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 05.03.21.
//

import Foundation
import SwiftUI

struct Fruit: Hashable {
    
    let name: String
    let description: String
    let imagerUrl: String
    let primaryColorHex: String
    let primaryDarkColorHex: String
    let details: String? = nil
    let hexColorTint: String? = nil
    
    static func == (a: Fruit, b: Fruit) -> Bool {
        return a.name == b.name
            && a.description == b.description
            && a.primaryColorHex == b.primaryColorHex
            && a.primaryDarkColorHex == b.primaryDarkColorHex
    }
    
    var primaryColor: Color {
        get {
            return hexStringToColor(hex: primaryColorHex)
        }
    }
    
    var primaryDarkColor: Color {
        get {
            return hexStringToColor(hex: primaryDarkColorHex)
        }
    }
    
    var backgroundGradientLight: Gradient {
        get {
            return Gradient(colors: [primaryDarkColor, primaryColor, primaryDarkColor])
        }
    }
    
    var backgroundGradientDark: Gradient {
        get {
            return Gradient(colors: [primaryColor, primaryDarkColor, primaryColor])
        }
    }
    
    // TODO: Create a Color extension
    private func hexStringToColor (hex:String, opacity: Double = 1.0) -> Color {
            var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
            if (cString.hasPrefix("#")) {
                cString.remove(at: cString.startIndex)
            }
            if ((cString.count) != 6) {
                return Color.gray
            }
            var rgbValue:UInt64 = 0
            Scanner(string: cString).scanHexInt64(&rgbValue)
            return Color(
                red: Double((rgbValue & 0xFF0000) >> 16) / 255.0,
                green: Double((rgbValue & 0x00FF00) >> 8) / 255.0,
                blue: Double(rgbValue & 0x0000FF) / 255.0,
                opacity: Double(opacity)
            )
        }
    
}
