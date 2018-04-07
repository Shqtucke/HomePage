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
    Home(image: "3ballys1.jpg", nameLabel: "Ballys"),
    Home(image: "3bellagio.jpg", nameLabel: "Bellagio"),
    Home(image: "3caesars.jpg", nameLabel: "Caesars"),
    Home(image: "3casinoR.jpg", nameLabel: "Casino Royale"),
    Home(image: "3circus.jpg", nameLabel: "Circus Circus"),
    Home(image: "3cosmo.jpg", nameLabel: "Cosmopolitian"),
    Home(image: "3cromwell.jpg", nameLabel: "Cromwell"),
    Home(image: "3Encore.jpg", nameLabel: "Encore"),
    Home(image: "3excalibur.jpg", nameLabel: "Excalibur"),
    Home(image: "3flamingo.jpg", nameLabel: "Flamingo"),
    Home(image: "3harrah.jpg", nameLabel: "Harrahs")
        
    ]
    
    func getHomes() -> [Home] {
        return home 
    }
}
