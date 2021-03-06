//
//  ListViewController.swift
//  AnimationSample
//
//  Created by Shota Nakagami on 2018/06/30.
//  Copyright © 2018年 Shota Nakagami. All rights reserved.
//

import UIKit
import SwiftExtensions
import PureLayout
import Hero

final class ListViewController: UIViewController {

    private let cellMargin: CGFloat = 10.0
    private let numberOfColumns: Int = 3
    
    private lazy var cellSize: CGSize = {
        let screenWidth = UIScreen.main.bounds.size.width
        let cellWidth = (screenWidth - cellMargin * CGFloat(numberOfColumns + 1) ) / CGFloat(numberOfColumns)
        return CGSize(width: cellWidth, height: cellWidth)
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: collectionViewLayout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.allowsSelection = true
        collectionView.allowsMultipleSelection = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(ListCell.self, forCellWithReuseIdentifier: ListCell.className)
        collectionView.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        return collectionView
    }()
    
    private lazy var collectionViewLayout: UICollectionViewLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = cellMargin
        layout.minimumInteritemSpacing = cellMargin
        layout.itemSize = cellSize
        layout.sectionInset = UIEdgeInsets(margin: cellMargin)
        layout.scrollDirection = .vertical
        return layout
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        hero.isEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "List"
        view.addSubview(collectionView)
        collectionView.autoPinEdgesToSuperviewEdges()

        // hero.modalAnimationType = .push(direction: .right)
    }
}

extension ListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.hero.navigationAnimationType = .fade
        let detailViewController = DetailViewController(image: UIImage(named: "sample"),
                                                        index: indexPath.row)
        navigationController?.pushViewController(detailViewController, animated: true)
        // present(detailViewController, animated: true, completion: nil)
    }
}

extension ListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(with: ListCell.self, for: indexPath)
        cell.configure(image: UIImage(named: "sample"), index: indexPath.row)
        return cell
    }
}

