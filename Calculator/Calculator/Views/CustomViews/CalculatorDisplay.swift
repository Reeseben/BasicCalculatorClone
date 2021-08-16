//
//  CalculatorDisplay.swift
//  Calculator
//
//  Created by Ben Erekson on 8/16/21.
//

import UIKit

class CalculatorDisplay: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addCornerRadius(radius: self.frame.height/2)
        self.layer.masksToBounds = true
        self.textColor = .textColor
        self.backgroundColor = .display
        self.inputView = UIView()
    }
    
}
