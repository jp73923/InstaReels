//
//  ViewController.swift
//  InstaReels
//
//  Created by Jay's Mac Mini on 25/09/21.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    //MARK:- IBOutlets
    @IBOutlet weak var tblInstaReels: UITableView!
    
    //MARK:- Global Vaiables
    var arrImgs = ["p2.jpeg","p3.jpeg","p4.jpeg","p5.jpeg"]
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblInstaReels.register(UINib(nibName: "Cell_Reels", bundle: nil), forCellReuseIdentifier: "Cell_Reels")
    }
}
//MARK:- UITableViewDelegate,UITableViewDataSource
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImgs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Reelcell = self.tblInstaReels.dequeueReusableCell(withIdentifier: "Cell_Reels") as! Cell_Reels
        UIView.animate(withDuration: 12.0, delay: 1, options: ([.curveLinear, .repeat]), animations: {() -> Void in
            Reelcell.marqueeLabel.center = CGPoint.init(x: 35 - Reelcell.marqueeLabel.bounds.size.width / 2, y: Reelcell.marqueeLabel.center.y)
        }, completion:  { _ in })
        Reelcell.imgReels.image = UIImage.init(named: arrImgs[indexPath.row])
        return Reelcell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.tblInstaReels.frame.size.height
    }
    
}
