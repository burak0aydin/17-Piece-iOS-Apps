//
//  DetailsViewController.swift
//  cityBooklet
//
//  Created by Burak Aydın on 19.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityRegionLabel: UILabel!
    
    var cityInformation : CityDetails?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.image = cityInformation?.cityImageNames
        cityNameLabel.text = cityInformation?.cityNames
        cityRegionLabel.text = cityInformation?.cityRegions


    }
    



}
