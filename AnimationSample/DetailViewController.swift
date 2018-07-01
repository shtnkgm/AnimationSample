//
//  DetailViewController.swift
//  AnimationSample
//
//  Created by Shota Nakagami on 2018/06/30.
//  Copyright © 2018年 Shota Nakagami. All rights reserved.
//

import UIKit
import PureLayout
import Hero

final class DetailViewController: UIViewController {
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
        imageView.contentMode = .scaleAspectFit
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
    
    init(image: UIImage?, index: Int) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
        imageView.hero.id = HeroId.image(at: index)
        titleLabel.text = "item\(index)"
        titleLabel.hero.id = HeroId.title(at: index)
        hero.isEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Detail"
        view.addSubview(stackView)
        stackView.autoPinEdgesToSuperviewEdges()
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(titleLabel)
        
        titleLabel.autoSetDimension(.height, toSize: 20)
    }
}
