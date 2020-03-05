//
//  ExtensionUIView.swift
//  Test11
//
//  Created by 小林大希 on 2020/03/05.
//  Copyright © 2020 小林大希. All rights reserved.
//

import UIKit

// サイズ・位置所得
extension UIView {
    func getTop() -> CGFloat {
        return self.frame.origin.y
    }
    func getBottom() -> CGFloat {
        return self.frame.origin.y + self.frame.size.height
    }
    func getLeft() -> CGFloat {
        return self.frame.origin.x
    }
    func getRight() -> CGFloat {
        return self.frame.origin.x + self.frame.size.width
    }
    func getWidth() -> CGFloat {
        return self.frame.size.width
    }
    func getHeight() -> CGFloat {
        return self.frame.size.height
    }
}

// ボーダー
extension UIView {
    enum PartLayer {
        case top
        case bottom
        case left
        case right
    }
    
    func addPartLayer(partType: PartLayer, weight: CGFloat, color: UIColor) {
        let layer: CALayer = CALayer()
        layer.backgroundColor = color.cgColor
        
        switch partType {
        case .top:
            layer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: weight)
        case .bottom:
            layer.frame = CGRect(x: 0, y: self.frame.size.height-weight, width: self.frame.size.width, height: weight)
        case .left:
            layer.frame = CGRect(x: 0, y: 0, width: weight, height: self.frame.size.height)
        case .right:
            layer.frame = CGRect(x: self.frame.size.width-weight, y: 0, width: weight, height: self.frame.size.height)
        }
        self.layer.addSublayer(layer)
    }
}

// グラデーション
extension UIView {
    func addGradient(_ colors: [CGColor] = [UIColor.blue.cgColor, UIColor.white.cgColor, UIColor.cyan.cgColor]) {
        let gradient = CAGradientLayer()
        gradient.colors = colors
        gradient.frame = self.bounds
        self.layer.insertSublayer(gradient, at: 0)
    }
}
