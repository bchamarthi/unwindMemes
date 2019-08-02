//
//  ViewController.swift
//  memes
//
//  Created by KC on 8/1/19.
//  Copyright © 2019 KC. All rights reserved.
//



import UIKit


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    var imageArray = [UIImage(named: "images-1"), UIImage(named: "images-2"), UIImage(named: "images"), UIImage(named: "Unknown-1"), UIImage(named: "Unknown-2"), UIImage(named: "Unknown-3")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.imgImage.image = imageArray[indexPath.row]
        
        return cell
    }



}

