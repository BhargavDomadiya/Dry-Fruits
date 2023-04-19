//
//  DryFruitsCollectionViewCell.swift
//  Dry Fruits
//
//  Created by R93 on 18/01/23.
//

import UIKit

class DryFruitsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var FoodImage: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var QuentityLable: UILabel!
    @IBOutlet weak var PriceLable: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }


}
