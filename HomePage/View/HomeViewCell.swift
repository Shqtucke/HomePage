//
//  HomeViewCell.swift
//  HomePage
//
//  Created by Shaun Tucker on 4/7/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class HomeViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    func updateViews(home: Home) {
        imageView.image = UIImage(named: home.image)
        nameLabel.text = home.nameLabel
    }
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 16

    }
    
    override func awakeFromNib() {
        imageView.layer.cornerRadius = 16
        
    }
}
