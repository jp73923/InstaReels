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
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblInstaReels.register(UINib(nibName: "Cell_Reels", bundle: nil), forCellReuseIdentifier: "Cell_Reels")
    }
}
//MARK:- UITableViewDelegate,UITableViewDataSource
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 35
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Reelcell = self.tblInstaReels.dequeueReusableCell(withIdentifier: "Cell_Reels") as! Cell_Reels
        if indexPath.row % 2 == 0 {
            Reelcell.contentView.backgroundColor = UIColor.red
        }
        return Reelcell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.tblInstaReels.frame.size.height
    }
    
}