//
//  BaseVC.swift
//  smrtBx
//
//  Created by admin2 on 1/7/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {

    var viewModel: BaseVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navSetup()
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
    
    @objc func goBack() {
        VCRouter.singletone.popBack()
    }
}
