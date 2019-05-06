//
//  collectionViewCell.swift
//  CW-ImageSwiper
//
//  Created by Yusuf DEMİRKOPARAN on 6.05.2019.
//  Copyright © 2019 Yusuf DEMİRKOPARAN. All rights reserved.
//

import UIKit
import TinyConstraints
class collectionViewCell : UICollectionViewCell {
    
    var img : UIImageView = {
        var img = UIImageView()
        img.contentMode = UIView.ContentMode.scaleAspectFit
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(img)        
        img.edgesToSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
