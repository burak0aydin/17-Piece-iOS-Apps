//
//  DetailsViewController.swift
//  TableView
//
//  Created by Burak Aydın on 17.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var selectedSuperHeroNames = ""
    var selectedSuperHeroImageNames =  ""
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = selectedSuperHeroNames
        imageView.image = UIImage(named: selectedSuperHeroImageNames)
    }
    

}
