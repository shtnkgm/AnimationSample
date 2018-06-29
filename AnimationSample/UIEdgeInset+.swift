//
//  UIEdgeInset+.swift
//  AnimationSample
//
//  Created by Shota Nakagami on 2018/06/30.
//  Copyright © 2018年 Shota Nakagami. All rights reserved.
//

import UIKit

extension UIEdgeInsets {
    init(margin: CGFloat) {
        self.init()
        top = margin
        left = margin
        right = margin
        bottom = margin
    }

    init(vertical: CGFloat, horizontal: CGFloat) {
        self.init()
        top = vertical
        left = horizontal
        right = horizontal
        bottom = vertical
    }
}
