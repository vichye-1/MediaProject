//
//  UIButton+.swift
//  MediaProject
//
//  Created by 양승혜 on 6/4/24.
//

import UIKit

extension UIButton {
    func playButtonUI() {
        self.backgroundColor = .white
        self.setImage(UIImage(systemName: "play.fill"), for: .normal)
        self.setTitle("재생", for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.tintColor = .black
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 5
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
    }
    
    func nextPageButtonUI() {
        self.backgroundColor = .darkGray
        self.setImage(UIImage(systemName: "plus"), for: .normal)
        self.setTitle("다음 페이지로 이동", for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.tintColor = .white
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 5
    }
    
    func signUpButtonUI() {
        self.setTitle("회원가입", for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.backgroundColor = .white
        self.layer.cornerRadius = 5
    }
    
    func goBackButton() {
        self.setTitle("뒤로 돌아가기", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.backgroundColor = .red
        self.layer.cornerRadius = 5
    }
}
