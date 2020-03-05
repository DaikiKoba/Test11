//
//  ExtensionUIView.swift
//  Test11
//
//  Created by 小林大希 on 2020/03/05.
//  Copyright © 2020 小林大希. All rights reserved.
//

import UIKit

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
