//
//  StyleGuide.swift
//  Calculator
//
//  Created by Ben Erekson on 8/16/21.
//

import UIKit

enum ColorNames {
    static let display = "Display"
    static let numberColor = "Number"
    static let operators = "Operators"
    static let textColor = "TextColor"
    static let topOpColor = "topOperator"
}

extension UIColor {
    static let display = UIColor(named: ColorNames.display)
    static let numbers = UIColor(named: ColorNames.numberColor)
    static let operators = UIColor(named: ColorNames.operators)
    static let textColor = UIColor(named: ColorNames.textColor)
    static let topOpColor = UIColor(named: ColorNames.topOpColor)
}

extension UIView {
    func addCornerRadius(radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
    }
}
