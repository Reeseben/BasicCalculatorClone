//
//  TopOperatorButton.swift
//  Calculator
//
//  Created by Ben Erekson on 8/16/21.
//

import UIKit

class TopOperatorButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .topOpColor
        self.addCornerRadius(radius: 20)
        self.layer.masksToBounds = true
        self.setTitleColor(.textColor, for: .normal)
    }
}
