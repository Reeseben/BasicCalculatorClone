//
//  OperatorButton.swift
//  Calculator
//
//  Created by Ben Erekson on 8/16/21.
//

import UIKit

class OperatorButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .operators
        self.layer.masksToBounds = true
        self.setTitleColor(.textColor, for: .normal)
        self.addCornerRadius(radius: 20)
    }
}
