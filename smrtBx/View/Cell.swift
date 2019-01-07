//
//  Cell.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var picImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descrLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.picImage.image = UIImage(named: "defaultPic")!
//        self.picImage.frame.size.width = self.picImage.frame.height
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
}
