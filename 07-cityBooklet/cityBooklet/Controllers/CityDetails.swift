//
//  cityDetails.swift
//  cityBooklet
//
//  Created by Burak Aydın on 19.08.2023.
//

import Foundation
import UIKit

class CityDetails {
    
    var cityNames : String
    var cityRegions : String
    var cityImageNames = UIImage ()
    
    init(cityNames: String, cityRegions: String, cityImageNames: UIImage = UIImage ()) {
        self.cityNames = cityNames
        self.cityRegions = cityRegions
        self.cityImageNames = cityImageNames
    }
}
