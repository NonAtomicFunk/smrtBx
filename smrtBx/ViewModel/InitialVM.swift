//
//  InitialVM.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

final class InitialVM {
    
    let bag = DisposeBag()
    
    let dataModel = Variable<[DataModel]>([])
    
    func getAll() {
        Rest.singleTon.getAll { (array) in
            let storableArray = array
            self.dataModel.value = storableArray
        }
    }
    
    func goToDetils(_ modelAtIndx: Int) {
        
        let modelToPass = self.dataModel.value[modelAtIndx]
        VCRouter.singletone.pushDetails(modelToPass)
    }
}
