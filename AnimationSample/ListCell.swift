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
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = false
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .white
        return label
    }()
    
    func configure(image: UIImage?, index: Int) {
        addSubview(stackView)
        stackView.autoPinEdgesToSuperviewEdges()
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(titleLabel)
        
        titleLabel.autoSetDimension(.height, toSize: 20)
        
        titleLabel.text = "item\(index)"
        titleLabel.hero.id = HeroId.title(at: index)
        imageView.image = image
        imageView.hero.id = HeroId.image(at: index)
    }
}
