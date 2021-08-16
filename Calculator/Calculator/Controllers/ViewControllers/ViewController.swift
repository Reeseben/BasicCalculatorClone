//
//  ViewController.swift
//  Calculator
//
//  Created by Ben Erekson on 8/16/21.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var displayTextField: UITextField!
    
    //MARK: - Properties
    var currentTotal: Double?
    var currentOperator: String?
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        displayTextField.text = "0"
    }
    
    //MARK: - Actions
    @IBAction func calculatorButtonTapped(_ sender: UIButton) {
        var text = displayTextField.text ?? ""
        guard var number = Double(text),
              let senderTitle = sender.currentTitle else { displayTextField.text = "0"; return }
        
        if text == "0" || text == "-nan" || text == "inf" {
            text = ""
        }
        
        switch senderTitle {
        case "AC":
            currentTotal = nil
            currentOperator = nil
            displayTextField.text = "0"
        case "+/-":
            number *= -1.0
            displayTextField.text = "\(number)"
        case "%":
            number /= 100
            displayTextField.text = "\(number)"
        case "÷":
            currentTotal = number
            currentOperator = "÷"
            displayTextField.text = "0"
        case "7":
            text.append("7")
            displayTextField.text = text
        case "8":
            text.append("8")
            displayTextField.text = text
        case "9":
            text.append("9")
            displayTextField.text = text
        case "x":
            currentTotal = number
            currentOperator = "x"
            displayTextField.text = "0"
        case "4":
            text.append("4")
            displayTextField.text = text
        case "5":
            text.append("5")
            displayTextField.text = text
        case "6":
            text.append("6")
            displayTextField.text = text
        case "-":
            currentTotal = number
            currentOperator = "-"
            displayTextField.text = "0"
        case "1":
            text.append("1")
            displayTextField.text = text
        case "2":
            text.append("2")
            displayTextField.text = text
        case "3":
            text.append("3")
            displayTextField.text = text
        case "+":
            currentTotal = number
            currentOperator = "+"
            displayTextField.text = "0"
        case "0":
            text.append("0")
            displayTextField.text = text
        case ".":
            if text.contains("."){
                
            } else {
                text.append(".")
                displayTextField.text = text
            }
            
        case "=":
            guard let currentOperator = currentOperator,
                  let currentTotal = currentTotal else { return }
            switch currentOperator {
            case "+":
                let result = currentTotal + number
                displayTextField.text = "\(result)"
            case "÷":
                let result = currentTotal / number
                displayTextField.text = "\(result)"
            case "x":
                let result = currentTotal * number
                displayTextField.text = "\(result)"
            case "-":
                let result = currentTotal - number
                displayTextField.text = "\(result)"
            default:
                print("You forgot an operator")
            }
        default:
            print("You did a button wrong.")
        }
    }
    


}

