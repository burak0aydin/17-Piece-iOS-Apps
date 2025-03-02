//
//  ViewController.swift
//  MVVMProject
//
//  Created by Burak Aydın on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldNumber1: UITextField!
    @IBOutlet weak var textFieldNumber2: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    var viewModel = MainPageViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        _ = viewModel.result.subscribe(onNext: { result in
            self.labelResult.text = result
        })
    }
    
    @IBAction func addButton(_ sender: Any) {
        if let enteredNumber1 = textFieldNumber1.text , let enteredNumber2 = textFieldNumber2.text {
            viewModel.add(enteredNumber1: enteredNumber1, enteredNumber2: enteredNumber2)
        }
    }
    
    @IBAction func multiplicationButton(_ sender: Any) {
        if let enteredNumber1 = textFieldNumber1.text , let enteredNumber2 = textFieldNumber2.text {
            viewModel.multiplication(enteredNumber1: enteredNumber1, enteredNumber2: enteredNumber2)
        }
    }
    
}
