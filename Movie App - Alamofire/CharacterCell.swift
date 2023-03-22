//
//  CharacterCell.swift
//  Movie App - Alamofire
//
//  Created by SEMANUR ESERLER on 22.03.2023.
//

import UIKit

class CharacterCell: UITableViewCell {

    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
