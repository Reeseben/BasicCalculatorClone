//
//  NumberButton.swift
//  Calculator
//
//  Created by Ben Erekson on 8/16/21.
//

import UIKit

class NumberButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .numbers
        self.addCornerRadius(radius: 20)
        self.layer.masksToBounds = true
        self.setTitleColor(.textColor, for: .normal)
    }
}
