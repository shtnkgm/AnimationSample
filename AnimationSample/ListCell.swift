//
//  ListCell.swift
//  AnimationSample
//
//  Created by Shota Nakagami on 2018/06/30.
//  Copyright © 2018年 Shota Nakagami. All rights reserved.
//

import UIKit
import Hero

final class ListCell: UICollectionViewCell {
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = false
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
        imageView.hero.id = HeroId.image.rawValue
        imageView.hero.modifiers = [.useNoSnapshot, .spring(stiffness: 250, damping: 25)]
        return imageView
    }()
    
    func configure(image: UIImage?) {
        imageView.image = image
        setup()
    }
    
    private func setup() {
        backgroundView = imageView
        backgroundColor = .clear
    }
}
