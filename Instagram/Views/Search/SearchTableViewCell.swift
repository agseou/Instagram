//
//  SearchTableViewCell.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/12.
//

import UIKit
import SnapKit

class SearchTableViewCell: BaseTableViewCell {
    
    let search = UILabel()

    override func configureHierarchy() {
        contentView.addSubview(search)
    }
    
    override func configureView() {
        search.textAlignment = .left
    }
    
    override func configureLayout() {
        search.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(contentView).offset(10)
        }
    }

}
