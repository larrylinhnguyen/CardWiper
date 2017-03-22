//
//  ViewController.swift
//  CardWiper
//
//  Created by Larry on 3/22/17.
//  Copyright © 2017 Larry Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let cards = ["C1.jpg","C2.jpg","C3.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController: UICollectionViewDelegate{
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell
        
        cell.imageView.image = UIImage(named: cards[indexPath.row])
        
        return cell
    }
}

