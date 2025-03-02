//
//  memberships.swift
//  LoyalApp
//
//  Created by Burak Aydın on 23.09.2023.
//

import UIKit

class memberships: UIViewController {
    
    let memberShips = ["Varsapp"]

   
    @IBOutlet weak var membershipsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        membershipsTableView.delegate = self
        membershipsTableView.dataSource = self
        
        membershipsTableView.separatorColor = UIColor(white: 0.95, alpha: 1)

    }

}

extension memberships: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        memberShips.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let  memoryshipsCell = membershipsTableView.dequeueReusableCell(withIdentifier: "memoryshipsCell") as! MemoryshipsCell
        
        memoryshipsCell.membershipImageView.image = UIImage(named: "VarsappLogo")
        
        memoryshipsCell.membershipName.text = "Varsapp"
        
        memoryshipsCell.memoriesLabel.text = "Memories"
        
        memoryshipsCell.numberOfMemories.text = "1"
        
        memoryshipsCell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        memoryshipsCell.layer.cornerRadius = 15
        memoryshipsCell.memoryViewCell.layer.cornerRadius = 15
        
        return memoryshipsCell
        
    }
    
}

  
