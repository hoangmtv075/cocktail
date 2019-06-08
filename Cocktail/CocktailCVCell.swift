//
//  CocktailCVCell.swift
//  Cocktail
//
//  Created by Jack Ily on 28/05/2019.
//  Copyright © 2019 Jack Ily. All rights reserved.
//

import UIKit

class CocktailCVCell: UICollectionViewCell {
    
    @IBOutlet weak var cocktailIMG: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clipsToBounds = true
        layer.cornerRadius = 20.0
        backgroundColor = .clear
    }
}
