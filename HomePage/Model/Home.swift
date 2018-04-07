//
//  Home.swift
//  HomePage
//
//  Created by Shaun Tucker on 4/7/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import Foundation

struct Home {
    
    private(set) public var image: String
    private(set) public var nameLabel: String
    
    init(image: String, nameLabel: String) {
        self.image = image
        self.nameLabel = nameLabel
        
    }
}
