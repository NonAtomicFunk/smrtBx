//
//  VCRouter.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit

final class VCRouter: NSObject {
    
    static let singletone = VCRouter()
    
    var storyBoard: UIStoryboard!
    var navigationSontroller: UINavigationController!
    var window: UIWindow!
    
    override init() {
        super.init()
        
        self.storyBoard = UIStoryboard(name: "Main", bundle: nil)
        self.navigationSontroller = storyBoard.instantiateInitialViewController() as? UINavigationController
        self.navigationSontroller.navigationBar.tintColor = .black
        let uiWindow: UIWindow = UIApplication.shared.delegate!.window!!
        uiWindow.rootViewController = navigationSontroller
    }
    
    func popBack() {
        self.navigationSontroller.popViewController(animated: true)
    }
    
    func goto(_ vc: VCType, model: DataModel) {
        
        let tempModel = model
        
        var vcToGo: BaseVC!
        var vm: BaseVM!
        
        switch vc {
        case .details:
            vcToGo = storyBoard.instantiateViewController(withIdentifier: vc.rawValue) as! DetailsVC
            vm = DetailsVM(tempModel)
        case .map:
            vcToGo = storyBoard.instantiateViewController(withIdentifier: vc.rawValue) as! MapVC
            vm = MapVM(tempModel)
        }
        
        vcToGo.viewModel = vm
        vcToGo.navigationItem.hidesBackButton = true
        self.navigationSontroller.pushViewController(vcToGo, animated: true)
    }
}
