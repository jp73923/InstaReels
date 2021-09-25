//
//  Cell_Reels.swift
//  InstaReels
//
//  Created by Jay's Mac Mini on 25/09/21.
//

import UIKit
import AVFoundation

class Cell_Reels: UITableViewCell {

    
   /* @IBOutlet weak var videoPlayerSuperView: UIView!
    
    var avPlayer: AVPlayer?
    var avPlayerLayer: AVPlayerLayer?
    var paused: Bool = false
    
    var videoPlayerItem: AVPlayerItem? = nil {
            didSet {
                /*
                 If needed, configure player item here before associating it with a player.
                 (example: adding outputs, setting text style rules, selecting media options)
                 */
                avPlayer?.replaceCurrentItem(with: self.videoPlayerItem)
            }
        }*/
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
