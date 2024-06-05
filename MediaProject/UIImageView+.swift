//
//  UIImageView+.swift
//  MediaProject
//
//  Created by 양승혜 on 6/4/24.
//

import UIKit

extension UIImageView {
    func posterImageUI(imageName: String ,radius: CGFloat) {
        self.image = UIImage(named: imageName)
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
        self.contentMode = .scaleAspectFill
    }
}
