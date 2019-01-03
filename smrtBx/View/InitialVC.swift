//
//  InitialVC.swift
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

/*
 
 TODO: Adjust iPhone #3x for SE, etc
 
 */



class InitialVC: UIViewController {

    var viewModel: InitialVM!
    
    @IBOutlet weak var segmentControll: UISegmentedControl!
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
        self.uiSetup()
        self.bindAll()
        self.viewModel.getAll()
    }
    
    func initialSetup() {
        self.viewModel = InitialVM()
    }
    
    func uiSetup() {
        
        self.segmentControll.setTitle("Events", forSegmentAt: 0)
        self.segmentControll.setTitle("Shps", forSegmentAt: 1)
        
        self.table.register(UINib(nibName: "Cell",
                                  bundle: nil),
                                  forCellReuseIdentifier: "Cell")
    }
    
    func bindAll() {
        
        self.viewModel.dataModel.asObservable()
            .bind(to: self.table.rx.items(cellIdentifier: "Cell", cellType: Cell.self)) { row, model, cell in
                
                cell.accessoryType = .disclosureIndicator
                
                cell.descrLbl.text = model.shortDescription
                cell.titleLbl.text = model.title
                
                let url = URL(string: model.smallImage)!
                cell.picImage.af_setImage(withURL: url)
        }.disposed(by: self.viewModel.bag)
        
        self.segmentControll.rx.selectedSegmentIndex.subscribe { [weak self] indexChange in
            
            switch self!.segmentControll.selectedSegmentIndex {
            case 0:
//                self?.navigationItem.title = "World Dev"
                // DATA model change $0.shop
                print(indexChange)
            case 1:
                print(indexChange)
            
            default:
                print("Default")
            }
        }.disposed(by: self.viewModel.bag)
        
        self.table.rx.itemSelected.subscribe { [weak self] tapAtIndex in
            
            let index = tapAtIndex.element!.row
            
            self!.viewModel.goToDetils(index)
        }.disposed(by: self.viewModel.bag)
    }
}
