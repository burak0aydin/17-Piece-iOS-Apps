//
//  ViewController.swift
//  LoyalApp
//
//  Created by Burak Aydın on 23.09.2023.
//

import UIKit

class MainPage: UIViewController {
    
    @IBOutlet weak var userPicture1ImageView: UIImageView!
    @IBOutlet weak var userPicture2İmageview: UIImageView!
    
    @IBOutlet weak var NameAndSurnameLabel: UILabel!
    @IBOutlet weak var myWalletButton: UIButton!
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    @IBOutlet weak var selectedLabel: UILabel!
    
    @IBOutlet weak var homeView: UIView!
    
    @IBOutlet weak var memberShips: UIView!
    
    @IBOutlet weak var memoryNFTs: UIView!
    
    @IBOutlet weak var Rewerds: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myWalletButton.setImage(UIImage(named: "Globe"), for: .normal)
        // Shadow Color and Radius
        myWalletButton.layer.shadowColor = UIColor.init(red: 0.4, green: 0.2, blue: 1.0, alpha: 1.0).cgColor
        myWalletButton.layer.shadowOffset = CGSize(width:2.0, height: 6.0)
        myWalletButton.layer.shadowOpacity = 1.0
        myWalletButton.layer.shadowRadius = 0.0
        myWalletButton.layer.masksToBounds = false
        myWalletButton.layer.cornerRadius = 15.0
         

        
    }
    @IBAction func myWalletButton(_ sender: Any) {
    }
    
    @IBAction func segmentedContRoller(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            homeView.alpha = 1
            memberShips.alpha = 0
            memoryNFTs.alpha = 0
            Rewerds.alpha = 0
            
            selectedLabel.text = "Home"

        } else if sender.selectedSegmentIndex == 1 {
            homeView.alpha = 0
            memberShips.alpha = 1
            memoryNFTs.alpha = 0
            Rewerds.alpha = 0
            
            selectedLabel.text = "Memberships"


        } else if sender.selectedSegmentIndex == 2 {
            homeView.alpha = 0
            memberShips.alpha = 0
            memoryNFTs.alpha = 1
            Rewerds.alpha = 0
            
            selectedLabel.text = "Memory NFT's "

        } else  {
            homeView.alpha = 0
            memberShips.alpha = 0
            memoryNFTs.alpha = 0
            Rewerds.alpha = 1
            
            selectedLabel.text = "Rewerds"


        }
    }
    
}






