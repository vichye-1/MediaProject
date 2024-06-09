//
//  BoxOfficeTableViewCell.swift
//  MediaProject
//
//  Created by 양승혜 on 6/9/24.
//

import UIKit
import SnapKit

class BoxOfficeTableViewCell: UITableViewCell {
    
    let rankingLabel = UILabel()
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
        contentView.addSubview(rankingLabel)
        contentView.addSubview(titleLabel)
        contentView.addSubview(dateLabel)
    }
    
    func configureTableViewCellLayout() {
        rankingLabel.snp.makeConstraints { make in
            make.leading.equalTo(contentView.safeAreaLayoutGuide).offset(16)
            make.verticalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(10)
            make.width.equalTo(40)
        }
        dateLabel.snp.makeConstraints { make in
            make.trailing.equalTo(contentView.safeAreaLayoutGuide).inset(16)
            make.verticalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(10)
            make.width.equalTo(70)
        }
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(rankingLabel.snp.trailing).offset(20)
            make.verticalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(10)
            make.trailing.equalTo(dateLabel.snp.leading).offset(-20)
        }
    }
    
    func configureTableViewCellUI() {
        rankingLabel.backgroundColor = .blue
        titleLabel.backgroundColor = .purple
        dateLabel.backgroundColor = .cyan
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
