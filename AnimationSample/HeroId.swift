//
//  HeroId.swift
//  AnimationSample
//
//  Created by Shota Nakagami on 2018/06/30.
//  Copyright © 2018年 Shota Nakagami. All rights reserved.
//

import Foundation

struct HeroId {
    static func title(at index: Int) -> String {
        return "title_\(index)"
    }
    
    static func image(at index: Int) -> String {
        return "image_\(index)"
    }
}
