//
//  UniTableViewCell.swift
//  listUni
//
//  Created by Sanzhar Kiyassov on 09.02.2024.
//

import UIKit
import SDWebImage


class UniTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setData(list: UniList) {
        nameLabel.text = list.name
        locationLabel.text = list.location
        
        logoImageView.sd_setImage(with: URL(string: list.logo), completed: nil)
    }
    
}
