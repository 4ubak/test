//
//  ImageCollectionViewCell.swift
//  testTask
//
//  Created by Temirlan Ibraev on 9/15/19.
//  Copyright © 2019 Temirlan Ibraev. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView = {
        var imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setupViews() {
        self.contentView.addSubview(imageView)
        self.contentView.addConstraintsWithFormat("H:|[v0]|", views: imageView)
        self.contentView.addConstraintsWithFormat("V:|[v0]|", views: imageView)
    }
}
