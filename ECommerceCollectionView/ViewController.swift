//
//  ViewController.swift
//  ECommerceCollectionView
//
//  Created by Shaikat on 14/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var item : [Item] = [
    Item(image: #imageLiteral(resourceName: "bag.png") , name: "Bag"),
    Item(image: #imageLiteral(resourceName: "coat") , name: "Coat"),
    Item(image: #imageLiteral(resourceName: "shirt") , name: "Shirt"),
    Item(image: #imageLiteral(resourceName: "watch") , name: "Watch"),
    Item(image: #imageLiteral(resourceName: "glasses") , name: "Glasses"),
    Item(image: #imageLiteral(resourceName: "shoe") , name: "Shoes"),
    Item(image: #imageLiteral(resourceName: "wallet") , name: "Wallet"),
    Item(image: #imageLiteral(resourceName: "smartphone") , name: "MobilePhone"),
    Item(image: #imageLiteral(resourceName: "megaphone") , name: "MegaPhone"),
    Item(image: #imageLiteral(resourceName: "perfume") , name: "SmartPhone"),
    Item(image: #imageLiteral(resourceName: "laptop") , name: "Laptop")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "CustomCollectionViewCell")
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        let width = (UIScreen.main.bounds.width / 2.05) - ((2-1)*layout.minimumInteritemSpacing)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.itemSize = CGSize(width: width, height: 150)
        collectionView.collectionViewLayout = layout
    }
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell{
            cell.imageOutlet.image = item[indexPath.row].image
            cell.lblOutlet.text = item[indexPath.row].name
            return cell
        }else{
            return UICollectionViewCell()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(item[indexPath.row].name ?? "")
    }
    
}

