//
//  ViewController.swift
//  ChildController
//
//  Created by Alexander Avdacev on 31.03.22.
//

import UIKit

class ViewController: UIViewController {

    private lazy var firstChildVC   = FirstChildViewController()
    private lazy var SecondVC       = SecondChildViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVCs()
    }

    private func addChildVCs() {
        addChild(firstChildVC)
        addChild(SecondVC)
        
        view.addSubview(firstChildVC.view)
        view.addSubview(SecondVC.view)
        
        firstChildVC.view.frame =   CGRect(x: 0,
                                         y: 0,
                                         width: view.bounds.size.width,
                                         height: view.bounds.size.height/3)
        SecondVC.view.frame     =   CGRect(x: 0,
                                         y: view.bounds.size.height/3,
                                         width: view.bounds.size.width,
                                         height: (view.bounds.size.height/3)*2)
        
        firstChildVC.didMove(toParent: self)
        SecondVC.didMove(toParent: self)
    }

}

