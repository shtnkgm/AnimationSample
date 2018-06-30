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
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = false
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
        return imageView
    }()
    
    init(image: UIImage?, heroId: String) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
        imageView.hero.id = heroId
        
        hero.isEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Detail"
        view.addSubview(imageView)
        imageView.autoPinEdgesToSuperviewEdges()
    }
}
