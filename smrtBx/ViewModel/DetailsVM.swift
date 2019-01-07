//
//  DetailsVM.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class DetailsVM: BaseVM {
    
    let bag = DisposeBag()
    
    func gotoMap() {
        VCRouter.singletone.goto(.map, model: self.dataModel)
    }
}
