//
//  UITextField+.swift
//  MediaProject
//
//  Created by 양승혜 on 6/5/24.
//

import UIKit

extension UITextField {
    func signUpTextField(_ placeholder: String) {
        self.backgroundColor = .darkGray
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.textAlignment = .center
        self.layer.cornerRadius = 5
        self.font = .systemFont(ofSize: 15)
    }
}
