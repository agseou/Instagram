//
//  ProfileEditTableViewCell.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/10.
//

import UIKit
import SnapKit

class ProfileEditTableViewCell: BaseTableViewCell {
    
    let editLabel = UILabel()
    let subLabel = UILabel()

    override func configureHierarchy() {
        contentView.addSubview(editLabel)
        contentView.addSubview(subLabel)
    }
    
    override func configureView() {
        editLabel.textColor = .label
        subLabel.textColor = .label
    }
    
    override func configureLayout() {
        editLabel.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(contentView).offset(20)
        }
        subLabel.snp.makeConstraints {
            $0.leading.equalTo(contentView).offset(130)
            $0.centerY.equalTo(contentView)
        }
    }

    

}
