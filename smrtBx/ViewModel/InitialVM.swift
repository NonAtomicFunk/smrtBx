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
    
    let allData = Variable<[DataModel]>([])
    let dataModel = Variable<[DataModel]>([])
    
    func getAll() {
        Rest.singleTon.getAll { [weak self] (array) in
            let storableArray = array
            
            self!.allData.value = storableArray
            self!.sortBy(.events)
        }
    }
    
    func sortBy(_ typeChosen: SmrtBxTypes) {
        
        self.dataModel.value = self.allData.value.filter({ [weak self] item -> Bool in
            return item.type == typeChosen.rawValue
        })
    }
    
    func goToDetils(_ modelAtIndx: Int) {
        let modelToPass = self.dataModel.value[modelAtIndx]
        
        VCRouter.singletone.goto(.details, model: modelToPass)
    }
}
