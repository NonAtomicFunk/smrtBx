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

class DetailsVM: NSObject {
    
    let bag = DisposeBag()
    var dataModel: DataModel!
    
    init(_ chosenModel: DataModel) {
        super.init()
        self.dataModel = chosenModel
    }
    
    func goBack() {
        VCRouter.singletone.popBack()
    }
}
