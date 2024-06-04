//
//  UIImageView+.swift
//  MediaProject
//
//  Created by 양승혜 on 6/4/24.
//

import UIKit

extension UIImageView {
    func mainPosterUI() {
        self.image = .어벤져스엔드게임
        self.clipsToBounds = true
        self.layer.cornerRadius = 15
        self.contentMode = .scaleAspectFill
    }
    
    func hotMoviesUI() {
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
        self.layer.cornerRadius = 7
    }
}
