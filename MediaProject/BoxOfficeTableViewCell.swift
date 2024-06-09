//
//  BoxOfficeTableViewCell.swift
//  MediaProject
//
//  Created by 양승혜 on 6/9/24.
//

import UIKit
import SnapKit

class BoxOfficeTableViewCell: UITableViewCell {
    
    let lankingLabel = UILabel()
    let titleLabel = UILabel()
    let dateLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureTableViewCellHierarchy()
        configureTableViewCellLayout()
        configureTableViewCellUI()
    }
    
    func configureTableViewCellHierarchy() {
        contentView.addSubview(lankingLabel)
    }
    
    func configureTableViewCellLayout() {
        lankingLabel.snp.makeConstraints { make in
            make.leading.equalTo(contentView.safeAreaLayoutGuide).offset(16)
            make.verticalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(10)
            make.width.equalTo(40)
        }
    }
    
    func configureTableViewCellUI() {
        lankingLabel.backgroundColor = .blue
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
