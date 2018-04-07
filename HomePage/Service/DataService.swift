//
//  DataService.swift
//  HomePage
//
//  Created by Shaun Tucker on 4/7/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let home = [
        
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria"),
    Home(image: "3aria2.jpg", nameLabel: "Aria")
        
    ]
    
    func getHomes() -> [Home] {
        return home 
    }
}
