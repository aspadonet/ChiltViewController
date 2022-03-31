//
//  FirstChildViewController.swift
//  ChildController
//
//  Created by Alexander Avdacev on 31.03.22.
//

import UIKit

class FirstChildViewController: UIViewController {

    private var collectionView: UICollectionView?
           
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout                  = UICollectionViewFlowLayout()
        layout.scrollDirection      = .horizontal
        layout.itemSize             = CGSize(width: 150, height: 150)
        collectionView              = UICollectionView(frame: .zero,
                                                       collectionViewLayout: layout)
        collectionView?.delegate    = self
        collectionView?.dataSource  = self
        
        collectionView?.register(UICollectionViewCell.self,
                                 forCellWithReuseIdentifier: "cellId")
        
        view.addSubview(collectionView!)
        view.backgroundColor = .red
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView?.frame = view.bounds
    }
}


extension FirstChildViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return cell
    }
    
    
}
