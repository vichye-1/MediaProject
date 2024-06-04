//
//  UILabel+.swift
//  MediaProject
//
//  Created by 양승혜 on 6/4/24.
//

import UIKit

extension UILabel {
    func userNameUI() {
        self.text = "승혜님"
        self.textColor = .white
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
    }
    
    func hotMovieLabelUI() {
        self.text = "지금 뜨는 콘텐츠"
        self.textColor = .white
        self.textAlignment = .left
        self.font = .systemFont(ofSize: 20)
    }
}
