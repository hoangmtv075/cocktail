//
//  ScrollFlowLayout.swift
//  Cocktail
//
//  Created by Jack Ily on 04/06/2019.
//  Copyright © 2019 Jack Ily. All rights reserved.
//

import UIKit

//MARK: - UICollectionViewFlowLayout

class ScrollFlowLayout: UICollectionViewFlowLayout {
    
    private var previousOffset: CGFloat = 0.0
    var currentPage = 0
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        guard let collectionView = collectionView,
            let itemsCount = collectionView.dataSource?.collectionView(collectionView, numberOfItemsInSection: 0) else {
                return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
        }
        
        if previousOffset < collectionView.contentOffset.x && velocity.x > 0 {
            currentPage = min(currentPage + 1, itemsCount - 1)
            
        } else if previousOffset > collectionView.contentOffset.x && velocity.x < 0 {
            currentPage = max(currentPage - 1, 0)
        }
        
        let itemEdgeOffset = (collectionView.frame.size.width - itemSize.width - minimumLineSpacing*2.0) / 2.0
        let updateOffset = (itemSize.width + minimumLineSpacing) * CGFloat(currentPage) - (itemEdgeOffset + minimumLineSpacing)
        previousOffset = updateOffset
        return CGPoint(x: updateOffset, y: proposedContentOffset.y)
    }
}
