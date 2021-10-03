//
//  ActionButton.swift
//  UIDemo
//
//  Created by Mahmoud Fares on 02/10/2021.
//

import Foundation
import UIKit

enum ButtonStyle {
    case enable
    case disable
}

class ActionButton: UIButton {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }

    private func setupUI() {
        self.layer.cornerRadius = 4
    }
    
    func handleStyleButton(_ style: ButtonStyle) {
        switch style {
        case .enable:
            self.backgroundColor =  .customColor(.enableColor)
        case .disable:
            self.backgroundColor = .customColor(.disableColor)
        }
    }
}
