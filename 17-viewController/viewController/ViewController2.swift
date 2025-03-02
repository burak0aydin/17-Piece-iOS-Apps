//
//  ViewController2.swift
//  viewController
//
//  Created by Burak Aydın on 9.05.2023.
//

import UIKit

class ViewController2: UIViewController {
    
    var password = " "
    
    @IBOutlet weak var view2Label: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordLabel.text = password
       
    }
    



}
