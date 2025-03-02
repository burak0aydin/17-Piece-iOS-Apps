//
//  MainPageViewModel.swift
//  MVVMProject
//
//  Created by Burak Aydın on 20.09.2023.
//

import Foundation
import RxSwift

class MainPageViewModel {
    
    var result = BehaviorSubject <String> (value: "0")
    var repository = Repository ()
    
    init() {
        result = repository.result
    }
    
    func add (enteredNumber1 : String, enteredNumber2 : String) {
        repository.add(enteredNumber1: enteredNumber1, enteredNumber2: enteredNumber2)
    }
    
    func multiplication (enteredNumber1 : String, enteredNumber2 : String) {
        repository.multiplication(enteredNumber1: enteredNumber1, enteredNumber2: enteredNumber2)
    }
}
