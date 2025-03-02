//
//  Persons.swift
//  changePages
//
//  Created by Burak Aydın on 17.09.2023.
//

import Foundation

class Persons {
    
    var name : String?
    var age : Int?
    var height : Double?
    var married : Bool?
    
    init() {
        
    }
    
    init(name: String, age: Int, height: Double, married: Bool) {
        self.name = name
        self.age = age
        self.height = height
        self.married = married
    }
}
