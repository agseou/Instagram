//
//  SearchCollectionViewCell.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/12.
//

import UIKit
import SnapKit

class SearchCollectionViewCell: BaseCollectionViewCell {
    
    let imageView = UIImageView(frame: .zero)
    
    override func configureHierarchy() {
        contentView.addSubview(imageView)
    }
    
    override func configureView() {
        
    }
    
    override func configureLayout() {
        imageView.snp.makeConstraints {
            $0.edges.equalTo(contentView)
        }
    }
    
}
