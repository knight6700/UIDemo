//
//  Colors.swift
//  UIDemo
//
//  Created by Mahmoud Fares on 02/10/2021.
//

import Foundation
import UIKit
//MARK: OLD Approach
struct Colors {
    static let backgroundColor = UIColor(named: "background") ?? UIColor()
}

// MARK: New Approach
enum ColorStyle: String {
    case backgroundColor = "background"
    case enableColor = "enableButton"
    case disableColor = "disableButton"
}

extension UIColor {
    static func customColor(_ style: ColorStyle) -> UIColor {
        return UIColor(named: style.rawValue) ?? UIColor()
    }
}
