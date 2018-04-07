//
//  GridLayout.swift
//  HomePage
//
//  Created by Shaun Tucker on 4/7/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class GridLayout: UICollectionViewFlowLayout {
    
    var numberOfColumns: Int = 3
    
    init(numberOfColumns: Int) {
        super.init()
        self.numberOfColumns = numberOfColumns
        self.minimumInteritemSpacing = 1
        self.minimumLineSpacing = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var itemSize: CGSize {
        get {
            if let collectionView = collectionView {
                let collectionViewWidth = collectionView.frame.width
                let itemWidth = (collectionViewWidth/CGFloat(self.numberOfColumns)) - self.minimumInteritemSpacing
                let itemHeight: CGFloat = 100
                
                return CGSize(width: itemWidth, height: itemHeight)
            }
            
            return CGSize(width: 100, height: 100)
        }
        set {
            super.itemSize = newValue
        }
    }

}
