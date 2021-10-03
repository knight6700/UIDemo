//
//  FontStyle.swift
//  UIDemo
//
//  Created by Mahmoud Fares on 02/10/2021.
//

import Foundation
import UIKit
let styles: [UIFont.TextStyle] = [.largeTitle, .title1, .title2, .title3, .headline, .subheadline, .body, .callout, .footnote, .caption1, .caption2]
enum FontStyle: String {
    case largeTitle = "Roboto-Thin"
    case title1 = "Roboto-BlackItalic"
    case title2 = "Roboto-LightItalic"
    case title3 = "Roboto-Regular"
    case subheadline = "Roboto-Bold"
}
/*
    Font
 Font name , Size
 */
extension UIFont {
    static func customFont(_ style: FontStyle, size: CGFloat? = nil)-> UIFont {
        switch style {
        case .largeTitle:
            return UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: UIFont(name: style.rawValue, size: size ?? 50) ?? UIFont())
        case .title1:
            return UIFontMetrics(forTextStyle: .title1).scaledFont(for: UIFont(name: style.rawValue, size: size ?? 50) ?? UIFont())
        case .title2:
            return UIFontMetrics(forTextStyle: .title2).scaledFont(for: UIFont(name: style.rawValue, size: size ?? 50) ?? UIFont())
        case .title3:
            return UIFontMetrics(forTextStyle: .title3).scaledFont(for: UIFont(name: style.rawValue, size: size ?? 50) ?? UIFont())
        case .subheadline:
            return UIFontMetrics(forTextStyle: .subheadline).scaledFont(for: UIFont(name: style.rawValue, size: size ?? 50) ?? UIFont())
        }
    }
}
