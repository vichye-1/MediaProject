//
//  UITableViewCell+.swift
//  MediaProject
//
//  Created by 양승혜 on 6/9/24.
//

import UIKit

extension UITableViewCell: ReuseIdentifierProtocol {
    static var identifier: String {
        return String(describing: self)
    }
}
