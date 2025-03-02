//
//  ViewController.swift
//  calculator
//
//  Created by Burak Aydın on 8.05.2023.
//

import UIKit

class ViewController: UIViewController
{
    var result = 0

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var errorMessage: UILabel!

    // Called when the view is loaded.
    // Görünüm yüklendiğinde çağrılır.
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    

    // Performs addition and displays the result.
    // Toplama işlemini gerçekleştirir ve sonucu gösterir.
    @IBAction func additionButton(_ sender: Any)
    {
        if let firstNumber = Int(firstText.text!), let secondNumber = Int(secondText.text!)
        {
            result = firstNumber + secondNumber
            resultLabel.text = String(result)
        }
        else
        {
            errorMessage.text = "Please enter a valid value"
        }
    }

    // Performs subtraction and displays the result.
    // Çıkarma işlemini gerçekleştirir ve sonucu gösterir.
    @IBAction func subtractionButton(_ sender: Any)
    {
        if let firstNumber = Int(firstText.text!), let secondNumber = Int(secondText.text!)
        {
            result = firstNumber - secondNumber
            resultLabel.text = String(result)
        }
        else
        {
            errorMessage.text = "Please enter a valid value"
        }
    }

    // Performs multiplication and displays the result.
    // Çarpma işlemini gerçekleştirir ve sonucu gösterir.
    @IBAction func multiplicationButton(_ sender: Any)
    {
        if let firstNumber = Int(firstText.text!), let secondNumber = Int(secondText.text!)
        {
            result = firstNumber * secondNumber
            resultLabel.text = String(result)
        }
        else
        {
            errorMessage.text = "Please enter a valid value"
        }
    }

    // Performs division and displays the result.
    // Bölme işlemini gerçekleştirir ve sonucu gösterir.
    @IBAction func divisionButton(_ sender: Any)
    {
        if let firstNumber = Int(firstText.text!), let secondNumber = Int(secondText.text!)
        {
            result = firstNumber / secondNumber
            resultLabel.text = String(result)
        }
        else
        {
            errorMessage.text = "Please enter a valid value"
        }
    }
}
