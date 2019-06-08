//
//  CocktailVC.swift
//  Cocktail
//
//  Created by Jack Ily on 28/05/2019.
//  Copyright © 2019 Jack Ily. All rights reserved.
//

import UIKit

class CocktailVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var bgImageView: UIImageView!
    
    var cocktails = Cocktail.sharedInstance()
    var scrollFlowLayout = ScrollFlowLayout()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .clear
        
        collectionView.collectionViewLayout = scrollFlowLayout
        scrollFlowLayout.scrollDirection = .horizontal
        scrollFlowLayout.minimumLineSpacing = 10
        scrollFlowLayout.itemSize = CGSize(width: 200.0, height: 200.0)
    }


}

//MARK: - UICollectionViewDataSource
/********************************************************************************************/

extension CocktailVC: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cocktails.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CocktailCVCell", for: indexPath) as! CocktailCVCell
        cell.cocktailIMG.image = UIImage(named: "cocktail")
        cell.nameLbl.text = cocktails[indexPath.item].name
        return cell
    }
}

//MARK: - UICollectionViewDelegate
/********************************************************************************************/

extension CocktailVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CocktailCVCell
        let detailVC = storyboard!.instantiateViewController(withIdentifier: "DetailCocktailVC") as! DetailCocktailVC
        detailVC.image = cell.cocktailIMG.image
        detailVC.cocktail = cocktails[indexPath.item]
        present(detailVC, animated: true, completion: nil)
    }
}

//MARK: - UIViewControllerTransitioningDelegate
/********************************************************************************************/

//MARK: - Functions
/********************************************************************************************/
