//
//  ExtensionCGRect.swift
//  Test11
//
//  Created by 小林大希 on 2020/03/05.
//  Copyright © 2020 小林大希. All rights reserved.
//

import UIKit

extension CGRect {
    init(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) {
        self.init(x: x, y: y, width: width, height: height)
    }
    init(_ point: CGPoint, _ width: CGFloat, _ height: CGFloat) {
        self.init(x: point.x, y: point.y, width: width, height: height)
    }
    init(_ x: CGFloat, _ y: CGFloat, _ size: CGSize) {
        self.init(x: x, y: y, width: size.width, height: size.height)
    }
    init(_ point: CGPoint, _ size: CGSize) {
        self.init(x: point.x, y: point.y, width: size.width, height: size.height)
    }
}

extension CGPoint {
    init(_ x: CGFloat, _ y: CGFloat) {
        self.init(x: x, y: y)
    }
    init(_ point: CGPoint) {
        self.init(x: point.x, y: point.y)
    }
}

extension CGSize {
    init(_ width: CGFloat, _ height: CGFloat) {
        self.init(width: width, height: height)
    }
    init(_ size: CGSize) {
        self.init(width: size.width, height: size.height)
    }
}
