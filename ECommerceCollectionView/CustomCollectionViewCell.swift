//
//  CustomCollectionViewCell.swift
//  ECommerceCollectionView
//
//  Created by Shaikat on 14/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var viewOutlet: UIView!
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var lblOutlet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewOutlet.layer.cornerRadius = 20.0
    }

}
