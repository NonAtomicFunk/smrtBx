//
//  DetailsVC.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import RxDataSources
import AlamofireImage

class DetailsVC: UIViewController {

    var viewModel: DetailsVM!
    
    @IBOutlet weak var maineImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var mainDescrLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navSetup()
        self.uiSetup()
    }
    
    func navSetup() {
        let btn = UIBarButtonItem()
        btn.image = UIImage(named: "backIcn")

        btn.tintColor = Constants().reddishOrange
        
        self.navigationItem.leftBarButtonItem = btn
        
        self.navigationItem.title = "Events"
    }
    
    func uiSetup() {
        let urlStr = self.viewModel.dataModel.bigImage ?? self.viewModel.dataModel.smallImage
        let url = URL(string: urlStr)!
        self.maineImg.af_setImage(withURL: url)
        
        self.titleLbl.text = self.viewModel.dataModel.title
        self.dateLbl.text = "11.2.19" //self.viewModel.dataModel.
        self.mainDescrLbl.text = self.viewModel.dataModel.description
        
    }
}
