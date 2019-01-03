//
//  InitialVC.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit

class InitialVC: UIViewController {

    var viewModel: InitialVM!
    
    @IBOutlet weak var segmentControll: UISegmentedControl!
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navSetup()
        self.uiSetup()
        self.bindAll()
    }
    
    func navSetup() {
        
    }
    
    func uiSetup() {
        self.table.register(UINib(nibName: "Cell",
                                  bundle: nil),
                                  forCellReuseIdentifier: "Cell")
    }
    
    func bindAll() {
        
    }
}
