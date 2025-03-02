//
//  MemoryshipsCell.swift
//  LoyalApp
//
//  Created by Burak Aydın on 24.09.2023.
//

import UIKit

protocol cellProtocol {
    func addedToList (indexPath : IndexPath)
}

class MemoryshipsCell: UITableViewCell {
    
    @IBOutlet weak var memoryViewCell: UIView!
    
    @IBOutlet weak var membershipImageView: UIImageView!
    @IBOutlet weak var membershipName: UILabel!
    
    @IBOutlet weak var memoriesLabel: UILabel!

    @IBOutlet weak var numberOfMemories: UILabel!
    
    var cellProtocol : cellProtocol?
    var indexPath : IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
