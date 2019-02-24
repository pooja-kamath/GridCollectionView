//
//  ViewController.swift
//  GridCollectionView
//
//  Created by Audiology 5 on 24/02/19.
//  Copyright © 2019 Edureka. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5;
    }
    
    //2
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    //3
    override func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
        ) -> UICollectionViewCell {
        
        var reuseIdentifier :String = "leftCell"
        
        var  itemsPerRow = 2;
        var row = indexPath.item / itemsPerRow;
        var column = indexPath.item % itemsPerRow;
        
        if(column == 1)
        {
            reuseIdentifier = "rightCell"
        }
        let cell = collectionView
            .dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        // Configure the cell
        return cell
    }
   
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/3);
    }
    
    
   
}

    
   

