//
//  ImageShower.swift
//  CW-ImageSwiper
//
//  Created by Yusuf DEMİRKOPARAN on 6.05.2019.
//  Copyright © 2019 Yusuf DEMİRKOPARAN. All rights reserved.
//

import UIKit
import TinyConstraints
class collectionViewController : UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    
    
    let cellID = "cell"
    let ImageArray = ["r1" , "r2", "r3", "r4", "r5", "r6" , "p2", "p3", "p4", "p5", "p6" , "p7" , "p8", "p9", "p10" ]
    let backgroundImage = UIImageView()
    let BGview = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        self.view.addSubview(BGview)
        BGview.edgesToSuperview()
        
        
        backgroundImage.image = UIImage(named: ImageArray[0])
        backgroundImage.frame = view.bounds
        backgroundImage.contentMode = .scaleToFill
        BGview.addSubview(backgroundImage)
        
        
        let blur = UIBlurEffect(style: .regular)
        let effect = UIVisualEffectView(effect: blur)
        effect.frame = backgroundImage.bounds
        BGview.addSubview(effect)

        
        collectionView.register(collectionViewCell.self, forCellWithReuseIdentifier: cellID)
        collectionView.size(CGSize(width: UIScreen.main.bounds.width, height: view.frame.height*0.4))
        collectionView.centerY(to: view)
        collectionView.backgroundColor = .clear
        BGview.addSubview(collectionView)
        collectionView.center(in: BGview)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! collectionViewCell
        cell.img.image = UIImage(named: ImageArray[indexPath.row])
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImageArray.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: view.frame.height*0.3)
    }
    
    
}
