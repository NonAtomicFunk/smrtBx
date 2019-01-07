//
//  BaseVM.swift
//  smrtBx
//
//  Created by admin2 on 1/7/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import Foundation

class BaseVM: NSObject {
    
    var dataModel: DataModel!
    
    init(_ chosenModel: DataModel) {
        super.init()
        self.dataModel = chosenModel
    }
    
    func goBack() {
        VCRouter.singletone.popBack()
    }
}
