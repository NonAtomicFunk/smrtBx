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
    @IBOutlet weak var showOnMapBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navSetup()
        self.uiSetup()
    }
    
    func navSetup() {

        let btn = UIBarButtonItem(image: UIImage(named: "backIcn"),
                                  style: .plain,
                                  target: self,
                                  action: #selector(self.goBack))
        btn.tintColor = Constants().reddishOrange
        
        self.navigationItem.leftBarButtonItem = btn
        
        self.navigationItem.title = "Events"
    }
    
    func uiSetup() {
        let urlStr = self.viewModel.dataModel.bigImage// ?? self.viewModel.dataModel.smallImage
        let url = URL(string: urlStr)!
        self.maineImg.af_setImage(withURL: url)
        
        self.titleLbl.text = self.viewModel.dataModel.title
        self.dateLbl.text = self.viewModel.dataModel.shortDescription
        self.mainDescrLbl.text = self.viewModel.dataModel.description
        
        self.showOnMapBtn.backgroundColor = Constants().green
    }
    
    @objc func goBack() {
        self.viewModel.goBack()
    }
    
    @IBAction func showOnMapBtnTapped(_ sender: Any) {
        
    }
}
