//
//  DetailCocktailVC.swift
//  Cocktail
//
//  Created by Jack Ily on 28/05/2019.
//  Copyright © 2019 Jack Ily. All rights reserved.
//

import UIKit

class DetailCocktailVC: UIViewController {
    
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var cocktailIMG: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    var cocktail: Cocktail!
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgImageView.image = image
        cocktailIMG.image = image
        
        cocktailIMG.isUserInteractionEnabled = true
        cocktailIMG.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageDidTap)))
        
        nameLbl.text = cocktail.name
        descriptionLbl.numberOfLines = 0
        descriptionLbl.text = cocktail.description
    }
    
    @objc func imageDidTap() {
        presentingViewController!.dismiss(animated: true, completion: nil)
    }
}
