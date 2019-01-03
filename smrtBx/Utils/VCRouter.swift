//
//  VCRouter.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit

final class VCRouter: NSObject {
    
    let singletone = VCRouter()
    
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
    
    func pushDetails() {
        let detailsVC = storyBoard.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        detailsVC.viewModel = DetailsVM()
    
        self.navigationSontroller.pushViewController(detailsVC, animated: true)
    }
}
