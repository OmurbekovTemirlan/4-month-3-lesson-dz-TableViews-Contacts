//
//  Fonts.swift
//  4 month 3 lesson dz
//
//  Created by Apple on 20.2.2024.
//

import UIKit

enum Fonts: String {
    case bold = "Outfit-Bold"
    case medium = "Outfit-Medium"
    case regular = "Outfit-Regular"
    
    func size(_ size: CGFloat) -> UIFont {
        if let font = UIFont(name: rawValue, size: size) {
            return font
        } else {
            return UIFont.systemFont(ofSize: size)
        }
    }
}
