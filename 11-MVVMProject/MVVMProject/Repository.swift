//
//  Repository.swift
//  MVVMProject
//
//  Created by Burak Aydın on 20.09.2023.
//

import Foundation
import RxSwift

class Repository {
    var result = BehaviorSubject <String> (value: "0")
    
    func add (enteredNumber1 : String, enteredNumber2 : String) {
        if let number1 = Int(enteredNumber1) , let number2 = Int(enteredNumber2) {
            let sum = number1 + number2
            result.onNext(String(sum))
        }
    }
    
    func multiplication (enteredNumber1 : String, enteredNumber2 : String) {
        if let number1 = Int(enteredNumber1) , let number2 = Int(enteredNumber2) {
            let multiplication = number1 * number2
            result.onNext(String(multiplication))
        }
    }
}
