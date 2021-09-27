//
//  Cell_Reels.swift
//  InstaReels
//
//  Created by Jay's Mac Mini on 25/09/21.
//

import UIKit
import AVFoundation

class Cell_Reels: UITableViewCell {

    
   @IBOutlet weak var marqueeLabel: UILabel!
   @IBOutlet weak var imgReels: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
