//
//  ListCell.swift
//  AnimationSample
//
//  Created by Shota Nakagami on 2018/06/30.
//  Copyright © 2018年 Shota Nakagami. All rights reserved.
//

import UIKit

final class ListCell: UICollectionViewCell {
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = false
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
        return imageView
    }()
    
    public func configure(image: UIImage?) {
        imageView.image = image
        setup()
    }
    
    private func setup() {
        backgroundView = imageView
        backgroundColor = .clear
    }
}
