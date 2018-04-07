//
//  ViewController.swift
//  HomePage
//
//  Created by Shaun Tucker on 4/7/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var collectionView: UICollectionView!
    //var gridLayout: GridLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "practice", withExtension: "json")
        
        if let url = url {
            let data = NSData(contentsOf: url)
            
            if let data = data{
                //print(data)
                
                do {
                    
                    let jsonObject = try JSONSerialization.jsonObject(with: data as Data, options: .allowFragments)
                    
                    //print(jsonObject)
                    if let object = jsonObject as? [String: AnyObject] {
                        if let allCasinos = object["casinos"] as? [[String: AnyObject]] {
                            print(allCasinos)
                        }
                    }
                    
                } catch {
                    
                    print("error occurred")
                }
            }
        }
        
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 150)
    }
    



}

