//
//  ViewController.swift
//  HomePage
//
//  Created by Shaun Tucker on 4/7/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    //var gridLayout: GridLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        gridLayout = GridLayout(numberOfColumns: 3)
//        collectionView.collectionViewLayout = gridLayout
//        collectionView.reloadData()
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getHomes().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as? HomeViewCell {
            
            let casino = DataService.instance.getHomes()[indexPath.row]
            cell.updateViews(home: casino)
            return cell
        }
        return HomeViewCell() 
    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewWillTransition(to: size, with: coordinator)
//
//        gridLayout.invalidateLayout()
//
//    }


}

